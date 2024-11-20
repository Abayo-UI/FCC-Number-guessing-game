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
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
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
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (227, 73, 319);
INSERT INTO public.games VALUES (228, 73, 591);
INSERT INTO public.games VALUES (229, 74, 690);
INSERT INTO public.games VALUES (230, 73, 107);
INSERT INTO public.games VALUES (231, 73, 527);
INSERT INTO public.games VALUES (232, 75, 109);
INSERT INTO public.games VALUES (233, 75, 556);
INSERT INTO public.games VALUES (234, 76, 556);
INSERT INTO public.games VALUES (235, 76, 491);
INSERT INTO public.games VALUES (236, 75, 174);
INSERT INTO public.games VALUES (237, 75, 312);
INSERT INTO public.games VALUES (238, 75, 284);
INSERT INTO public.games VALUES (239, 77, 254);
INSERT INTO public.games VALUES (240, 77, 418);
INSERT INTO public.games VALUES (241, 78, 509);
INSERT INTO public.games VALUES (242, 78, 958);
INSERT INTO public.games VALUES (243, 77, 322);
INSERT INTO public.games VALUES (244, 77, 140);
INSERT INTO public.games VALUES (245, 77, 907);
INSERT INTO public.games VALUES (246, 80, 783);
INSERT INTO public.games VALUES (247, 80, 966);
INSERT INTO public.games VALUES (248, 81, 802);
INSERT INTO public.games VALUES (249, 81, 713);
INSERT INTO public.games VALUES (250, 80, 908);
INSERT INTO public.games VALUES (251, 80, 586);
INSERT INTO public.games VALUES (252, 80, 570);
INSERT INTO public.games VALUES (253, 82, 247);
INSERT INTO public.games VALUES (254, 82, 174);
INSERT INTO public.games VALUES (255, 83, 701);
INSERT INTO public.games VALUES (256, 83, 294);
INSERT INTO public.games VALUES (257, 82, 619);
INSERT INTO public.games VALUES (258, 82, 649);
INSERT INTO public.games VALUES (259, 82, 540);
INSERT INTO public.games VALUES (260, 85, 304);
INSERT INTO public.games VALUES (261, 85, 165);
INSERT INTO public.games VALUES (262, 86, 894);
INSERT INTO public.games VALUES (263, 86, 685);
INSERT INTO public.games VALUES (264, 85, 382);
INSERT INTO public.games VALUES (265, 85, 725);
INSERT INTO public.games VALUES (266, 85, 959);
INSERT INTO public.games VALUES (267, 87, 118);
INSERT INTO public.games VALUES (268, 87, 240);
INSERT INTO public.games VALUES (269, 88, 376);
INSERT INTO public.games VALUES (270, 88, 170);
INSERT INTO public.games VALUES (271, 87, 436);
INSERT INTO public.games VALUES (272, 87, 580);
INSERT INTO public.games VALUES (273, 87, 397);
INSERT INTO public.games VALUES (274, 89, 57);
INSERT INTO public.games VALUES (275, 89, 956);
INSERT INTO public.games VALUES (276, 90, 102);
INSERT INTO public.games VALUES (277, 90, 822);
INSERT INTO public.games VALUES (278, 89, 431);
INSERT INTO public.games VALUES (279, 89, 398);
INSERT INTO public.games VALUES (280, 89, 141);
INSERT INTO public.games VALUES (281, 91, 758);
INSERT INTO public.games VALUES (282, 91, 974);
INSERT INTO public.games VALUES (283, 92, 713);
INSERT INTO public.games VALUES (284, 92, 780);
INSERT INTO public.games VALUES (285, 91, 907);
INSERT INTO public.games VALUES (286, 91, 725);
INSERT INTO public.games VALUES (287, 91, 366);
INSERT INTO public.games VALUES (288, 93, 515);
INSERT INTO public.games VALUES (289, 93, 154);
INSERT INTO public.games VALUES (290, 94, 642);
INSERT INTO public.games VALUES (291, 94, 266);
INSERT INTO public.games VALUES (292, 93, 911);
INSERT INTO public.games VALUES (293, 93, 220);
INSERT INTO public.games VALUES (294, 93, 868);
INSERT INTO public.games VALUES (295, 95, 179);
INSERT INTO public.games VALUES (296, 95, 340);
INSERT INTO public.games VALUES (297, 96, 887);
INSERT INTO public.games VALUES (298, 96, 369);
INSERT INTO public.games VALUES (299, 95, 84);
INSERT INTO public.games VALUES (300, 95, 187);
INSERT INTO public.games VALUES (301, 95, 824);
INSERT INTO public.games VALUES (302, 97, 300);
INSERT INTO public.games VALUES (303, 97, 661);
INSERT INTO public.games VALUES (304, 98, 297);
INSERT INTO public.games VALUES (305, 98, 330);
INSERT INTO public.games VALUES (306, 97, 690);
INSERT INTO public.games VALUES (307, 97, 321);
INSERT INTO public.games VALUES (308, 97, 354);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (73, 'user_1678936134195');
INSERT INTO public.users VALUES (74, 'user_1678936134194');
INSERT INTO public.users VALUES (75, 'user_1732120793931');
INSERT INTO public.users VALUES (76, 'user_1732120793930');
INSERT INTO public.users VALUES (77, 'user_1732121214180');
INSERT INTO public.users VALUES (78, 'user_1732121214179');
INSERT INTO public.users VALUES (79, 'Leslie');
INSERT INTO public.users VALUES (80, 'user_1732121768919');
INSERT INTO public.users VALUES (81, 'user_1732121768918');
INSERT INTO public.users VALUES (82, 'user_1732121806882');
INSERT INTO public.users VALUES (83, 'user_1732121806881');
INSERT INTO public.users VALUES (84, 'leslie');
INSERT INTO public.users VALUES (85, 'user_1732121987912');
INSERT INTO public.users VALUES (86, 'user_1732121987911');
INSERT INTO public.users VALUES (87, 'user_1732122150190');
INSERT INTO public.users VALUES (88, 'user_1732122150189');
INSERT INTO public.users VALUES (89, 'user_1732122226194');
INSERT INTO public.users VALUES (90, 'user_1732122226193');
INSERT INTO public.users VALUES (91, 'user_1732122354969');
INSERT INTO public.users VALUES (92, 'user_1732122354968');
INSERT INTO public.users VALUES (93, 'user_1732122399199');
INSERT INTO public.users VALUES (94, 'user_1732122399198');
INSERT INTO public.users VALUES (95, 'user_1732122450485');
INSERT INTO public.users VALUES (96, 'user_1732122450484');
INSERT INTO public.users VALUES (97, 'user_1732122468846');
INSERT INTO public.users VALUES (98, 'user_1732122468845');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 308, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 98, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

