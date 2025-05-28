<?= $this->extend('profile/index'); ?>

<?= $this->section('content') ?>
<style>
/* Global font size override to 20px */
body, .card, .table, .btn, .form-control, .form-select, .modal, .form-label, label, input, textarea, select, option, th, td, p, span, div, h1, h2, h3, h4, h5, h6{
    font-size: 20px;
}

/* Specific overrides for smaller elements */
.card-title {
    font-size: 20px;
    font-weight: bold;
}

.table th, .table td {
    font-size: 20px;
    padding: 12px;
}

.btn {
    font-size: 20px;
    padding: 10px 16px;
}

.btn-sm {
    font-size: 18px;
    padding: 8px 12px;
}

.form-control, .form-select {
    font-size: 20px;
    padding: 10px;
    /* font-weight: bold; */
}

.modal-title {
    font-size: 22px;
}

.input-group-text {
    font-size: 20px;
}

.form-check-label {
    font-size: 20px;
}

.text-secondary, .text-muted {
    font-size: 18px;
}

/* DataTable specific styles */
.dataTables_wrapper, .dataTables_filter input, .dataTables_length select {
    font-size: 20px;
}

.dataTables_info, .dataTables_paginate {
    font-size: 20px;
}
</style>
<section class="section">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title fs-4 fw-bolder">Change Password</h3>
            <?php foreach ($errors as $error): ?>
                <div class="alert <?= ($success) ? 'alert-success' : 'alert-warning'; ?> alert-dismissible show fade">
                    <?= esc($error) ?>
                    <button
                        type="button"
                        class="btn-close"
                        data-bs-dismiss="alert"
                        aria-label="Close"></button>
                </div>
            <?php endforeach ?>
        </div>
        <div class="card-body">
            <form class="form form-vertical" action="<?= base_url('web/profile/changePassword'); ?>" method="post">
                <div class="form-body">
                    <div class="row">
                        <div class="col-8 mb-3">
                            <div class="form-group">
                                <label for="password" class="mb-2">New Password</label>
                                <input type="password" id="password" class="form-control"
                                    name="password" placeholder="New Password">
                            </div>
                        </div>
                        <div class="col-8 mb-3">
                            <div class="form-group">
                                <label for="confirm-password" class="mb-2">Confirm New Password</label>
                                <input type="password" id="confirm-password" class="form-control"
                                    name="pass_confirm" placeholder="Confirm New Password">
                            </div>
                        </div>

                        <div class="col-8 d-flex justify-content-end mb-3">
                            <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<?= $this->endSection() ?>