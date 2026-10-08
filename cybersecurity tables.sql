create database project;
use project;

create table users(             # 1
user_id int primary key,
user_name varchar(50) not null,
department varchar(50) not null,
role varchar(30) not null
);

create table devices(          # 2
device_id int auto_increment primary key,
device_name varchar(50) not null,
device_type varchar(50) not null,
operating_system varchar(30) not null,
first_seen_date date not null
);

create table login_history(     # 3
login_id int auto_increment primary key,
login_datetime datetime not null,
location varchar(50) not null,
login_status varchar(10) not null check (login_status in ('Success', 'Failed')),
failure_reason varchar(50),
user_id int not null, foreign key(user_id) references users(user_id)
on update cascade 
on delete cascade,
device_id int not null, foreign key(device_id) references devices(device_id)
on update cascade
on delete cascade
);

create table risk_result(          # 4
risk_id int auto_increment primary key,
risk_score decimal(5,2) NOT NULL CHECK (risk_score >= 0 AND risk_score <= 100),
risk_level varchar(15)  NOT NULL CHECK (risk_level IN ('Low', 'Medium', 'High')),
reason varchar(300) not null,
recommendation varchar(100) not null,
calculated_at datetime not null,
user_id int not null, foreign key(user_id) references users(user_id)
on delete cascade
on update cascade,
login_id int not null unique, foreign key(login_id) references login_history(login_id)
on delete cascade
on update cascade
);

SHOW DATABASES;
SHOW TABLES;
SELECT * FROM users;
SELECT * FROM devices;
SELECT * FROM login_history;
SELECT * FROM risk_result;



ALTER TABLE login_history MODIFY login_id INT AUTO_INCREMENT;  #add auto increment
ALTER TABLE risk_result DROP FOREIGN KEY login_id;

