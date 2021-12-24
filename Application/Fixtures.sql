

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at) VALUES ('501d6196-4270-445d-9c50-d4e4f450182c', 'First test post', 'This will turn out just great', '2021-12-24 14:13:50.171636-05');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body) VALUES ('e48cdf93-9bbd-4625-9755-42115a42950d', '501d6196-4270-445d-9c50-d4e4f450182c', 'Chai', 'this is first comment!!!!');
INSERT INTO public.comments (id, post_id, author, body) VALUES ('e7bf17ba-7ba6-467e-a545-b1d09f09d248', '501d6196-4270-445d-9c50-d4e4f450182c', 'Chai', 'second comment');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


