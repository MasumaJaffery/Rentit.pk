<!-- begin #content -->
<div id="content" class="content">
    <!-- begin breadcrumb -->
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="<?php echo base_url(); ?>"><?php echo $this->lang->line('dashboard'); ?></a></li>
        <li class="breadcrumb-item active"><?php echo $this->lang->line('successful_payment'); ?></li>
    </ol>
    <!-- end breadcrumb -->
    <!-- begin page-header -->
    <h1 class="page-header">
    <?php echo $this->lang->line('successful_payment'); ?>
    </h1>
    <!-- end page-header -->

    <!-- begin row -->
    <div class="row">
        <!-- begin col-12 -->
        <div class="col-lg-6 offset-lg-3">
            <!-- begin panel -->
            <div class="panel panel-inverse">
                <!-- begin panel-body -->
                <div class="panel-body">
                    <?php if(!empty($payment)){ ?>
                    <div align="center">
                        <h1>200 OK</h1>
                        <h3>Your payment has been Successful!</h3>
                        <!-- <hr> -->
                        <table class="table table-bordered" style="margin: 20px 0">
                            <tbody>
                                <tr><td><h4>Payment Information</h4></td></tr>
                                <tr>
                                    <td><b>Reference Number:</b></td>
                                    <td>#<?php echo $payment['paymentid']; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Transaction ID:</b> </td>
                                    <td><?php echo $payment['txn_id']; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Paid Amount:</b> </td>
                                    <td><?php echo $payment['payment_gross'].' '.$payment['currency_code']; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Payment Status:</b></td>
                                    <td><?php echo $payment['status']; ?></td>
                                </tr>
                                <tr><td><h4>Your Information</h4></td></tr>
                                <tr>
                                    <td><b>Name:</b></td>
                                    <td><?php echo $payment['payer_name']; ?></td>
                                </tr>
                                <tr>
                                    <td><b>Email:</b></td>
                                    <td><?php echo $payment['payer_email']; ?></td>
                                </tr>
                                <tr><td><h4>Payment Cause</h4></td></tr>
                                <tr>
                                    <td><b>Invoice:</b></td>
                                    <td><?php echo $product['invoice_number']; ?></td>
                                </tr>
                            </tbody>
                        </table>
                        <div style="margin: 40px 0">
                            <a type="button" href="<?php echo base_url('invoices'); ?>" class="btn"><?php echo $this->lang->line('invoices'); ?></a>
                        </div>
                    </div>
                    <?php } else { ?>
                    <div align="center">
                        <h1>400 Bad Request</h1>
                        <h3>Payment has failed!</h3>
                    </div>
                    <?php } ?>
                </div>
                <!-- end panel-body -->
            </div>
            <!-- end panel -->
        </div>
        <!-- end col-12 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->