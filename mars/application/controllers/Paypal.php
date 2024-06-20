<?php defined('BASEPATH') OR exit('No direct script access allowed'); 
 
class Paypal extends CI_Controller{ 
     
    function  __construct(){
        parent::__construct();
        
        $this->lang->load('vasha', $this->db->get_where('setting', array('name' => 'language'))->row()->content);
    }
     
    function success(){
        // Get the transaction data 
        $paypalInfo = $this->input->get();
         
        $productData = $paymentData = array();
        if(!empty($paypalInfo['item_number']) && !empty($paypalInfo['tx']) && !empty($paypalInfo['amt']) && !empty($paypalInfo['cc']) && !empty($paypalInfo['st'])){
            $item_name      =   $paypalInfo['item_name'];
            $item_number    =   $paypalInfo['item_number'];
            $txn_id         =   $paypalInfo["tx"];
            $payment_amt    =   $paypalInfo["amt"];
            $currency_code  =   $paypalInfo["cc"];
            $status         =   $paypalInfo["st"];
             
            // Get product info from the database 
            $productData = $this->db->get_where('invoice', array('invoice_id' => $item_number))->result_array()[0]; 
             
            // Check if transaction data exists with the same TXN ID 
            $paymentData = $this->payment->getPayment(array('txn_id' => $txn_id)); 
        }

        $tenant_paid['amount']          =   (!empty($paypalInfo['amt'])) ? $paypalInfo['amt'] : 0;
        $tenant_paid['invoice_id']      =   (!empty($paypalInfo['item_number'])) ? $paypalInfo['item_number'] : 0;
        $tenant_paid['tenant_id']       =   $this->db->get_where('invoice', array('invoice_id' => $tenant_paid['invoice_id']))->row()->tenant_id;
        $tenant_paid['payment_method']  =   'PayPal';
        $tenant_paid['paid_on']         =   time();
        $tenant_paid['notes']           =   'Paid with PayPal';
        $tenant_paid['created_on']      =   time();
        $tenant_paid['created_by']      =   $this->session->userdata('user_id');
        $tenant_paid['timestamp']       =   time();
        $tenant_paid['updated_by']      =   $this->session->userdata('user_id');
        $tenant_paid['month']           =   date('F', time());
        $tenant_paid['year']            =   date('Y', time());
        $tenant_paid['paymentid']       =   (!empty($paymentData)) ? $paymentData['paymentid'] : 0;

        $this->db->insert('tenant_paid', $tenant_paid);

        $payment_log['url']         =   'success';
        $payment_log['data']        =   json_encode($paypalInfo);
        $payment_log['timestamp']   =   time();

        $this->db->insert('payment_log', $payment_log);

        $page_data['product']       =   $productData;
        $page_data['payment']       =   $paymentData;
        $page_data['page_name']     =   'success';
        $page_data['body_class']    =   'page-sub-page';

        $this->load->view('index', $page_data);
    } 
      
    function cancel(){ 
        // Load payment failed view 
        $page_data['page_name']     =   'cancel';
        $page_data['body_class']    =   'page-sub-page';

        $this->load->view('index', $page_data);
    } 
      
    function ipn(){ 
        // Retrieve transaction data from PayPal IPN POST 
        $paypalInfo = $this->input->post(); 
         
        if(!empty($paypalInfo)){ 
            // Validate and get the ipn response 
            $ipnCheck = $this->paypal_lib->validate_ipn($paypalInfo); 
 
            // Check whether the transaction is valid 
            if($ipnCheck){ 
                // Check whether the transaction data is exists 
                $prevPayment = $this->payment->getPayment(array('txn_id' => $paypalInfo["txn_id"])); 
                if(!$prevPayment){ 
                    // Insert the transaction data in the database 
                    $data['invoice_id']     =   $paypalInfo["item_number"];
                    $data['user_id']        =   $paypalInfo["custom"];
                    $data['txn_id']         =   $paypalInfo["txn_id"];
                    $data['payment_gross']  =   $paypalInfo["mc_gross"];
                    $data['currency_code']  =   $paypalInfo["mc_currency"];
                    $data['payer_name']     =   trim($paypalInfo["first_name"].' '.$paypalInfo["last_name"], ' ');
                    $data['payer_email']    =   $paypalInfo["payer_email"];
                    $data['status']         =   $paypalInfo["payment_status"];
                    $data['timestamp']      =   time();
     
                    $this->payment->insertTransaction($data);
                } 
            } 
        }

        $payment_log['url']         =   'ipn';
        $payment_log['data']        =   json_encode($paypalInfo);
        $payment_log['timestamp']   =   time();

        $this->db->insert('payment_log', $payment_log);
    } 
}