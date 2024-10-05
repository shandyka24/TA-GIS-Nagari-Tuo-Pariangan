<?php

namespace App\Controllers\Web;

use CodeIgniter\Files\File;
use CodeIgniter\RESTful\ResourcePresenter;
use CodeIgniter\API\ResponseTrait;

use App\Models\TouristAreaModel;
use App\Models\VillageModel;
use App\Models\VillageGalleryModel;
use Myth\Auth\Models\UserModel;

class TouristArea extends ResourcePresenter
{

    use ResponseTrait;

    protected $touristAreaModel;
    protected $villageModel;
    protected $villageGalleryModel;
    protected $userModel;

    protected $helpers = ['auth', 'url', 'filesystem'];

    public function __construct()
    {
        $this->touristAreaModel = new TouristAreaModel();
        $this->villageModel = new VillageModel();
        $this->villageGalleryModel = new VillageGalleryModel();
        $this->userModel = new UserModel();
    }

    public function index()
    {

        $village = $this->villageModel->check_village()->getRowArray();
        $user_phone = $this->userModel->get_admin_phone()->getRowArray();
        $village['phone'] = $user_phone['phone'];

        $list_gallery = $this->villageGalleryModel->get_gallery_api($village['id'])->getResultArray();
        $galleries = array();
        foreach ($list_gallery as $gallery) {
            $galleries[] = $gallery['url'];
        }
        $village['gallery'] = $galleries;
        $village['id_ta'] = $village['id'];
        unset($village['id']);

        $data = [
            'title' => 'Home',
            'data' => $village,
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
