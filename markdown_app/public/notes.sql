create table notes
(
    id           uuid      default uuid_generate_v4() not null
        primary key,
    parent_id    uuid
        references notes,
    user_id      uuid                                 not null
        references users,
    title        text,
    content      text,
    is_published boolean   default false              not null,
    created_at   timestamp default now(),
    updated_at   timestamp default now()
);

alter table notes
    owner to postgres;

