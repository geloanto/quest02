create table user (
  id int unsigned primary key auto_increment not null,
  email varchar(255) not null unique,
  password varchar(255) not null
);

create table item (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  user_id int unsigned not null,
  foreign key(user_id) references user(id)
);
CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY not null,
    name VARCHAR(255) NOT NULL
);
CREATE TABLE program (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    synopsis TEXT NOT NULL,
    poster VARCHAR(255) not null,
    country VARCHAR(255) not null,
    year INT not null,
    category_id INT not null,
    FOREIGN KEY (category_id) REFERENCES category (id)
);