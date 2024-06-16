<?= $this->extend('web/layouts/main'); ?>

<?= $this->section('styles') ?>
<link href="https://unpkg.com/filepond@^4/dist/filepond.css" rel="stylesheet" />
<link href="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/filepond-plugin-media-preview@1.0.11/dist/filepond-plugin-media-preview.min.css">
<link rel="stylesheet" href="<?= base_url('assets/css/pages/form-element-select.css'); ?>">
<style>
    .filepond--root {
        width: 100%;
    }
</style>
<?= $this->endSection() ?>

<?= $this->section('content') ?>

<section class="section text-dark">
    <div class="row">
        <script>
            currentUrl = '<?= current_url(); ?>';

            function checkRequired(event) {
                const available_stock = document.getElementById("available_stock");
                const total_order = document.getElementById("totalOrder");

                if (parseInt(total_order.value) > parseInt(available_stock.textContent)) {
                    event.preventDefault();
                    Swal.fire('Total order cannot exceed available stock!');
                }

            }
        </script>
        <!-- Object Detail Information -->
        <div class="col-md-12 col-12">
            <div class="card">
                <div class="card-header text-center">
                    <div class="row align-items-center">
                        <div class="col">
                            <h4 class="card-title">Homestay Reservation</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col table-responsive">
                            <table class="table table-borderless text-dark">
                                <tbody>
                                    <tr>
                                        <td class="fw-bold">ID</td>
                                        <td><?= esc($reservation['id']); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Request Date</td>
                                        <td><?= esc(date_format(date_create($reservation['request_date']), "d F Y, H:i")); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Check In</td>
                                        <td><?= esc(date_format(date_create($reservation['check_in']), "d F Y, H:i")); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Check Out</td>
                                        <td><?= esc(date_format(date_create($reservation['check_out']), "d F Y, H:i")); ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Day of Stay</td>
                                        <td><?= esc($reservation['day_of_stay']); ?> Days</td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Total People</td>
                                        <td><?= esc($reservation['total_people']); ?> people</td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Contact Person</td>
                                        <td><?= esc($homestay['phone']); ?></td>
                                    </tr>
                                    <?php if ($reservation['rating'] != null) : ?>
                                        <tr>
                                            <td class="fw-bold">Rating</td>
                                            <td>
                                                <?php for ($i = 0; $i < (int)esc($reservation['rating']); $i++) { ?>
                                                    <i class="fa-solid fa-star fs-4 star-checked"></i>
                                                <?php } ?>
                                                <?php for ($i = 0; $i < (5 - (int)esc($reservation['rating'])); $i++) { ?>
                                                    <i class="fa-solid fa-star fs-4"></i>
                                                <?php } ?>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="fw-bold">Review</td>
                                            <td><?= esc($reservation['review']); ?></td>
                                        </tr>
                                    <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                        <div class="accordion" id="accordionPanelsStayOpenExample">
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="panelsStayOpen-headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                                        Homestay Units
                                    </button>
                                </h2>
                                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
                                    <div class="accordion-body">
                                        <span class="fw-bold"><?= esc($homestay['name']) ?></span><br>
                                        <span>Type : <?= esc($homestay['unit_type']) ?></span>
                                        <?php $homestay_unit_total_price = 0; ?>
                                        <?php $package_total_price = 0; ?>
                                        <?php $homestay_activity_total_price = 0; ?>
                                        <?php foreach ($homestay_unit as $item) : ?>
                                            <div class="card border mb-3">
                                                <div class="row g-0">
                                                    <div class="col-md-3 d-flex align-items-center justify-content-center">
                                                        <img width="500px" src="/media/photos/<?= esc($item['galleries'][0]) ?>" class="img-fluid rounded-start" alt="..." style="object-fit: cover; height: 150px;">
                                                    </div>
                                                    <div class="col-md-9">
                                                        <div class="card-body">
                                                            <div class="row">
                                                                <h5 class="card-title"><?= esc($item['name']) ?><a class="text-info float-end" target="_blank" href="/web/homestayUnit/<?= esc($item['homestay_id']) ?>/detail/<?= esc($item['unit_type']) ?><?= esc($item['unit_number']) ?>"><i class="fa-solid fa-circle-info"></i></a></h5>
                                                            </div>
                                                            <p class="card-text text-truncate"><?= esc($item['description']) ?></p>
                                                            <p class="card-text"><small class="text-dark"><?= esc("Rp " . number_format($item['price'], 0, ',', '.')); ?>/day</small></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <?php $homestay_unit_total_price = $homestay_unit_total_price + ($item['price'] * $reservation['day_of_stay']); ?>
                                        <?php endforeach; ?>
                                        <span>Homestay unit total price = <?= esc("Rp " . number_format($homestay_unit_total_price, 0, ',', '.')) ?></span>
                                    </div>
                                </div>
                            </div>
                            <?php if ($homestay_unit[0]['unit_type'] != "3") : ?>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="panelsStayOpen-headingFour">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseFour" aria-expanded="true" aria-controls="panelsStayOpen-collapseFour">
                                            Additional Amenities
                                        </button>
                                    </h2>
                                    <div id="panelsStayOpen-collapseFour" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingFour">
                                        <div class="accordion-body">
                                            <div class="mb-3">
                                                <span class="fw-bold"><?= esc($homestay['name']) ?></span>
                                                <?php if (($reservation['status'] == null) && ($reservation['canceled_at'] == null)) : ?>
                                                    <a title="Detail" class="text-success float-end" data-bs-toggle="modal" data-bs-target="#insertService"><i class="fa-solid fa-add"></i> Additional Amenities</a>
                                                <?php endif; ?>
                                            </div>
                                            <?php if (!empty($reservation_additional_amenities)) : ?>
                                                <?php foreach ($reservation_additional_amenities as $activity) : ?>
                                                    <li><?= esc($activity['name']) ?>
                                                        <?php if ($reservation['status'] == null) : ?>
                                                            <a class="text-danger float-end ms-2" onclick="deleteAdditionalAmenities('<?= esc($activity['homestay_id']); ?>','<?= esc($activity['additional_amenities_id']); ?>','<?= esc($activity['reservation_id']); ?>')"><i class="fa-solid fa-trash"></i></a>
                                                        <?php endif; ?>
                                                        <a class="text-info float-end" target="_blank"><i class="fa-solid fa-circle-info" data-bs-toggle="modal" data-bs-target="#infoActivity<?= esc($activity['id']); ?>"></i></a><br>
                                                        <p class="ms-4">
                                                            <?= esc("Rp " . number_format($activity['price'], 0, ',', '.')); ?><?= ($activity['is_order_count_per_day'] == '1') ? '/day' : '' ?><?= ($activity['is_order_count_per_person'] == '1') ? '/person' : '' ?><?= ($activity['is_order_count_per_room'] == '1') ? '/room' : '' ?>
                                                            <br>
                                                            <?= ($activity['day_order'] != '0') ? 'Day Order : ' . $activity['day_order'] . ', ' : '' ?><?= ($activity['person_order'] != '0') ? 'Person Order : ' . $activity['person_order'] . ', ' : '' ?><?= ($activity['room_order'] != '0') ? 'Room Order : ' . $activity['room_order'] . ', ' : '' ?><?= (($activity['day_order'] == '0') && ($activity['person_order'] == '0') && ($activity['room_order'] == '0')) ? 'Total Order : ' . $activity['total_order']  : '' ?>
                                                            <br>
                                                            <?= esc("Price : Rp " . number_format($activity['total_price'], 0, ',', '.')); ?>
                                                        </p>
                                                    </li>
                                                <?php
                                                    $homestay_activity_total_price = $homestay_activity_total_price + $activity['total_price'];
                                                endforeach;
                                                ?>
                                                <span>Homestay additional amenities total price = <?= esc("Rp " . number_format($homestay_activity_total_price, 0, ',', '.')) ?></span>
                                            <?php else : ?>
                                                <span>No additional amenities added</span>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
        $total_price = $homestay_unit_total_price + $homestay_activity_total_price + $package_total_price;
        $deposit = $total_price * 20 / 100;
        $fullPay = $total_price * 80 / 100;

        if ($reservation['is_refund'] == '1') {
            $refund = $deposit * 50 / 100;
        } elseif ($reservation['is_refund'] == '0') {
            $refund = 0;
        }
        ?>
        <div class="row">
            <div class="card">
                <div class="card-header text-center">
                    <div class="row align-items-center">
                        <div class="col">
                            <h4 class="card-title">Transaction History</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="col table-responsive">
                        <table class="table table-borderless text-dark">
                            <tbody>
                                <tr>
                                    <td class="fw-bold">Total Price</td>
                                    <td>: <?= esc("Rp " . number_format($total_price, 0, ',', '.')) ?></td>
                                </tr>
                                <tr>
                                    <td class="fw-bold">Deposit</td>
                                    <td>
                                        : <?= esc("Rp " . number_format($deposit, 0, ',', '.')) ?> <i>*(20% of total price)</i>
                                        
                                         
                                        
                                        
                                    </td>
                                </tr>
                                
                                    <tr>
                                        <td class="fw-bold">Full Pay</td>
                                        <td>
                                            : <?= esc("Rp " . number_format($fullPay, 0, ',', '.')) ?> <i>*(80% of total price)</i>

                                                <?php
                                                $fullPayDeadline = date("d F Y 18:00", strtotime($reservation['check_in']));
                                                ?>
                                                <span class="text-danger">(Deadline : <?= esc($fullPayDeadline) ?>)</span>
                                            
                                            
                                                <span class="text-success">(Paid by customer)</span>
                                           
                                        </td>
                                    </tr>
                                
                                <?php if ($reservation['is_refund'] == '1') : ?>
                                    <tr>
                                        <td class="fw-bold">Refund</td>
                                        <td>
                                            : <?= esc("Rp " . number_format($refund, 0, ',', '.')) ?> <i>*(50% of deposit)</i>
                                            <?php if ($reservation['refund_paid_confirmed_at'] != null) : ?>
                                                <span class="text-success">(Paid by homestay owner)</span>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                                <?php endif; ?>
                                <?php if (($reservation['is_refund'] == '0') && ($reservation['cancelation_reason'] == '1')) : ?>
                                    <tr>
                                        <td class="fw-bold">Refund</td>
                                        <td>: <?= esc("Rp 0") ?> <i>*(canceled after 1 day before check in)</i></td>
                                    </tr>
                                <?php endif; ?>
                            </tbody>
                        </table>
                        <hr class="hr">

                        <div class="col-md-11">
                            <?php if ($reservation['status'] == '1') : ?>
                                <a title="Download Invoice" class="btn icon btn-success btn-sm mt-3 float-end" href="/web/reservation/invoice/<?= esc($reservation['id']) ?>" target="_blank">
                                    <i class="fa-solid fa-print"></i> Invoice
                                </a>
                            <?php endif; ?>
                            
                                <a title="Cancel Reservation" class="btn icon btn-danger btn-sm mt-3 float-end" onclick="confirmCancelReservation('<?= esc($reservation['id']); ?>')">
                                    <i class="fa-solid fa-xmark"></i> Cancel Reservation
                                </a>
                            
                        </div>

                        <?php
                        $cancelDeadline = date("d F Y, H:i", strtotime($reservation['check_in'] . ' - 1 days'));

                        date_default_timezone_set("Asia/Jakarta");
                        if (strtotime(date("d F Y, H:i")) < strtotime($cancelDeadline)) {
                            $text = "You will get back 50% of the deposit you have paid!";
                        } else {
                            $text = "Cancellation after 1 day before checking in, you will not get a refund!";
                        }

                        ?>

                        <table class="table table-borderless text-dark">
                            <tbody>
                                <?php if ($reservation['reservation_finish_at'] != null) : ?>
                                    <tr>
                                        <td class="fw-bold">Reservation Finish at</td>
                                        <td>: <?= esc(date_format(date_create($reservation['reservation_finish_at']), "d F Y, H:i")) ?></td>
                                    </tr>
                                <?php endif; ?>
                                <?php if ($reservation['confirmed_at'] != null) : ?>
                                    <tr>
                                        <td class="fw-bold">Reservation Confirmed at</td>
                                        <td>: <?= esc(date_format(date_create($reservation['confirmed_at']), "d F Y, H:i")) ?></td>
                                    </tr>
                                <?php endif; ?>
                                
                              
                                <?php if ($reservation['canceled_at'] != null) : ?>
                                    <tr>
                                        <td class="fw-bold">Canceled at</td>
                                        <td>: <?= esc(date_format(date_create($reservation['canceled_at']), "d F Y, H:i")) ?></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Cancelation Reason</td>
                                        <?php if ($reservation['cancelation_reason'] == '1') : ?>
                                            <td>: Canceled by customer</td>
                                        <?php elseif ($reservation['cancelation_reason'] == '2') : ?>
                                            <td>: Deposit payment has exceeded the deadline</td>
                                        <?php elseif ($reservation['cancelation_reason'] == '3') : ?>
                                            <td>: Full payment has exceeded the deadline</td>
                                        <?php endif; ?>
                                    </tr>
                                <?php endif; ?>
                                
                                    <tr>
                                        <td class="fw-bold">Refund Proof</td>
                                        <td>: <a href="/media/photos/<?= esc($reservation['refund_proof']) ?>" target="_blank">See Document</a></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Refund Proof uploaded at</td>
                                        
                                    </tr>
                                
                                <?php if ($reservation['refund_paid_confirmed_at'] != null) : ?>
                                    <tr>
                                        <td class="fw-bold">Refund Paid Confirmed at</td>
                                        <td>: <?= esc(date_format(date_create($reservation['refund_paid_confirmed_at']), "d F Y, H:i")) ?></td>
                                    </tr>
                                <?php endif; ?>
                                
                                    <tr>
                                        <td class="fw-bold">Full Paid Proof</td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="fw-bold">Full Paid Proof uploaded at</td>
                                        
                                    </tr>
                                
                                
                                    <tr>
                                        <td class="fw-bold">Full Paid Confirmed at</td>
                                        
                                    </tr>
                                
                                <tr>
                                    <td class="fw-bold">Status</td>
                                    <td>:
                                        <?php if (($reservation['status'] == null) && ($reservation['canceled_at'] == null)) : ?>
                                            <button title="Reservation Incomplete" class="btn-sm btn-dark float-center" disabled>Incomplete</button>
                                        <?php elseif (($reservation['status'] == '0') && ($reservation['canceled_at'] == null)) : ?>
                                            <button title="Waiting for the homestay owner to accept the reservation" class="btn-sm btn-warning float-center" disabled>Waiting</button>
                                        <?php elseif (($reservation['status'] == '1') && ($reservation['deposit_proof'] == null) && ($reservation['canceled_at'] == null) && ($reservation['is_rejected'] == '1')) : ?>
                                            <button title="Reservation Rejected" class="btn-sm btn-danger float-center" disabled>Rejected</button>
                                        <?php elseif (($reservation['status'] == '1') && ($reservation['deposit_proof'] == null) && ($reservation['canceled_at'] == null)) : ?>
                                            <button title="Paying Deposit" class="btn-sm btn-success float-center" disabled>Paying Deposit</button>
                                        <?php elseif (($reservation['deposit_proof'] != null) && ($reservation['deposit_confirmed_at'] == null)) : ?>
                                            <button title="Waiting for the homestay owner to confirm deposit payment" class="btn-sm btn-warning float-center" disabled>Waiting</button>
                                        <?php elseif (($reservation['canceled_at'] != null) && ($reservation['is_refund'] == '0')) : ?>
                                            <button title="Reservation Canceled" class="btn-sm btn-danger float-center" disabled>Cancel</button>
                                        <?php elseif (($reservation['canceled_at'] != null) && ($reservation['is_refund'] == '1') && ($reservation['refund_proof'] == null)) : ?>
                                            <button title="Waiting for the homestay owner to pay refund" class="btn-sm btn-danger float-center" disabled>Refund</button>
                                        <?php elseif (($reservation['canceled_at'] != null) && ($reservation['is_refund'] == '1') && ($reservation['refund_proof'] != null) && ($reservation['refund_paid_confirmed_at'] == null)) : ?>
                                            <button title="Waiting for the customer to confirm refund" class="btn-sm btn-danger float-center" disabled>Confirm Refund</button>
                                        <?php elseif (($reservation['canceled_at'] != null) && ($reservation['is_refund'] == '1') && ($reservation['refund_proof'] != null) && ($reservation['refund_paid_confirmed_at'] != null)) : ?>
                                            <button title="Reservation Canceled" class="btn-sm btn-danger float-center" disabled>Cancel</button>
                                        <?php elseif (($reservation['deposit_confirmed_at'] != null) && ($reservation['full_paid_proof'] == null)) : ?>
                                            <button title="Paying Full Price" class="btn-sm btn-success float-center" disabled>Paying Full Price</button>
                                        <?php elseif (($reservation['full_paid_proof'] != null) && ($reservation['full_paid_confirmed_at'] == null)) : ?>
                                            <button title="Waiting for the homestay owner to confirm full payment" class="btn-sm btn-warning float-center" disabled>Waiting</button>
                                        <?php elseif ($reservation['full_paid_confirmed_at'] != null) : ?>
                                            <button title="Reservation Done" class="btn-sm btn-primary float-center" disabled>Done</button>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                                <?php if ($reservation['feedback'] != null) : ?>
                                    <tr>
                                        <td class="fw-bold">Feedback</td>
                                        <td>: <?= esc($reservation['feedback']) ?></td>
                                    </tr>
                                <?php endif; ?>
                                <tr>
                                    <td colspan="2">
                                        <hr class="hr">
                                    </td>
                                </tr>

                                <?php if (($reservation['status'] == '1') && ($reservation['deposit_confirmed_at'] == null) && ($reservation['canceled_at'] == null) && ($reservation['is_rejected'] != '1')) : ?>
                                    <tr>
                                        <td colspan="2">
                                            <span class="fw-bold">To Do : </span>
                                            Pay deposit and then upload payment proof.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            Pay to :
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="col-md-4 mt-5">
                                                <form class="form form-vertical" action="/web/reservation/payDeposit/<?= esc($reservation['id']); ?>" method="post" enctype="multipart/form-data">
                                                    <div class="form-body">
                                                        <div class="form-group mb-4">
                                                            <label for="gallery" class="form-label">
                                                                <?php if ($reservation['deposit_proof'] == null) : ?>
                                                                    Deposit Payment Proof
                                                                <?php else : ?>
                                                                    Change Deposit Payment Proof
                                                                    <?php if ($reservation['is_deposit_proof_correct'] == '0') : ?>
                                                                        <br>
                                                                        <span class="text-danger"><i>*deposit proof that you uploaded previously is incorrect</i></span>
                                                                    <?php endif; ?>
                                                                <?php endif; ?>
                                                            </label>
                                                            <input class="form-control" accept="image/*" type="file" name="gallery[]" id="gallery" required>
                                                        </div>
                                                        <button type="submit" class="btn btn-primary">Save</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                <?php elseif (($reservation['canceled_at'] != null) && ($reservation['is_refund'] == '1') && ($reservation['refund_proof'] == null)) : ?>
                                    <tr>
                                        <td colspan="2">
                                            <span class="fw-bold">To Do : </span>
                                            Add your bank account for refund and then wait for homestay owner to upload refund payment proof.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="col-md-4">
                                                <form class="form form-vertical" action="<?= ($customer_bank_account) ? '/web/reservation/bankAccount/update/' . $customer_bank_account['id'] : '/web/reservation/bankAccount/create' ?>" method="post" enctype="multipart/form-data">
                                                    <div class="form-body">
                                                        <input type="hidden" name="user_id" value="<?= esc($reservation['customer_id']); ?>">
                                                        <input type="hidden" name="reservation_id" value="<?= esc($reservation['id']); ?>">
                                                        <div class="form-group">
                                                            <label for="name" class="mb-2">Bank Name</label>
                                                            <input type="text" id="bank_name" class="form-control" name="bank_name" value="<?= ($customer_bank_account) ? $customer_bank_account['bank_name'] : '' ?>" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="mb-2">Bank Code</label>
                                                            <input type="text" id="bank_code" class="form-control" name="bank_code" value="<?= ($customer_bank_account && $customer_bank_account['bank_code']) ? $customer_bank_account['bank_code'] : '' ?>">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="mb-2">Account Number</label>
                                                            <input type="text" id="account_number" class="form-control" name="account_number" value="<?= ($customer_bank_account) ? $customer_bank_account['account_number'] : '' ?>" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name" class="mb-2">Account Name</label>
                                                            <input type="text" id="account_name" class="form-control" name="account_name" value="<?= ($customer_bank_account) ? $customer_bank_account['account_name'] : '' ?>" required>
                                                        </div>
                                                        <?php if ($customer_bank_account == null) : ?>
                                                            <button type="submit" class="btn btn-primary me-1 my-3">Save</button>
                                                        <?php else : ?>
                                                            <button type="submit" class="btn btn-primary me-1 my-3">Save Changes</button>
                                                        <?php endif; ?>
                                                    </div>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                <?php elseif (($reservation['canceled_at'] != null) && ($reservation['is_refund'] == '1') && ($reservation['refund_proof'] != null) && ($reservation['refund_paid_confirmed_at'] == null)) : ?>
                                    <tr>
                                        <td colspan="2">
                                            <span class="fw-bold">To Do : </span>
                                            Confirm refund payment. Please check the refund proof first before confirm.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <a title="Confirm Refund" class="btn icon btn-primary btn-sm mb-1 mt-3" data-bs-toggle="modal" data-bs-target="#confirmRefund">
                                                Confirm Refund
                                            </a>
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <td colspan="2">
                                            <span class="fw-bold">To Do : </span>
                                            Pay full price excluding deposit and then upload payment proof.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            Pay to :
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="col-md-4">
                                                <div class="card border" style="display: flex;">
                                                    <div class="card-body">
                                                        <span class="fw-bold">
                                                            <?= esc($homestay_owner_bank_account['bank_name']) ?>
                                                        </span>
                                                        <br>
                                                        Account Number : <?= esc($homestay_owner_bank_account['account_number']) ?>
                                                        <br>
                                                        Account Name : <?= esc($homestay_owner_bank_account['account_name']) ?>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mt-5">
                                                <form class="form form-vertical" action="/web/reservation/payFull/<?= esc($reservation['id']); ?>" method="post" enctype="multipart/form-data">
                                                    <div class="form-body">
                                                        <div class="form-group mb-4">
                                                            <label for="gallery" class="form-label">
                                                                <?php if ($reservation['full_paid_proof'] == null) : ?>
                                                                    Full Payment Proof
                                                                <?php else : ?>
                                                                    Change Full Payment Proof
                                                                    <?php if ($reservation['is_full_paid_proof_correct'] == '0') : ?>
                                                                        <br>
                                                                        <span class="text-danger"><i>*full paid proof that you uploaded previously is incorrect</i></span>
                                                                    <?php endif; ?>
                                                                <?php endif; ?>
                                                            </label>
                                                            <input class="form-control" accept="image/*" type="file" name="gallery[]" id="gallery" required>
                                                        </div>
                                                        <button type="submit" class="btn btn-primary">Save</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <td colspan="2">
                                            <span class="fw-bold">To Do : </span>
                                            Add rating and review.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <center>
                                                <!-- Object Rating and Review -->
                                                <div class="card col-md-6">
                                                    <div class="card-header text-center">
                                                        <h4 class="card-title">Rating and Review</h4>
                                                        <?php if (in_groups('user')) : ?>
                                                            <form class="form form-vertical" action="<?= base_url('web/reservation/review/' . $reservation['id']); ?>" method="post" onsubmit="checkStar(event);">
                                                                <div class="form-body">
                                                                    <div class="star-containter mb-3">
                                                                        <i class="fa-solid fa-star fs-4" id="star-1" onclick="setStar('star-1');"></i>
                                                                        <i class="fa-solid fa-star fs-4" id="star-2" onclick="setStar('star-2');"></i>
                                                                        <i class="fa-solid fa-star fs-4" id="star-3" onclick="setStar('star-3');"></i>
                                                                        <i class="fa-solid fa-star fs-4" id="star-4" onclick="setStar('star-4');"></i>
                                                                        <i class="fa-solid fa-star fs-4" id="star-5" onclick="setStar('star-5');"></i>
                                                                        <input type="hidden" id="rating" value="0" name="rating">
                                                                    </div>
                                                                    <div class="col-12 mb-3">
                                                                        <div class="form-floating">
                                                                            <textarea class="form-control" placeholder="Leave review here" id="floatingTextarea" style="height: 150px;" name="review"></textarea>
                                                                            <label for="floatingTextarea">Review</label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-12 d-flex justify-content-center mb-3">
                                                                        <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        <?php else : ?>
                                                            <?php if (!url_is("*detail*")) : ?>
                                                                <p class="card-text">Please login as User to give rating and review</p>
                                                            <?php endif; ?>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>
                                            </center>
                                        </td>
                                    </tr>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Add Service -->
    <div class="modal fade" id="insertService" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Additional Amenities</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card-body text-dark">
                        <form class="form form-vertical" action="/web/reservation/addAmenities" method="post" enctype="multipart/form-data" onsubmit="checkRequired(event)">
                            <div class="form-body">
                                <input type="hidden" name="reservation_id" value="<?= esc($reservation['id']); ?>">
                                <fieldset class="form-group mb-4">
                                    <script>
                                        getListAdditionalAmenities('<?= esc($reservation['id']); ?>', '<?= esc($homestay['id']) ?>');
                                    </script>
                                    <label for="serviceSelect" class="mb-2">Additional Amenities</label>
                                    <select class="form-select" id="serviceSelect" name="additional_amenities_id" onchange="getOrderField(this.value, '<?= esc($homestay['id']) ?>','<?= esc($reservation['day_of_stay']) ?>','<?= esc($reservation['total_people']) ?>','<?= esc(count($homestay_unit)) ?>')" required>
                                    </select>
                                </fieldset>
                                <div id="additionalAmenitiesOrderFields">
                                </div>
                                <input type="hidden" name="homestay_id" value="<?= esc($homestay['id']) ?>">
                                <button type="submit" class="btn btn-primary me-1 mt-5">Add</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Info Additional Amenities -->
    <?php if (!empty($reservation_additional_amenities)) : ?>
        <?php foreach ($reservation_additional_amenities as $activity) : ?>
            <div class="modal fade bd-example-modal-lg" id="infoActivity<?= esc($activity['id']); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Info Additional Amenities</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="card mb-3" style="max-width: 1000px;">
                                <div class="row g-0">
                                    <div class="col-md-6 d-flex align-items-center justify-content-center">
                                        <img width="1000px" src="<?= base_url('media/photos'); ?>/<?= esc($activity['image_url']); ?>" class="img-fluid rounded-start" alt="..." style="object-fit: cover;" height="250px">
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card-body">
                                            <h5 class="card-title"><?= esc($activity['name']); ?>
                                                <?php if (!empty($activity['category'] == '1')) : ?>
                                                    (Facility)
                                                <?php else : ?>
                                                    (Service)
                                                <?php endif; ?>
                                            </h5>
                                            <p class="card-text"><?= esc($activity['description']); ?></p>
                                            <p class="card-text"><small class="text-dark"><?= esc("Rp " . number_format($activity['price'], 0, ',', '.')) ?><?= ($activity['is_order_count_per_day'] == '1') ? '/day' : '' ?><?= ($activity['is_order_count_per_person'] == '1') ? '/person' : '' ?><?= ($activity['is_order_count_per_room'] == '1') ? '/room' : '' ?></small></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    <?php endif; ?>

    <!-- Modal Refund Confirmation -->
    <?php if (($reservation['canceled_at'] != null) && ($reservation['is_refund'] == '1') && ($reservation['refund_proof'] != null) && ($reservation['refund_paid_confirmed_at'] == null)) : ?>
        <div class="modal fade" id="confirmRefund" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Refund Confirmation</h5>
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card-body text-dark">
                            <img src="/media/photos/<?= esc($reservation['refund_proof']) ?>" class="img-fluid" alt="...">
                            <form class="form form-vertical" action="/web/reservation/refund/confirm/<?= esc($reservation['id']); ?>" method="post" enctype="multipart/form-data">
                                <div class="form-body">
                                    <div class="form-group ">
                                        <label for="name" class="mt-2">Is this refund proof correct?</label>
                                        <div class="form-check">
                                            <input class="form-check-input" name="is_refund_proof_correct" value="1" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                <i class="fa-solid fa-check"></i> Correct
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" name="is_refund_proof_correct" value="0" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                                            <label class="form-check-label" for="flexRadioDefault2">
                                                <i class="fa-solid fa-xmark"></i> Incorrect
                                            </label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary me-1">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>
