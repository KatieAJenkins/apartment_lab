DROP TABLE IF EXISTS

CREATE TABLE movies (
  id serial,
  title text,
  duration integer,
  rating varchar(10),
  genre varchar(4),
  is_3d boolean NOT NULL,
  release_at timestamp with time zone,
  score numeric(3,1)
);
