<?php
require_once './app/model/brand.model.php';
require_once './app/view/api.view.php';

class BrandApiController {

    private $model;
    private $view;
    private $data;

    public function __construct() {
        $this->model = new BrandModel();
        $this->view = new ApiView();
        $this->data = file_get_contents("php://input");
    }

    private function getData() {
        return json_decode($this->data);
    }

    public function getBrands() {
        $brands = $this->model->getAll();
        $this->view->response($brands);
    }

    public function getBrand($params = null) {
        $id = $params[':ID'];
        $brands = $this->model->get($id);

        if($brands)
            $this->view->response($brands);
        else
            $this->view->response("The brand with id=$id doesnt exist", 404);
    }

    public function deleteBrand($params = null) {
        try {
            $id = $params[':ID'];

            $brands = $this->model->get($id);
            if($brands) {
                $this->model->delete($id);
                $this->view->response($brands);
            }
            else 
                $this->view->response("The brand with id=$id doesnt exist", 404);
        }   
        catch(Exception) {
            $this->view->response("The brand with id=$id cannot be removed because there are items(perfumes) related to it", 400);
        }

    }

    public function insertBrand($params = null) {
        $brands = $this->getData();

        if(empty($brands->brand_name)) {
            $this->view->response("Complete the data", 400); 
        }
        else {
            $id = $this->model->insert($brands->brand_name);
            $brands = $this->model->get($id);
            $this->view->response($brands, 201);
        }
    }

    public function filterByBrand($params = null) {
        $brand = $params[':BRAND'];
        $filter = $this->model->filter('*', 'perfumes', 'brand_name', $brand);

        if($filter) 
            $this->view->response($filter);
        else 
            $this->view->response("The brand $brand doesnt exist", 404);
        
    }

    public function updateBrand($params = null) {
        try {
            $brands = $this->getData();
            $id = $params[':ID'];
    
            if(empty($brands->brand_name)) {
                $this->view->response("Complete the data", 400); 
            }
            else {
                $id = $this->model->update($id, $brands->brand_name);
                $brands = $this->model->get($id);
                $this->view->response("successfully modified", 201);
            }
        }
        catch(Exception) {
            $this->view->response("The brand doesnt exist", 404);
        }
    }
}