drop table if exists diapers
drop table if exists website
drop table if exists manufacturer

CREATE TABLE "diapers" (
	"diaper_id" Serial   NOT NULL,
	"title" varchar(200)   NOT NULL,
	"price" decimal,
	"reviews" decimal,
	"website_id" int,
	"manufacturer_id" int,
	"last_updated" timestamp default localtimestamp   NOT NULL,
    CONSTRAINT "pk_diapers" PRIMARY KEY (
        "diaper_id"
     )
);

CREATE TABLE "website" (
    "website_id" Serial NOT NULL,
    "website" varchar(50),
    "last_updated" timestamp default localtimestamp NOT NULL,
    CONSTRAINT "pk_websites" PRIMARY KEY (
        "website_id"
     )
);

CREATE TABLE "manufacturer" (
    "manufacturer_id" Serial NOT NULL,
    "manufacturer" varchar(50),
    "last_updated" timestamp default localtimestamp NOT NULL,
    CONSTRAINT "pk_manufacturer" PRIMARY KEY (
        "manufacturer_id"
     )
);