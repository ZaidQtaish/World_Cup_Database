--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (193, 2018, 'Final', 775, 776, 4, 2);
INSERT INTO public.games VALUES (194, 2018, 'Third Place', 777, 778, 2, 0);
INSERT INTO public.games VALUES (195, 2018, 'Semi-Final', 776, 778, 2, 1);
INSERT INTO public.games VALUES (196, 2018, 'Semi-Final', 775, 777, 1, 0);
INSERT INTO public.games VALUES (197, 2018, 'Quarter-Final', 776, 784, 3, 2);
INSERT INTO public.games VALUES (198, 2018, 'Quarter-Final', 778, 786, 2, 0);
INSERT INTO public.games VALUES (199, 2018, 'Quarter-Final', 777, 788, 2, 1);
INSERT INTO public.games VALUES (200, 2018, 'Quarter-Final', 775, 790, 2, 0);
INSERT INTO public.games VALUES (201, 2018, 'Eighth-Final', 778, 792, 2, 1);
INSERT INTO public.games VALUES (202, 2018, 'Eighth-Final', 786, 794, 1, 0);
INSERT INTO public.games VALUES (203, 2018, 'Eighth-Final', 777, 796, 3, 2);
INSERT INTO public.games VALUES (204, 2018, 'Eighth-Final', 788, 798, 2, 0);
INSERT INTO public.games VALUES (205, 2018, 'Eighth-Final', 776, 800, 2, 1);
INSERT INTO public.games VALUES (206, 2018, 'Eighth-Final', 784, 802, 2, 1);
INSERT INTO public.games VALUES (207, 2018, 'Eighth-Final', 790, 804, 2, 1);
INSERT INTO public.games VALUES (208, 2018, 'Eighth-Final', 775, 806, 4, 3);
INSERT INTO public.games VALUES (209, 2014, 'Final', 807, 806, 1, 0);
INSERT INTO public.games VALUES (210, 2014, 'Third Place', 809, 788, 3, 0);
INSERT INTO public.games VALUES (211, 2014, 'Semi-Final', 806, 809, 1, 0);
INSERT INTO public.games VALUES (212, 2014, 'Semi-Final', 807, 788, 7, 1);
INSERT INTO public.games VALUES (213, 2014, 'Quarter-Final', 809, 816, 1, 0);
INSERT INTO public.games VALUES (214, 2014, 'Quarter-Final', 806, 777, 1, 0);
INSERT INTO public.games VALUES (215, 2014, 'Quarter-Final', 788, 792, 2, 1);
INSERT INTO public.games VALUES (216, 2014, 'Quarter-Final', 807, 775, 1, 0);
INSERT INTO public.games VALUES (217, 2014, 'Eighth-Final', 788, 824, 2, 1);
INSERT INTO public.games VALUES (218, 2014, 'Eighth-Final', 792, 790, 2, 0);
INSERT INTO public.games VALUES (219, 2014, 'Eighth-Final', 775, 828, 2, 0);
INSERT INTO public.games VALUES (220, 2014, 'Eighth-Final', 807, 830, 2, 1);
INSERT INTO public.games VALUES (221, 2014, 'Eighth-Final', 809, 798, 2, 1);
INSERT INTO public.games VALUES (222, 2014, 'Eighth-Final', 816, 834, 2, 1);
INSERT INTO public.games VALUES (223, 2014, 'Eighth-Final', 806, 794, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Eighth-Final', 777, 838, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (775, 'France');
INSERT INTO public.teams VALUES (776, 'Croatia');
INSERT INTO public.teams VALUES (777, 'Belgium');
INSERT INTO public.teams VALUES (778, 'England');
INSERT INTO public.teams VALUES (784, 'Russia');
INSERT INTO public.teams VALUES (786, 'Sweden');
INSERT INTO public.teams VALUES (788, 'Brazil');
INSERT INTO public.teams VALUES (790, 'Uruguay');
INSERT INTO public.teams VALUES (792, 'Colombia');
INSERT INTO public.teams VALUES (794, 'Switzerland');
INSERT INTO public.teams VALUES (796, 'Japan');
INSERT INTO public.teams VALUES (798, 'Mexico');
INSERT INTO public.teams VALUES (800, 'Denmark');
INSERT INTO public.teams VALUES (802, 'Spain');
INSERT INTO public.teams VALUES (804, 'Portugal');
INSERT INTO public.teams VALUES (806, 'Argentina');
INSERT INTO public.teams VALUES (807, 'Germany');
INSERT INTO public.teams VALUES (809, 'Netherlands');
INSERT INTO public.teams VALUES (816, 'Costa Rica');
INSERT INTO public.teams VALUES (824, 'Chile');
INSERT INTO public.teams VALUES (828, 'Nigeria');
INSERT INTO public.teams VALUES (830, 'Algeria');
INSERT INTO public.teams VALUES (834, 'Greece');
INSERT INTO public.teams VALUES (838, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 224, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 838, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

