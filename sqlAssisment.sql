create database assign;

use assign;

create table  Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

Desc Users;

create table Tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    due_date DATE,
    status VARCHAR(50) DEFAULT 'pending',
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

insert into Users
 (username, password, email) VALUES
    ('user1', 'password1', 'user1@example.com'),
    ('user2', 'password2', 'user2@example.com');

select * from Users;

insert into Tasks 
(title, description, due_date, user_id) values
    ('Task 1', 'Description for Task 1', '2024-01-10', 1),
    ('Task 2', 'Description for Task 2', '2024-01-15', 1),
    ('Task 3', 'Description for Task 3', '2024-01-20', 2);

Select * from Tasks;

Desc Tasks;

select * from Tasks where user_id = 1;

update Tasks SET status = 'completed' where task_id = 1;

select * from Tasks Where status = 'pending';

delete from Tasks where task_id = 2;

Alter table Users
ADD column full_name VARCHAR(255);

Alter table Users
Drop Column full_name;

Select COUNT(task_id) AS total_tasks
From Tasks;

Select DISTINCT status From Tasks;