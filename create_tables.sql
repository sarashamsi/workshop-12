
-- General user information
create table users (
    ID int primary key auto_increment,
    role enum('Student' , 'Professor' , 'both') not null ,
    national_ID char(20) unique not null ,
    name nvarchar(200)

);

-- Students
create table student (
  studentID int primary key auto_increment,
  ID int unique not null ,
  student_number char(11) unique not null ,
  major nvarchar(100) not null ,
  foreign key (ID) references users(ID)
);

-- Professor
create table professors(
  professorID int primary key auto_increment,
  ID int unique not null ,
  employee_number char(11) unique not null ,
    department nvarchar(100) not null ,
    academic_rank nvarchar(100) not null ,
    foreign key (ID) references users(ID)
);

-- Foods
create table foods(
    food_price int not null ,
    food_name nvarchar(150) unique not null,
    food_id int primary key auto_increment
);

-- Menus
create table menus(
  menu_ID int primary key auto_increment,
  menu_date date not null unique ,
    place nvarchar(100) not null
);

-- Menus item
create table menu_item(
  menu_item_id int primary key auto_increment ,
  menu_id int not null ,
  food_id int not null ,
  foreign key (menu_id) references menus(menu_ID),
    foreign key (food_id) references foods(food_id)
);

-- Orders
create table orders(
  order_Id int primary key auto_increment,
    user_id int not null ,
    order_date timestamp default current_timestamp ,
    foreign key (user_id) references users(ID)
);

create table order_items(
  order_item_id int primary key auto_increment,
  order_id int not null ,
  menu_item_id int not null ,
  quantity int not null ,
  foreign key (order_id) references orders(order_Id),
    foreign key (menu_item_id) references menu_item(menu_item_id)
);




