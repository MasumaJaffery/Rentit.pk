<?php $rent_payment = $this->db->get_where('payments', array('paymentid' => $param2)); ?>
<div align="center">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <table class="table table-bordered" style="margin: 20px 0">
                <tbody>
                    <tr><td><h4>Payment Information</h4></td></tr>
                    <tr>
                        <td><b>Reference Number:</b></td>
                        <td>#<?php echo $rent_payment->row()->paymentid; ?></td>
                    </tr>
                    <tr>
                        <td><b>Transaction ID:</b> </td>
                        <td><?php echo $rent_payment->row()->txn_id; ?></td>
                    </tr>
                    <tr>
                        <td><b>Paid Amount:</b> </td>
                        <td><?php echo $rent_payment->row()->payment_gross.' '.$rent_payment->row()->currency_code; ?></td>
                    </tr>
                    <tr>
                        <td><b>Payment Status:</b></td>
                        <td><?php echo $rent_payment->row()->status; ?></td>
                    </tr>
                    <tr><td><h4>Payer Information</h4></td></tr>
                    <tr>
                        <td><b>Name:</b></td>
                        <td><?php echo $rent_payment->row()->payer_name; ?></td>
                    </tr>
                    <tr>
                        <td><b>Email:</b></td>
                        <td><?php echo $rent_payment->row()->payer_email; ?></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>