<?php

namespace App\Models\Souvenir;

use CodeIgniter\I18n\Time;
use CodeIgniter\Model;

class SouvenirPlaceFacilityDetailModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'souvenir_place_facility_detail';
    protected $returnType       = 'array';
    protected $allowedFields    = ['souvenir_place_id', 'facility_id'];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // API
    public function get_facility_by_sp_api($souvenir_place_id = null)
    {
        $query = $this->db->table($this->table)
            ->select('souvenir_place_facility.name')
            ->where('souvenir_place_id', $souvenir_place_id)
            ->join('souvenir_place_facility', 'souvenir_place_facility_detail.souvenir_place_facility_id = souvenir_place_facility.id')
            ->get();
        return $query;
    }

    public function get_facility_by_fc_api($facility_id = null)
    {
        $query = $this->db->table($this->table)
            ->select('*')
            ->where('facility_id', $facility_id)
            ->get();
        return $query;
    }


    public function get_new_id_api()
    {
        $lastId = $this->db->table($this->table)->select('id')->orderBy('id', 'ASC')->get()->getLastRow('array');
        $count = (int)substr($lastId['id'], 0);
        $id = sprintf('%03d', $count + 1);
        return $id;
    }

    public function add_facility_api($id = null, $data = null)
    {
        $query = false;
        foreach ($data as $facility) {
            $content = [
                'souvenir_place_id' => $id,
                'souvenir_place_facility_id' => $facility,
            ];
            $query = $this->db->table($this->table)->insert($content);
        }
        return $query;
    }

    public function update_facility_api($id = null, $data = null)
    {
        $queryDel = $this->db->table($this->table)->delete(['souvenir_place_id' => $id]);
        $queryIns = $this->add_facility_api($id, $data);
        return $queryDel && $queryIns;
    }
}
