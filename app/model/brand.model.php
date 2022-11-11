<?php

class BrandModel {

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=perfume_shop;charset=utf8', 'root', '');
    }

    public function getAll() {
        $query = $this->db->prepare("SELECT * FROM brands");
        $query->execute();

        $brands = $query->fetchAll(PDO::FETCH_OBJ); // return object array.
        
        return $brands;
    }

    public function get($id) {
        $query = $this->db->prepare("SELECT * FROM brands WHERE id_brand = ?");
        $query->execute([$id]);
        $brands = $query->fetch(PDO::FETCH_OBJ);
        
        return $brands;
    }

    /**
     * Insert a brand into the data base.
     */
    function insert($name) {
        $query = $this->db->prepare("INSERT INTO brands (brand_name) VALUES (?)");
        $query->execute([$name]);

        return $this->db->lastInsertId();
    }

    /**
     * Delete Brand by id.
     */
    function delete($id) {
        $query = $this->db->prepare('DELETE FROM brands WHERE id_brand = ?');
        $query->execute([$id]);
    }

    /**
     * Update Brand by id.
     */
    function update($id, $name) {
        $query = $this->db->prepare("UPDATE brands SET brand_name=? WHERE id_brand=?");
        $query->execute([$name, $id]);
          
        return $this->db->lastInsertId();
    }

    /**
     * Filter perfumes by brand.
     */
    function filter($columns, $table, $column, $name) {
        $query = $this->db->prepare("SELECT $columns FROM $table WHERE $column = ?"); //ex: SELECT * FROM perfumes WHERE id_perfume = ? 
        $query->execute([$name]);
        $object = $query->fetchAll(PDO::FETCH_OBJ);

        return $object; 
    }
}