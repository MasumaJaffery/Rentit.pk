<?php $tenant_paids = $this->db->get_where('tenant_paid', array('invoice_id' => $param2))->result_array(); ?>
<div class="table-responsive">
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th width="1%">#</th>
                <th><?php echo $this->lang->line('amount'); ?></th>
                <th><?php echo $this->lang->line('paid_on'); ?></th>
                <th><?php echo $this->lang->line('payment_method'); ?></th>
                <th><?php echo $this->lang->line('notes'); ?></th>
                <th><?php echo $this->lang->line('transaction'); ?></th>
                <th><?php echo $this->lang->line('options'); ?></th>
            </tr>
        </thead>
        <tbody>
            <?php
                $i = 1; 
                foreach ($tenant_paids as $tenant_paid): 
            ?>
            <tr>
                <td><?php echo $i++; ?></td>
                <td><?php echo number_format($tenant_paid['amount']); ?></td>
                <td><?php echo date('d M, Y', $tenant_paid['paid_on']); ?></td>
                <td><?php echo $tenant_paid['payment_method'] ?? 'N/A'; ?></td>
                <td><?php echo $tenant_paid['notes'] ? $tenant_paid['notes'] : '-'; ?></td>
                <td>
                    <?php
                        $transaction_query = $this->db->get_where('payments', array('paymentid' => $tenant_paid['paymentid'])); 
                        if ($transaction_query->num_rows() > 0): 
                    ?>
                    <a href="javascript:;" onclick="showAjaxModal('<?php echo base_url(); ?>modal/popup/modal_show_transaction/<?php echo $transaction_query->row()->paymentid; ?>');">
                        <?php echo $transaction_query->row()->txn_id; ?>
                    </a>
                    <?php else: echo 'N/A'; endif; ?>
                </td>
                <td>
                    <a href="javascript:;" onclick="showAjaxModal('<?php echo base_url(); ?>modal/popup/modal_edit_payment/<?php echo $tenant_paid['tenant_paid_id']; ?>')" class="btn btn-primary btn-xs">
                        <i class="fa fa-edit"></i> <?php echo $this->lang->line('edit'); ?>
                    </a>
                    <a href="javascript:;" onclick="confirm_modal('<?php echo base_url(); ?>payments/remove/<?php echo $tenant_paid['tenant_paid_id']; ?>')" class="btn btn-danger btn-xs">
                        <i class="fa fa-trash"></i> <?php echo $this->lang->line('remove'); ?>
                    </a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<script>
	$('.modal-dialog').css('max-width', '720px');
</script>