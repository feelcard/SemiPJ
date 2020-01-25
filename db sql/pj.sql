CREATE TABLE USERS(
EMAIL VARCHAR2(20) ,
PWD VARCHAR2(20),
NAME VARCHAR2(20),
ADDRESS VARCHAR2(20),
PHONE VARCHAR2(20),
B_DATE DATE,
age number(10),
sex varchar(3),
CONSTRAINT user_pk PRIMARY key(email),
CONSTRAINT users_sex_check check(sex in ('F', 'M'))
)

create table category(
category_ID number(10),
category_name number(10),
parentcategory number(10) null,
constraint category_PK primary key(category_ID),
constraint category_parentcategory_FK foreign key(parentcategory) REFERENCES category(category_ID)
)

CREATE TABLE PRODUCT(
PRODUCT_ID number(10),
NAME VARCHAR2(20),
PRICE NUMBER(20),
STOCK NUMBER(4),
IMG VARCHAR2(15),
CATEGORY_ID number(10),
SoldAmount number(10),
constraint product_pk primary key(product_id),
constraint product_fk foreign key(category_ID) references category(category_ID)
)

CREATE TABLE cart(
BASKET_ID VARCHAR2(20),
EMAIL VARCHAR2(20) ,
PRODUCT_ID number(10),
COUNT NUMBER(20),
constraint basket_pk primary key(basket_id),
constraint basket_email_fk FOREIGN key(email) REFERENCES users (email),
constraint basket_product_id_fk FOREIGN key(product_id) REFERENCES product (product_id)

)

CREATE TABLE orders(
ORDER_ID VARCHAR2(20),
Email VARCHAR2(20),
TOTALPRICE VARCHAR2(20),
ORDER_DATE DATE,
ADDRESS VARCHAR2(20),
ORDER_STAT VARCHAR2(20),
CONSTRAINT order_pk primary key(order_id),
constraint order_email_fk foreign key(email) REFERENCES users(email)
)

create table orderdetail(
Order_id varchar2(20),
product_id number(10),
count number(20),
OrderDetail_ID varchar(20),
constraint orderdetail_PK primary key(orderdetail_id),
constraint orderdetail_order_id_fk foreign key(order_id) references orders(order_id),
constraint orderdetail_product_id_fk foreign key(product_ID) references product(product_ID)

)

CREATE TABLE board(
board_ID VARCHAR2(20),
EMAIL VARCHAR2(20),
IMG VARCHAR2(15),
board_contents VARCHAR2(255),
board_DATE DATE,
product_ID number(10),
board_category varchar2(15),
constraint board_pk primary key(board_id),
constraint board_email_fk FOREIGN key(email) REFERENCES users(email),
constraint board_product_id_fk foreign key(product_id) references product(product_id)

)


alter table orders
add CONSTRAINT orders_order_stat_check check(order_stat in ('cancel', 'shipping', 'delivered','refund'));

alter table board
add constraint board_board_category_check check(board_category in ('qna', 'notice', 'review'));

