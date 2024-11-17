--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_user_id_seq OWNER TO freecodecamp;

--
-- Name: games_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_user_id_seq OWNED BY public.games.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN user_id SET DEFAULT nextval('public.games_user_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (38, 62, 182);
INSERT INTO public.games VALUES (39, 62, 794);
INSERT INTO public.games VALUES (40, 63, 542);
INSERT INTO public.games VALUES (41, 63, 183);
INSERT INTO public.games VALUES (42, 62, 976);
INSERT INTO public.games VALUES (43, 62, 410);
INSERT INTO public.games VALUES (44, 62, 342);
INSERT INTO public.games VALUES (45, 64, 326);
INSERT INTO public.games VALUES (46, 64, 943);
INSERT INTO public.games VALUES (47, 65, 497);
INSERT INTO public.games VALUES (48, 65, 676);
INSERT INTO public.games VALUES (49, 64, 154);
INSERT INTO public.games VALUES (50, 64, 790);
INSERT INTO public.games VALUES (51, 64, 551);
INSERT INTO public.games VALUES (52, 53, 3);
INSERT INTO public.games VALUES (53, 66, 606);
INSERT INTO public.games VALUES (54, 66, 580);
INSERT INTO public.games VALUES (55, 67, 12);
INSERT INTO public.games VALUES (56, 67, 583);
INSERT INTO public.games VALUES (57, 66, 953);
INSERT INTO public.games VALUES (58, 66, 771);
INSERT INTO public.games VALUES (59, 66, 790);
INSERT INTO public.games VALUES (60, 68, 660);
INSERT INTO public.games VALUES (61, 68, 383);
INSERT INTO public.games VALUES (62, 69, 358);
INSERT INTO public.games VALUES (63, 69, 282);
INSERT INTO public.games VALUES (64, 68, 500);
INSERT INTO public.games VALUES (65, 68, 696);
INSERT INTO public.games VALUES (66, 68, 216);
INSERT INTO public.games VALUES (67, 70, 540);
INSERT INTO public.games VALUES (68, 70, 802);
INSERT INTO public.games VALUES (69, 71, 758);
INSERT INTO public.games VALUES (70, 71, 12);
INSERT INTO public.games VALUES (71, 70, 427);
INSERT INTO public.games VALUES (72, 70, 237);
INSERT INTO public.games VALUES (73, 70, 593);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (53, 'Dia');
INSERT INTO public.users VALUES (54, 'user_1731849513601');
INSERT INTO public.users VALUES (55, 'user_1731849513600');
INSERT INTO public.users VALUES (56, 'user_1731849527208');
INSERT INTO public.users VALUES (57, 'user_1731849527207');
INSERT INTO public.users VALUES (58, 'user_1731849563683');
INSERT INTO public.users VALUES (59, 'user_1731849563682');
INSERT INTO public.users VALUES (60, 'user_1731849576797');
INSERT INTO public.users VALUES (61, 'user_1731849576796');
INSERT INTO public.users VALUES (62, 'user_1731849668516');
INSERT INTO public.users VALUES (63, 'user_1731849668515');
INSERT INTO public.users VALUES (64, 'user_1731849694935');
INSERT INTO public.users VALUES (65, 'user_1731849694934');
INSERT INTO public.users VALUES (66, 'user_1731849752433');
INSERT INTO public.users VALUES (67, 'user_1731849752432');
INSERT INTO public.users VALUES (68, 'user_1731849772759');
INSERT INTO public.users VALUES (69, 'user_1731849772758');
INSERT INTO public.users VALUES (70, 'user_1731849783638');
INSERT INTO public.users VALUES (71, 'user_1731849783637');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: games_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_user_id_seq', 23, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 71, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

