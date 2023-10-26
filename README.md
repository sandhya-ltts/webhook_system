# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version : ruby-3.1.3

* gems used:
    mysql2
    httparty

* Database creation :
     rake db:create
     rake db:migrate

* Description:
* In this project i have created products controller and webhook controller.
* when ever product is created or updated , it will trigger notifications to the registered webhooks. For this,  I have created Webhooks controller.
* when ever a product is created or updated , new product details i'm saving into the another table like new_products table.
* Here , I'm using same application URL to get webhook nofication.
* Note: Please start the server will 3 ports, 3000, 3002, 3003.
* Product is created / updated, it will hit the webhook controller notify method and create the record under nre_products tables with new data.


Create Product API:

![create_product](https://github.com/sandhya-ltts/webhook_system/assets/149066318/348153f6-19cc-4735-bee9-9b4dabde7931)

Update Product API:

![update_product](https://github.com/sandhya-ltts/webhook_system/assets/149066318/0e163dbf-ad0a-4c36-880a-58933226d491)

Changes are saving under new_products table when ever a product is created / updated:

![new_products](https://github.com/sandhya-ltts/webhook_system/assets/149066318/031f7556-2c8d-419f-88a7-16a9c961183b)











