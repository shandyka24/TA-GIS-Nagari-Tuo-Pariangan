<?= $this->extend('profile/index'); ?>

<?= $this->section('content') ?>
<style>
    /* Global font size override to 20px */
    body,
    .card,
    .table,
    .btn,
    .form-control,
    .form-select,
    .modal,
    .form-label,
    label,
    input,
    textarea,
    select,
    option,
    th,
    td,
    p,
    span,
    div,
    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
        font-size: 20px;
    }

    /* Specific overrides for smaller elements */
    .card-title {
        font-size: 20px;
        font-weight: bold;
    }

    .table th,
    .table td {
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

    .form-control,
    .form-select {
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

    .text-secondary,
    .text-muted {
        font-size: 18px;
    }

    /* DataTable specific styles */
    .dataTables_wrapper,
    .dataTables_filter input,
    .dataTables_length select {
        font-size: 20px;
    }

    .dataTables_info,
    .dataTables_paginate {
        font-size: 20px;
    }
</style>
<section class="section">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title fs-4 fw-bolder">Update Profile</h3>
            <?php foreach ($errors as $error) : ?>
                <div class="alert alert-warning alert-dismissible show fade">
                    <?= esc($error) ?>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            <?php endforeach ?>
        </div>
        <div class="card-body">
            <form class="form form-vertical" action="<?= base_url('web/profile/update'); ?>" method="post" enctype="multipart/form-data">
                <div class="form-body">
                    <div class="row gx-md-5">
                        <div class="col-md-6 col-12 order-md-first order-last">
                            <div class="row">
                                <div class="col-12 mb-3">
                                    <div class="form-group">
                                        <label for="first-name" class="mb-2">First Name</label>
                                        <input
                                            type="text"
                                            id="first-name"
                                            class="form-control text-dark"
                                            name="first_name"
                                            placeholder="First Name"
                                            value="<?= (user()->first_name == '') ? '' : user()->first_name; ?>"
                                            required
                                            pattern="[A-Za-z' ]+"
                                            title="Only letters, apostrophes ('), and spaces are allowed"
                                            oninput="this.value = this.value.replace(/[^A-Za-z' ]/g, '')" />
                                    </div>
                                </div>
                                <div class="col-12 mb-3">
                                    <div class="form-group">
                                        <label for="last-name" class="mb-2">Last Name</label>
                                        <input
                                            type="text"
                                            id="last-name"
                                            class="form-control text-dark"
                                            name="last_name"
                                            placeholder="Last Name"
                                            value="<?= (user()->last_name == '') ? '' : user()->last_name; ?>"
                                            required
                                            pattern="[A-Za-z' ]+"
                                            title="Only letters, apostrophes ('), and spaces are allowed"
                                            oninput="this.value = this.value.replace(/[^A-Za-z' ]/g, '')">
                                    </div>
                                </div>
                                <div class="col-12 mb-3">
                                    <div class="form-group">
                                        <label for="email" class="mb-2">Email</label>
                                        <input type="email"
                                            id="email"
                                            class="form-control text-dark"
                                            name="email"
                                            placeholder="Email"
                                            value="<?= user()->email; ?>"
                                            required>
                                    </div>
                                    <script>
                                        // Hanya izinkan karakter valid pada email
                                        document.getElementById('email').addEventListener('input', function(e) {
                                            const allowed = /^[a-zA-Z0-9@._%+-]*$/;
                                            let current = e.target.value;
                                            if (!allowed.test(current)) {
                                                e.target.value = current.replace(/[^a-zA-Z0-9@._%+-]/g, '');
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                            <div class="col-12 mb-3">
                                <div class="form-group">
                                    <label for="username" class="mb-2">Username</label>
                                    <input
                                        type="text"
                                        id="username"
                                        class="form-control text-dark"
                                        name="username"
                                        placeholder="Username"
                                        value="<?= user()->username; ?>"
                                        required
                                        pattern="[A-Za-z0-9,._-]+"
                                        title="Only letters, numbers, commas (,), periods (.), underscores (_) and hyphens (-) are allowed"
                                        oninput="this.value = this.value.replace(/[^A-Za-z0-9,._-]/g, '')">
                                </div>
                            </div>
                            <div class="col-12 mb-3">
                                <div class="form-group">
                                    <label for="address" class="mb-2">Address</label>
                                    <input type="text"
                                    id="address"
                                    class="form-control text-dark"
                                    name="address"
                                    placeholder="Address"
                                    value="<?= (user()->address == '') ? '' : user()->address; ?>"
                                    pattern="[A-Za-z0-9'() \s.,-]+"
                                    title="Only letters, numbers, apostrophes ('), parentheses (), dots (.), commas (,), dashes (-), and spaces are allowed"
                                    oninput="this.value = this.value.replace(/[^A-Za-z0-9'() .,\\-]/g, '')">
                                </div>
                            </div>
                            <div class="col-12 mb-3">
                                <div class="form-group">
                                    <label for="phone" class="mb-2">Phone</label>
                                    <input type="text" minlength="10" maxlength="13" id="phone" class="form-control text-dark" name="phone"
                                    placeholder="Phone"
                                    value="<?= (user()->phone == '') ? '' : user()->phone; ?>"
                                    oninput="this.value = this.value.replace(/[^0-9]/g, '')"
                                    pattern="\d{10,13}"
                                    title="Phone number must be 10 to 13 digits"
                                    required>
                                </div>
                            </div>
                            <div class="col-12 d-flex justify-content-end mb-3">
                                <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-12 order-md-last order-first">
                        <div class="row">
                            <div class="col-12 mb-3">
                                <div class="form-group">
                                    <label for="avatar" class="mb-2">Profile Picture</label>
                                    <input class="form-control" type="file" id="avatar" name="avatar" accept="image/png, image/jpeg, image/gif">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        </form>
    </div>
    </div>
</section>
<?= $this->endSection() ?>

<?= $this->section('javascript'); ?>
<script>
    FilePond.registerPlugin(
        FilePondPluginFileValidateSize,
        FilePondPluginFileValidateType,
        FilePondPluginImageExifOrientation,
        FilePondPluginImagePreview,
        FilePondPluginImageCrop,
        FilePondPluginImageResize,
        FilePondPluginImageTransform
    );

    // Get a reference to the file input element
    const inputElement = document.querySelector('input[id="avatar"]');

    // Create a FilePond instance
    const pond = FilePond.create(inputElement, {
        maxFileSize: '1920MB',
        maxTotalFileSize: '1920MB',
        labelIdle: `Drag & Drop your picture or <span class="filepond--label-action">Browse</span>`,
        imagePreviewHeight: 300,
        imageCropAspectRatio: '1:1',
        imageResizeTargetWidth: 300,
        imageResizeTargetHeight: 300,
        stylePanelLayout: 'compact circle',
        styleLoadIndicatorPosition: 'center bottom',
        styleButtonRemoveItemPosition: 'center bottom',
        credits: false,
    });
    pond.addFile(`<?= base_url('media/photos/' . user()->avatar); ?>`)
        .then((file) => {
            console.log(file.filename, "has been added")
        })
        .catch((error) => {
            console.log(error)
        })
    FilePond.setOptions({
        server: {
            timeout: 3600000,
            process: {
                url: '/upload/avatar',
                onload: (response) => {
                    console.log("processed:", response);
                    return response
                },
                onerror: (response) => {
                    console.log("error:", response);
                    return response
                },
            },
            revert: {
                url: '/upload/avatar',
                onload: (response) => {
                    console.log("reverted:", response);
                    return response
                },
                onerror: (response) => {
                    console.log("error:", response);
                    return response
                },
            },
        }
    })
</script>
<?= $this->endSection() ?>