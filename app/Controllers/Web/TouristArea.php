<?php

namespace App\Controllers\Web;

use App\Models\DetailFacilityRumahGadangModel;
use App\Models\FacilityRumahGadangModel;
use App\Models\GalleryRumahGadangModel;
use App\Models\ReviewModel;
use App\Models\RumahGadangModel;
use CodeIgniter\Files\File;
use CodeIgniter\RESTful\ResourcePresenter;
use CodeIgniter\API\ResponseTrait;

use App\Models\TouristAreaModel;

class TouristArea extends ResourcePresenter
{

    use ResponseTrait;
    protected $rumahGadangModel;
    protected $galleryRumahGadangModel;
    protected $detailFacilityRumahGadangModel;
    protected $reviewModel;
    protected $facilityRumahGadangModel;
    protected $touristAreaModel;

    protected $helpers = ['auth', 'url', 'filesystem'];

    public function __construct()
    {
        $this->rumahGadangModel = new RumahGadangModel();
        $this->galleryRumahGadangModel = new GalleryRumahGadangModel();
        $this->detailFacilityRumahGadangModel = new DetailFacilityRumahGadangModel();
        $this->reviewModel = new ReviewModel();
        $this->facilityRumahGadangModel = new FacilityRumahGadangModel();
        $this->touristAreaModel = new TouristAreaModel();
    }

    public function index()
    {
        $data = [
            'title' => 'Home',
        ];

        return view('home/home', $data);
    }
    public function addTouristArea()
    {
        $request = $this->request->getPost();
        $request['id'] = 'L1';
        $requestData = [
            'lat' => $request['lat'],
            'lng' => $request['lng'],
        ];
        foreach ($requestData as $key => $value) {
            if (empty($value)) {
                unset($requestData[$key]);
            }
        }
        $geojson = $request['geo-json'];

        $addHS = $this->touristAreaModel->add_tourist_area($requestData, $geojson);

        if ($addHS) {
            $data = [
                'title' => 'New Village',
                // 'facilities' => $facilities,
            ];
            return view('dashboard/village_form', $data);
        } else {
            return redirect()->back()->withInput();
        }
    }
}
