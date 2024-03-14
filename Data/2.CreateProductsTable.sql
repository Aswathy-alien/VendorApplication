create table products (
    id int unsigned auto_increment primary key,
    company_id int unsigned null,
    name varchar(255) not null,
    type varchar(255) null,
    description varchar(255) null,
    cloud_type varchar(255) not null,
    business_areas json null,
    modules json null,
    financial_services_client_types json null,
    additional_information longtext null,
    is_document_attached tinyint default 0 null,
    constraint id_UNIQUE unique (id),
    constraint name_UNIQUE unique (name),
    constraint fk_company_id foreign key (company_id) references companies (id)
);

create index company_id on products (company_id);