CREATE TABLE `Admins`
(
 `id`       integer NOT NULL ,
 `username` varchar(255) NOT NULL ,
 `password` varchar(255) NOT NULL ,
 `email`    varchar(255) NOT NULL ,
 `phone`    varchar(255) NOT NULL ,

PRIMARY KEY (`id`)
);



CREATE TABLE `Equipment`
(
 `id`   integer NOT NULL ,
 `name` varchar(255) NOT NULL ,
 `type` varchar(255) NOT NULL ,

PRIMARY KEY (`id`)
);


CREATE TABLE `Hotels`
(
 `id`       integer NOT NULL ,
 `admin_id` integer NOT NULL ,
 `name`     varchar(255) NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`admin_id`),
CONSTRAINT `FK_3` FOREIGN KEY `FK_1` (`admin_id`) REFERENCES `Admins` (`id`)
);
CREATE TABLE `Rooms`
(
 `id`           integer NOT NULL ,
 `hotel_id`     integer NOT NULL ,
 `size`         float NOT NULL ,
 `name`         varchar(255) NOT NULL ,
 `people_limit` integer NOT NULL ,
 `price`        float NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`hotel_id`),
CONSTRAINT `FK_5` FOREIGN KEY `FK_1` (`hotel_id`) REFERENCES `Hotels` (`id`)
);

CREATE TABLE `Features`
(
 `id`           integer NOT NULL ,
 `equipment_id` integer NOT NULL ,
 `room_id`      integer NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`equipment_id`),
CONSTRAINT `FK_8` FOREIGN KEY `FK_1` (`equipment_id`) REFERENCES `Equipment` (`id`),
KEY `FK_2` (`room_id`),
CONSTRAINT `FK_9` FOREIGN KEY `FK_2` (`room_id`) REFERENCES `Rooms` (`id`)
);


CREATE TABLE `Reservations`
(
 `id`      integer NOT NULL ,
 `room_id` integer NOT NULL ,
 `from`    timestamp NOT NULL ,
 `to`      timestamp NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`room_id`),
CONSTRAINT `FK_6` FOREIGN KEY `FK_1` (`room_id`) REFERENCES `Rooms` (`id`)
);



CREATE TABLE `Guests`
(
 `id`              integer NOT NULL ,
 `reservataion_id` integer NOT NULL ,
 `name`            varchar(255) NOT NULL ,
 `surname`         varchar(255) NOT NULL ,
 `id_number`       integer NOT NULL ,
 `age`             integer NOT NULL ,
 `email`           varchar(255) NULL ,
 `gender`          integer NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`reservataion_id`),
CONSTRAINT `FK_7` FOREIGN KEY `FK_1` (`reservataion_id`) REFERENCES `Reservations` (`id`)
);




CREATE TABLE `Settings`
(
 `id`        integer NOT NULL ,
 `admin_id`  integer NOT NULL ,
 `dark_mode` integer NOT NULL ,
 `currency`  integer NOT NULL ,


PRIMARY KEY (`id`),
KEY `FK_1` (`admin_id`),
CONSTRAINT `FK_1` FOREIGN KEY `FK_1` (`admin_id`) REFERENCES `Admins` (`id`)
);




CREATE TABLE `Statistics`
(
 `id`                     integer NOT NULL ,
 `hotel_id`               integer NOT NULL ,
 `income`                 float NOT NULL ,
 `completed_reservations` integer NOT NULL ,
 `canceled_reservations`  integer NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`hotel_id`),
CONSTRAINT `FK_4` FOREIGN KEY `FK_1` (`hotel_id`) REFERENCES `Hotels` (`id`)
);

CREATE TABLE `Tokens`
(
 `id`       integer NOT NULL ,
 `admin_id` integer NOT NULL ,
 `token`    varchar(255) NOT NULL ,
 `created`  timestamp NOT NULL ,
 `expires`  timestamp NOT NULL ,

PRIMARY KEY (`id`),
KEY `FK_1` (`admin_id`),
CONSTRAINT `FK_2` FOREIGN KEY `FK_1` (`admin_id`) REFERENCES `Admins` (`id`)
);
