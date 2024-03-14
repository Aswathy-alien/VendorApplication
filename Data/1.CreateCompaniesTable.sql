create table companies (
    id int unsigned auto_increment primary key,
    name varchar(255) not null,
    website longtext null,
    established_year varchar(10) default '1964' not null,
    location_countries json null,
    location_cities json null,
    contact_telephone json null,
    address json null,
    employee_count varchar(255) null,
    has_internal_professional_services tinyint null,
    last_demo_date date null,
    last_reviewed_date date null,
    constraint id_UNIQUE unique (id),
    constraint name_UNIQUE unique (name)
);