</section>

<?= $this->endSection() ?>
<?= $this->section('javascript') ?>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
    function confirmDone(reservation_id, deposit, total_price) {
        Swal.fire({
            title: "Do you want to finish reservation?",
            icon: "warning",
            showCancelButton: true,
            confirmButtonText: "Yes",
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = "/web/reservation/finish/" + reservation_id + "/" + deposit + "/" + total_price;
            }
        });
    }
</script>
<script src="https://unpkg.com/filepond-plugin-file-validate-size/dist/filepond-plugin-file-validate-size.js"></script>
<script src="https://unpkg.com/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-exif-orientation/dist/filepond-plugin-image-exif-orientation.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.js"></script>
<script src="https://cdn.jsdelivr.net/npm/filepond-plugin-media-preview@1.0.11/dist/filepond-plugin-media-preview.min.js"></script>
<script src="https://unpkg.com/filepond@^4/dist/filepond.js"></script>
<script src="<?= base_url('assets/js/extensions/form-element-select.js'); ?>"></script>
<?php
$cancelDeadline = date("d F Y, H:i", strtotime($reservation['check_in'] . ' - 1 days'));

if (strtotime(date("d F Y, H:i")) < strtotime($cancelDeadline)) {
    $text = "You will get back 50% of the deposit you have paid!";
} else {
    $text = "Cancellation after 1 day before checking in, you will not get a refund!";
}

