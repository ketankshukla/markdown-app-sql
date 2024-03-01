create table users
(
    id         uuid      default uuid_generate_v4() not null
        primary key,
    username   citext                               not null
        unique,
    password   text,
    created_at timestamp default now(),
    updated_at timestamp default now()
);

alter table users
    owner to postgres;

