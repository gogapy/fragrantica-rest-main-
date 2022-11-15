<?php
require_once './libs/Router.php';
require_once './app/controller/perfume-api.controller.php';
require_once './app/controller/brand-api.controller.php';


//create the router
$router = new Router;

//define router table for perfumes
$router->addRoute('perfumes', 'GET', 'PerfumeApiController', 'getPerfumes');
$router->addRoute('perfumes/:ID', 'GET', 'PerfumeApiController', 'getPerfume');
$router->addRoute('perfumes/:ID', 'DELETE', 'PerfumeApiController', 'deletePerfume');
$router->addRoute('perfumes', 'POST', 'PerfumeApiController', 'insertPerfume');
$router->addRoute('perfumes/:ID', 'PUT', 'PerfumeApiController', 'updatePerfume');

//define router table for brands
$router->addRoute('brands', 'GET', 'BrandApiController', 'getBrands');
$router->addRoute('brands/:ID', 'GET', 'BrandApiController', 'getBrand');
$router->addRoute('brands/:ID', 'DELETE', 'BrandApiController', 'deleteBrand');
$router->addRoute('brands', 'POST', 'BrandApiController', 'insertBrand');
$router->addRoute('brands/:ID', 'PUT', 'BrandApiController', 'updateBrand');

//filter by brand
$router->addRoute('brand/:BRAND', 'GET', 'BrandApiController', 'filterByBrand');

//sort by :COLUMN
$router->addRoute('perfumes/sort/:COLUMN', 'GET', 'PerfumeApiController', 'sortByColumn');

//filter by :COLUMN
$router->addRoute('perfumes/filter/:COLUMN', 'GET', 'PerfumeApiController', 'filterAndSort');

//execute the route
$router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);