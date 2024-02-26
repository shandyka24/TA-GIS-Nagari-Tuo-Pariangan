<?php
$uri = service('uri')->getSegments();
$uri1 = $uri[1] ?? 'index';
$uri2 = $uri[2] ?? '';
$uri3 = $uri[3] ?? '';
?>

<div id="sidebar" class="active">
    <div class="sidebar-wrapper active">
        <!-- Sidebar Header -->
        <?= $this->include('web/layouts/sidebar_header'); ?>

        <!-- Sidebar -->
        <div class="sidebar-menu">
            <div class="d-flex flex-column">
                <div class="d-flex justify-content-center avatar avatar-xl me-3" id="avatar-sidebar">
                    <img src="<?= base_url('images/logo.png'); ?>" alt="" srcset="" style="object-fit: cover; max-height: 90px; max-width: 90px;">
                </div>
                <?php if (logged_in()) : ?>
                    <div class="p-2 text-center">
                        <?php if (!empty(user()->first_name)) : ?>
                            Hello, <span class="fw-bold"><?= user()->first_name; ?><?= (!empty(user()->last_name)) ? ' ' . user()->last_name : ''; ?></span> <br> <span class="text-muted mb-0">@<?= user()->username; ?></span>
                        <?php else : ?>
                            Hello, <span class="fw-bold">@<?= user()->username; ?></span>
                        <?php endif; ?>
                    </div>
                <?php else : ?>
                    <div class="p-2 d-flex justify-content-center">Hello, Visitor</div>
                <?php endif; ?>
                <ul class="menu">
                    <!-- Home -->
                    <li class="sidebar-item <?= ($uri1 == 'index') ? 'active' : '' ?>">
                        <a href="/web" class="sidebar-link">
                            <i class="fa-solid fa-house"></i><span class="text-dark fw-bold">Home</span>
                        </a>
                    </li>
                    <!-- Unique Attraction -->
                    <li class="sidebar-item <?= ($uri1 == 'uniqueAttraction') ? 'active' : '' ?>">
                        <a href="/web/uniqueAttraction" class="sidebar-link">
                            <i class="fa-solid fa-star"></i><span class="text-dark fw-bold">Unique Attraction</span>
                        </a>
                    </li>

                    <!-- Ordinary Attraction -->
                    <li class="sidebar-item <?= ($uri1 == 'attraction') ? 'active' : '' ?> has-sub">
                        <a href="" class="sidebar-link">
                            <i class="fa-solid fa-tree"></i><span class="text-dark fw-bold">Ordinary Attraction</span>
                        </a>

                        <ul class="submenu <?= ($uri1 == 'attraction') ? 'active' : '' ?>">
                            <!-- List Ordinary Attraction -->
                            <li class="submenu-item" id="rg-list">
                                <a href="<?= base_url('/web/attraction'); ?>"><i class="fa-solid fa-list me-3"></i>List</a>
                            </li>
                            <!-- Ordinary Attraction Around You -->
                            <li class="submenu-item" id="rg-around-you">
                                <a data-bs-toggle="collapse" href="#searchRadiusRG" role="button" aria-expanded="false" aria-controls="searchRadiusRG"><i class="fa-solid fa-compass me-3"></i>Around You</a>
                                <div class="collapse mb-3" id="searchRadiusRG">
                                    <label for="inputRadiusRG" class="form-label">Radius: </label>
                                    <label id="radiusValueAT" class="form-label">0 m</label>
                                    <input type="range" class="form-range" min="0" max="20" value="0" id="inputRadiusAT" name="inputRadius" onchange="updateRadius('AT'); radiusSearch({postfix: 'AT'});">
                                </div>
                            </li>
                            <li class="submenu-item has-sub" id="at-search">
                                <a data-bs-toggle="collapse" href="#subsubmenu-at" role="button" aria-expanded="false" aria-controls="subsubmenu-at" class="collapse"><i class="fa-solid fa-magnifying-glass me-3"></i>Search</a>
                                <ul class="subsubmenu collapse" id="subsubmenu-at">
                                    <!-- Ordinary Attraction by Name -->
                                    <li class="submenu-item submenu-marker" id="at-by-name">
                                        <a data-bs-toggle="collapse" href="#searchNameAT" role="button" aria-expanded="false" aria-controls="searchNameAT"><i class="fa-solid fa-arrow-down-a-z me-3"></i>By Name</a>
                                        <div class="collapse mb-3" id="searchNameAT">
                                            <div class="d-grid gap-2">
                                                <input type="text" name="nameAT" id="nameAT" class="form-control" placeholder="Name" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByName('AT')">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- Ordinary Attraction by Facility -->
                                    <li class="submenu-item submenu-marker" id="rg-by-facility">
                                        <a data-bs-toggle="collapse" href="#searchFacilityAT" role="button" aria-expanded="false" aria-controls="searchFacilityAT"><i class="fa-solid fa-house-circle-check me-3"></i>By Facility</a>
                                        <div class="collapse mb-3" id="searchFacilityAT">
                                            <div class="d-grid">
                                                <script>
                                                    getATFacility();
                                                </script>
                                                <fieldset class="form-group">
                                                    <select class="form-select" id="atfacilitySelect">
                                                    </select>
                                                </fieldset>
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByFacility()">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>

                    <!-- Event -->
                    <li class="sidebar-item <?= ($uri1 == 'event') ? 'active' : '' ?> has-sub">
                        <a href="" class="sidebar-link">
                            <i class="fa-solid fa-bullhorn"></i><span class="text-dark fw-bold">Event</span>
                        </a>

                        <ul class="submenu <?= ($uri1 == 'event') ? 'active' : '' ?>">
                            <!-- List Event -->
                            <li class="submenu-item" id="ev-list">
                                <a href="<?= base_url('/web/event'); ?>"><i class="fa-solid fa-list me-3"></i>List</a>
                            </li>
                            <!-- Event Around You -->
                            <li class="submenu-item" id="ev-around-you">
                                <a data-bs-toggle="collapse" href="#searchRadiusEV" role="button" aria-expanded="false" aria-controls="searchRadiusEV"><i class="fa-solid fa-compass me-3"></i>Around You</a>
                                <div class="collapse mb-3" id="searchRadiusEV">
                                    <label for="inputRadiusEV" class="form-label">Radius: </label>
                                    <label id="radiusValueEV" class="form-label">0 m</label>
                                    <input type="range" class="form-range" min="0" max="20" value="0" id="inputRadiusEV" name="inputRadius" onchange="updateRadius('EV'); radiusSearch({postfix: 'EV'});">
                                </div>
                            </li>
                            <li class="submenu-item has-sub" id="ev-search">
                                <a data-bs-toggle="collapse" href="#subsubmenu-ev" role="button" aria-expanded="false" aria-controls="subsubmenu-ev" class="collapse"><i class="fa-solid fa-magnifying-glass me-3"></i>Search</a>
                                <ul class="subsubmenu collapse" id="subsubmenu-ev">
                                    <!-- Event by Name -->
                                    <li class="submenu-item submenu-marker" id="ev-by-name">
                                        <a data-bs-toggle="collapse" href="#searchNameEV" role="button" aria-expanded="false" aria-controls="searchNameEV"><i class="fa-solid fa-arrow-down-a-z me-3"></i>By Name</a>
                                        <div class="collapse mb-3" id="searchNameEV">
                                            <div class="d-grid gap-2">
                                                <input type="text" name="nameEV" id="nameEV" class="form-control" placeholder="Name" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByName('EV')">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- Event by Date -->
                                    <li class="submenu-item submenu-marker" id="ev-by-date">
                                        <a data-bs-toggle="collapse" href="#searchDateEV" role="button" aria-expanded="false" aria-controls="searchDateEV"><i class="fa-solid fa-calendar-days me-3"></i>By Date</a>
                                        <div class="collapse mb-3" id="searchDateEV">
                                            <div class="d-grid gap-2">
                                                <div class="input-group date" id="datepicker">
                                                    <input type="text" class="form-control" id="eventDate">
                                                    <div class="input-group-addon ms-2">
                                                        <i class="fa-solid fa-calendar-days" style="font-size: 1.5rem; vertical-align: bottom"></i>
                                                    </div>
                                                </div>
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByDate()">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <!-- Homestay -->
                    <li class="sidebar-item <?= ($uri1 == 'homestay') ? 'active' : '' ?> has-sub">
                        <a href="" class="sidebar-link">
                            <i class="fa-solid fa-bed"></i></i><span class="text-dark fw-bold">Homestay</span>
                        </a>
                        <ul class="submenu <?= ($uri1 == 'homestay') ? 'active' : '' ?>">
                            <!-- List Homestay -->
                            <li class="submenu-item" id="rg-list">
                                <a href="<?= base_url('/web/homestay'); ?>"><i class="fa-solid fa-list me-3"></i>List</a>
                            </li>
                            <!-- Homestay Around You -->
                            <li class="submenu-item" id="rg-around-you">
                                <a data-bs-toggle="collapse" href="#searchRadiusRG" role="button" aria-expanded="false" aria-controls="searchRadiusRG"><i class="fa-solid fa-compass me-3"></i>Around You</a>
                                <div class="collapse mb-3" id="searchRadiusRG">
                                    <label for="inputRadiusRG" class="form-label">Radius: </label>
                                    <label id="radiusValueHS" class="form-label">0 m</label>
                                    <input type="range" class="form-range" min="0" max="20" value="0" id="inputRadiusHS" name="inputRadius" onchange="updateRadius('HS'); radiusSearch({postfix: 'HS'});">
                                </div>
                            </li>
                            <li class="submenu-item has-sub" id="rg-search">
                                <a data-bs-toggle="collapse" href="#subsubmenu-rg" role="button" aria-expanded="false" aria-controls="subsubmenu-rg" class="collapse"><i class="fa-solid fa-magnifying-glass me-3"></i>Search</a>
                                <ul class="subsubmenu collapse" id="subsubmenu-rg">
                                    <!-- Homestay by Name -->
                                    <li class="submenu-item submenu-marker" id="rg-by-name">
                                        <a data-bs-toggle="collapse" href="#searchNameRG" role="button" aria-expanded="false" aria-controls="searchNameRG"><i class="fa-solid fa-arrow-down-a-z me-3"></i>By Name</a>
                                        <div class="collapse mb-3" id="searchNameRG">
                                            <div class="d-grid gap-2">
                                                <input type="text" name="nameRG" id="nameHS" class="form-control" placeholder="Name" aria-label="Recipient's username" aria-describedby="button-addon2">
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByName('HS')">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- Homestay by Rating -->
                                    <li class="submenu-item submenu-marker" id="rg-by-rating">
                                        <a data-bs-toggle="collapse" href="#searchRatingRG" role="button" aria-expanded="false" aria-controls="searchRatingRG"><i class="fa-regular fa-star me-3"></i>By Rating</a>
                                        <div class="collapse mb-3" id="searchRatingRG">
                                            <div class="d-grid gap-2">
                                                <div class="star-containter">
                                                    <i class="fa-solid fa-star" id="star-1" onclick="setStar('star-1');"></i>
                                                    <i class="fa-solid fa-star" id="star-2" onclick="setStar('star-2');"></i>
                                                    <i class="fa-solid fa-star" id="star-3" onclick="setStar('star-3');"></i>
                                                    <i class="fa-solid fa-star" id="star-4" onclick="setStar('star-4');"></i>
                                                    <i class="fa-solid fa-star" id="star-5" onclick="setStar('star-5');"></i>
                                                    <input type="hidden" id="star-rating" value="0">
                                                </div>
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByRating('RG')">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- Homestay by Facility -->
                                    <li class="submenu-item submenu-marker" id="rg-by-facility">
                                        <a data-bs-toggle="collapse" href="#searchFacilityRG" role="button" aria-expanded="false" aria-controls="searchFacilityRG"><i class="fa-solid fa-house-circle-check me-3"></i>By Facility</a>
                                        <div class="collapse mb-3" id="searchFacilityRG">
                                            <div class="d-grid">
                                                <script>
                                                    getHSFacility();
                                                </script>
                                                <fieldset class="form-group">
                                                    <select class="form-select" id="hsfacilitySelect">
                                                    </select>
                                                </fieldset>
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByFacilityHS()">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                    <!-- Homestay by Type -->
                                    <li class="submenu-item submenu-marker" id="rg-by-category">
                                        <a data-bs-toggle="collapse" href="#searchCategoryRG" role="button" aria-expanded="false" aria-controls="searchCategoryRG"><i class="fa-solid fa-bed me-3"></i>By Unit Available</a>
                                        <div class="collapse mb-3" id="searchCategoryRG">
                                            <div class="d-grid">
                                                <fieldset class="form-group">
                                                    <select class="form-select" id="categoryHSSelect">
                                                        <option value="1">Room</option>
                                                        <option value="2">Vila</option>
                                                        <option value="3">Hall</option>
                                                    </select>
                                                </fieldset>
                                                <button class="btn btn-outline-primary" type="submit" id="button-addon2" onclick="findByCategory('HS')">
                                                    <span class="material-icons" style="font-size: 1.5rem; vertical-align: bottom">search</span>
                                                </button>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <?php if (in_groups('user')) : ?>
                        <li class="sidebar-item <?= ($uri1 == 'reservation') ? 'active' : '' ?>">
                            <a href="<?= base_url('web/reservation'); ?>" class="sidebar-link">
                                <i class="fa-solid fa-book"></i><span class="text-dark fw-bold">Reservation</span>
                            </a>
                        </li>
                    <?php endif; ?>
                    <?php if (in_groups(['owner', 'admin'])) : ?>
                        <li class="sidebar-item">
                            <?php if (in_groups(['owner'])) : ?>
                                <a href="<?= base_url('dashboard/homestay'); ?>" class="sidebar-link">
                                <?php elseif (in_groups(['admin'])) : ?>
                                    <a href="<?= base_url('dashboard/users'); ?>" class="sidebar-link">
                                    <?php endif; ?>
                                    <i class="bi bi-grid-fill"></i><span class="text-dark fw-bold">Dashboard</span>
                                    </a>
                        </li>
                    <?php endif; ?>

                    <li class="sidebar-item">
                        <div class="d-flex justify-content-around">
                            <a href="https://www.instagram.com/pesonasumpu" class="sidebar-link" target="_blank">
                                <i class="fa-brands fa-instagram"></i><span>Instagram</span>
                            </a>
                            <a href="https://www.tiktok.com/@pesonasumpu2" class="sidebar-link" target="_blank">
                                <i class="fa-brands fa-tiktok"></i><span>TikTok</span>
                            </a>
                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </div>
</div>