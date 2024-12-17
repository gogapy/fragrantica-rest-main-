# Fragantica API RESTful
An API REST for CREATE, REED, UPDATE, DELETE (CRUD) perfumes

## Importar la base de datos
- from PHPMyAdmin import database/perfume_shop.php


## Perfume endpoints
- GET all the perfumes: http://localhost/fragantica-rest-main/api/perfumes

- GET one perfume by id: http://localhost/fragantica-rest-main/api/perfumes/:ID
    - ex: http://localhost/fragantica-rest-main/api/perfumes/5

- DELETE a perfume by id: http://localhost/fragantica-rest-main/api/perfumes/:ID
    - ex: http://localhost/fragantica-rest-main/api/perfumes/17

- POST a perfume(add a perfume to de data base): http://localhost/fragantica-rest-main/api/perfumes

- PUT a perfume(modify a perfume): http://localhost/fragantica-rest-main/api/perfumes/:ID
    - ex: http://localhost/fragantica-rest-main/api/perfumes/24

## Brand endpoints
- GET all the brands: http://localhost/fragantica-rest-main/api/brands

- GET one brand by id: http://localhost/fragantica-rest-main/api/brands/:ID
    - ex: http://localhost/fragantica-rest-main/api/brands/2

- DELETE a brand by id: http://localhost/fragantica-rest-main/api/brands/:ID
    - ex: http://localhost/fragantica-rest-main/api/brands/5

- POST a brand(add a brand to de data base): http://localhost/fragantica-rest-main/api/brands

- PUT a brand(modify a brand): http://localhost/fragantica-rest-main/api/brands/:ID
    - ex: http://localhost/fragantica-rest-main/api/brands/25

## Filter endpoint
- GET perfumes filtering by brand_name: http://localhost/fragantica-rest-main/api/brand/:BRAND
    - ex: http://localhost/fragantica-rest-main/api/brand/Azzaro

## Order endopint
- GET perfumes sorted by a column: http://localhost/fragantica-rest-main/api/perfumes/sort/:COLUMN
    - ex: http://localhost/fragantica-rest-main/api/perfumes/sort/brand_name

## filter and sort by column
- GET a column sorted: http://localhost/fragantica-rest-main/api/perfumes/filter/:COLUMN
    - ex: http://localhost/fragantica-rest-main/api/perfumes/filter/notes
