<?php

namespace App\Controllers\Web\Villages;

// use App\Models\DetailFacilityRumahGadangModel;
// use App\Models\FacilityRumahGadangModel;
// use App\Models\GalleryRumahGadangModel;
// use App\Models\ReviewModel;
// use App\Models\RumahGadangModel;
use CodeIgniter\Files\File;
use CodeIgniter\RESTful\ResourcePresenter;
use CodeIgniter\API\ResponseTrait;

// use App\Models\Homestay\HomestayModel;
// use App\Models\Homestay\HomestayFacilityModel;
// use App\Models\Homestay\HomestayUnitFacilityModel;
// use App\Models\Homestay\HomestayFacilityDetailModel;
// use App\Models\Homestay\HomestayGalleryModel;

// use App\Models\Reservation\ReservationModel;
// use App\Models\Reservation\ReservationHomestayUnitDetailModel;

class Villages extends ResourcePresenter
{
    use ResponseTrait;

    // protected $rumahGadangModel;
    // protected $galleryRumahGadangModel;
    // protected $detailFacilityRumahGadangModel;
    // protected $reviewModel;
    // protected $facilityRumahGadangModel;

    // protected $homestayModel;
    // protected $homestayFacilityModel;
    // protected $homestayUnitFacilityModel;
    // protected $homestayFacilityDetailModel;
    // protected $homestayGalleryModel;

    protected $reservationModel;
    protected $reservationHomestayUnitDetailModel;

    protected $helpers = ['auth', 'url', 'filesystem'];

    public function __construct()
    {
        // $this->rumahGadangModel = new RumahGadangModel();
        // $this->galleryRumahGadangModel = new GalleryRumahGadangModel();
        // $this->detailFacilityRumahGadangModel = new DetailFacilityRumahGadangModel();
        // $this->reviewModel = new ReviewModel();
        // $this->facilityRumahGadangModel = new FacilityRumahGadangModel();

        // $this->homestayModel = new HomestayModel();
        // $this->homestayFacilityModel = new HomestayFacilityModel();
        // $this->homestayUnitFacilityModel = new HomestayUnitFacilityModel();
        // $this->homestayFacilityDetailModel = new HomestayFacilityDetailModel();
        // $this->homestayGalleryModel = new HomestayGalleryModel();

        // $this->reservationModel = new ReservationModel();
        // $this->reservationHomestayUnitDetailModel = new ReservationHomestayUnitDetailModel();
    }

    /**
     * Present a view of resource objects
     *
     * @return mixed
     */
    
}
