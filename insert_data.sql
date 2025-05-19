insert into users( role, national_ID, name)
values ('Student', '1111111111' , 'Sara'),
       ('Student', '2222222222','Yasmin'),
       ('Professor','3333333333','Hayati');


insert into student (ID, student_number, major)
values (1, '40313020','CS'),
       (2,'40313025','Cs');


insert into professors( ID, employee_number, department, academic_rank)
values (3,'130001','CS','Assistant');


insert into foods(food_price, food_name)
values (100,'Sandwich'),
        (100,'Pasta'),
        (100,'Chicken' );

insert into menus(menu_date , place)
values ('2024-05-18','restaurant');

insert into menu_item(menu_id, food_id)
values (1,1),
       (1,2),
       (1,3);

insert into orders(user_id)
values (1);

insert into order_items(order_id, menu_item_id, quantity)
values (1 , 1 , 2),
       (1 , 2 , 1);