?>
<span><?= esc(strtotime(date("d F Y, H:i"))) ?><br><?= esc(strtotime($cancelDeadline)) ?></span>
<script>
    function confirmCancelReservation(reservation_id) {
        Swal.fire({
            title: "Do you want to cancel reservation?",
            text: "<?= esc($text) ?>",
            icon: "warning",
            showCancelButton: true,
            confirmButtonText: "Yes",
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = "/web/reservation/cancel/" + reservation_id;
            }
        });
    }
</script>
<script>
    FilePond.registerPlugin(
        FilePondPluginFileValidateSize,
        FilePondPluginFileValidateType,
        FilePondPluginImageExifOrientation,
        FilePondPluginImagePreview,
        FilePondPluginImageResize,
        FilePondPluginMediaPreview,
    );

    // Get a reference to the file input element
    const photo = document.querySelector('input[id="gallery"]');
    const video = document.querySelector('input[id="video"]');

    // Create a FilePond instance
    const pond = FilePond.create(photo, {
        maxFileSize: '1920MB',
        maxTotalFileSize: '1920MB',
        imageResizeTargetHeight: 720,
        imageResizeUpscale: false,
        credits: false,
    });
    const vidPond = FilePond.create(video, {
        maxFileSize: '1920MB',
        maxTotalFileSize: '1920MB',
        credits: false,
    })

    pond.setOptions({
        server: {
            timeout: 3600000,
            process: {
                url: '/upload/photo',
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
                url: '/upload/photo',
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
    });
    vidPond.setOptions({
        server: {
            timeout: 86400000,
            process: {
                url: '/upload/video',
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
                url: '/upload/video',
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
    });
</script>
<?= $this->endSection() ?>