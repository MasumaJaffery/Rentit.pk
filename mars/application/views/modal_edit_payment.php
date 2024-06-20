<?php $tenant_paid = $this->db->get_where('tenant_paid', array('tenant_paid_id' => $param2)); ?>
<?php echo form_open('payments/update/' . $param2, array('id' => 'edit_invoice_payment', 'method' => 'post', 'data-parsley-validate' => 'true')); ?>
<div class="form-group">
    <label><?php echo $this->lang->line('amount'); ?> *</label>
    <input value="<?php echo $tenant_paid->row()->amount; ?>" type="text" name="amount" placeholder="<?php echo $this->lang->line('enter_paid_amount'); ?>" class="form-control" data-parsley-type="number">
</div>
<div class="form-group">
    <label><?php echo $this->lang->line('payment_method'); ?></label>
    <div>
        <select style="width: 100%" class="form-control default-select2" name="payment_method_id">
            <option value=""><?php echo $this->lang->line('select_payment_method'); ?></option>
            <?php
                $payment_methods = $this->db->get('payment_method')->result_array();
                foreach ($payment_methods as $payment_method):
            ?>
            <option <?php if ($payment_method['name'] == $tenant_paid->row()->payment_method) echo 'selected'; ?> value="<?php echo $payment_method['payment_method_id']; ?>"><?php echo $payment_method['name']; ?></option>
            <?php endforeach; ?>
        </select>
    </div>
</div>
<?php
    $used_paymentids = [];
    $this->db->select('paymentid');
    $tenant_paymentids = $this->db->get('tenant_paid')->result_array();
    foreach ($tenant_paymentids as $tenant_paymentid) {
        if ($tenant_paymentid['paymentid']) {
            array_push($used_paymentids, $tenant_paymentid['paymentid']);
        }
    }
?>
<div class="form-group">
    <label><?php echo $this->lang->line('transaction'); ?></label>
    <div>
        <select style="width: 100%" class="form-control default-select2" name="paymentid">
            <option value=""><?php echo $this->lang->line('select_transaction'); ?></option>
            <?php if ($tenant_paid->row()->paymentid): ?>
            <option selected value="<?php echo $tenant_paid->row()->paymentid; ?>"><?php echo $this->db->get_where('payments', array('paymentid' => $tenant_paid->row()->paymentid))->row()->txn_id; ?></option>
            <?php endif; ?>
            <hr>
            <?php
                $payments = $this->db->get('payments')->result_array();
                foreach ($payments as $payment):
                    if (!in_array($payment['paymentid'], $used_paymentids)):
                    // if ($this->db->get_where('tenant_paid', array('paymentid' => $payment['paymentid']))->num_rows() == 0):
            ?>
            <option value="<?php echo $payment['paymentid']; ?>"><?php echo $payment['txn_id']; ?></option>
            <?php
                    endif; 
                endforeach; 
            ?>
        </select>
    </div>
</div>
<div class="form-group">
    <label><?php echo $this->lang->line('paid_on'); ?> (mm/dd/yyyy) *</label>
    <input value="<?php echo date('m/d/Y', $tenant_paid->row()->paid_on); ?>" name="paid_on" type="text" class="form-control" id="datepicker-default" placeholder="<?php echo $this->lang->line('paid_on_date'); ?>" data-parsley-required="true" />
</div>
<div class="form-group">
    <label><?php echo $this->lang->line('notes'); ?></label>
    <textarea name="notes" class="form-control" cols="30" rows="5" placeholder="<?php echo $this->lang->line('notes_on_the_payment'); ?>"><?php echo $tenant_paid->row()->notes; ?></textarea>
</div>

<button type="submit" class="mb-sm btn btn-primary"><?php echo $this->lang->line('update'); ?></button>
<?php echo form_close(); ?>

<script>
    $('#edit_invoice_payment').parsley();
    FormPlugins.init();

    $('select:not(.normal)').each(function() {
        $(this).select2({
            dropdownParent: $(this).parent()
        });
    });
</script>