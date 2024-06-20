<!-- begin #content -->
<div id="content" class="content">
	<div class="row">
		<div class="col-md-12">
			<h1 class="page-header"><?php echo $this->lang->line('payment_methods'); ?> <small><?php echo $this->lang->line('payment_method_page'); ?></small></h1>
		</div>
	</div>

	<!-- begin row -->
	<div class="row">
	    <!-- begin col-12 -->
	    <div class="col-md-12">
	        <!-- begin panel -->
            <div class="panel panel-inverse">
                <div class="panel-body">
                
                
                    <!-- begin nav-pills -->
                    <ul class="nav nav-pills">
                        <li class="nav-items">
                            <a href="#nav-pills-paypal" data-toggle="tab" class="nav-link active" style="background: linear-gradient(to right, #003087 0%, #009cde 100%);">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--!Font Awesome Free 6.5.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M111.4 295.9c-3.5 19.2-17.4 108.7-21.5 134-.3 1.8-1 2.5-3 2.5H12.3c-7.6 0-13.1-6.6-12.1-13.9L58.8 46.6c1.5-9.6 10.1-16.9 20-16.9 152.3 0 165.1-3.7 204 11.4 60.1 23.3 65.6 79.5 44 140.3-21.5 62.6-72.5 89.5-140.1 90.3-43.4 .7-69.5-7-75.3 24.2zM357.1 152c-1.8-1.3-2.5-1.8-3 1.3-2 11.4-5.1 22.5-8.8 33.6-39.9 113.8-150.5 103.9-204.5 103.9-6.1 0-10.1 3.3-10.9 9.4-22.6 140.4-27.1 169.7-27.1 169.7-1 7.1 3.5 12.9 10.6 12.9h63.5c8.6 0 15.7-6.3 17.4-14.9 .7-5.4-1.1 6.1 14.4-91.3 4.6-22 14.3-19.7 29.3-19.7 71 0 126.4-28.8 142.9-112.3 6.5-34.8 4.6-71.4-23.8-92.6z"/></svg>
                                <span class="d-sm-none">PayPal</span>
                                <span class="d-sm-block d-none"> PayPal</span>
                            </a>
                        </li>
                    </ul>
                    <!-- end nav-pills -->
                    <!-- begin tab-content -->
                    <div class="tab-content" style="padding: 15px 0 0; margin-bottom: 0">
                        <!-- begin tab-pane -->
                        <div class="tab-pane fade active show" id="nav-pills-paypal">
                            <div class="note note-success">
                                <div class="note-content">
                                    <h4>
                                        <?php echo $this->config->item('business') ? $this->config->item('business') : $this->lang->line('email_not_found'); ?>
                                    </h4>
                                    <dl>
                                        <dt class="text-inverse">Setup</dt>
                                        <dd>- <?php echo $this->lang->line('paypal_note_1'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_2'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_3'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_4'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_5'); ?></dd>
                                        <dt class="text-inverse m-t-10">PayPal Settings</dt>
                                        <dd>- <?php echo $this->lang->line('paypal_note_6'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_7'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_8'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_9'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_10') . '<b>' . base_url('paypal/success') . '</b>'; ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_11'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_12'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_13') . '<b>' . base_url('paypal/ipn') . '</b>'; ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_14'); ?></dd>
                                        <dt class="text-inverse m-t-10">Steps</dt>
                                        <dd>- <?php echo $this->lang->line('paypal_note_15'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_16'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_17'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_18'); ?></dd>
                                        <dt class="text-inverse m-t-10">General Information</dt>
                                        <dd>- <?php echo $this->lang->line('paypal_note_19'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_20'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_21'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_22'); ?></dd>
                                        <dd>- <?php echo $this->lang->line('paypal_note_23'); ?></dd>
                                        <dd>- <a href="https://www.codexworld.com/paypal-payment-gateway-integration-in-codeigniter" target="_blank">PayPal Payment Gateway Integration in CodeIgniter</a></dd>
                                        <dd>- <a href="https://www.codexworld.com/how-to/configure-paypal-sandbox-auto-return-payment-data-transfer" target="_blank">How to Configure Auto Return and Payment Data Transfer on PayPal Sandbox Account</a></dd>
                                        <dd>- <a href="https://www.codexworld.com/how-to-enable-paypal-ipn" target="_blank">How to Enable PayPal Instant Payment Notification (IPN)</a></dd>
                                        <dd>- Thanks to <a href="https://codexworld.com" target="_blank">CODEXWORLD</a></dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <!-- end tab-pane -->
                    </div>
                    <!-- end tab-content -->
                </div>
            </div>
            <!-- end panel -->
        </div>
        <!-- end col-12 -->
    </div>
    <!-- end row -->
</div>
<!-- end #content -->