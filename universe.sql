--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: cute; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cute (
    cute_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    descr text,
    life boolean,
    sys boolean,
    dukha numeric(4,1) DEFAULT 0
);


ALTER TABLE public.cute OWNER TO freecodecamp;

--
-- Name: cute_cute_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cute_cute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cute_cute_id_seq OWNER TO freecodecamp;

--
-- Name: cute_cute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cute_cute_id_seq OWNED BY public.cute.cute_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    descr text,
    life boolean,
    blackhole boolean,
    dukha numeric(4,1) DEFAULT 0
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    descr text,
    life boolean,
    sys boolean,
    planet_id integer,
    dukha numeric(4,1) DEFAULT 0
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    descr text,
    life boolean,
    sys boolean,
    star_id integer,
    dukha numeric(4,1) DEFAULT 0
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance integer NOT NULL,
    descr text,
    life boolean,
    sys boolean,
    galaxy_id integer,
    dukha numeric(4,1) DEFAULT 0
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: cute cute_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cute ALTER COLUMN cute_id SET DEFAULT nextval('public.cute_cute_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cute; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cute VALUES (1, 'duk duk', 1, 2, 'dd', true, true, 0.0);
INSERT INTO public.cute VALUES (2, 'duk duk1', 1, 2, 'dd', true, true, 0.0);
INSERT INTO public.cute VALUES (3, 'duk duk3', 1, 2, 'dd', true, true, 0.0);
INSERT INTO public.cute VALUES (4, 'duk duk4', 1, 2, 'dd', true, true, 0.0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'ONE', 1, 2, 'GOOD', true, true, 0.0);
INSERT INTO public.galaxy VALUES (2, 'Two', 1, 2, '1GOOD', true, true, 0.0);
INSERT INTO public.galaxy VALUES (3, 'ry', 44, 1, 'close ', false, false, 0.0);
INSERT INTO public.galaxy VALUES (4, 'dMercury', 44, 1, 'close ', false, false, 0.0);
INSERT INTO public.galaxy VALUES (5, 'Mdfdercury', 44, 1, 'close ', false, false, 0.0);
INSERT INTO public.galaxy VALUES (6, 'ryd', 44, 1, 'close ', false, false, 0.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, '1Two', 1, 2, '1GOOD', true, true, 1, 0.0);
INSERT INTO public.moon VALUES (2, 'Two', 1, 2, '1GOOD', true, true, 2, 0.0);
INSERT INTO public.moon VALUES (3, 'ry', 44, 1, 'close ', false, false, 3, 0.0);
INSERT INTO public.moon VALUES (4, 'dMercury', 44, 1, 'close ', false, false, 4, 0.0);
INSERT INTO public.moon VALUES (5, 'Mdfdercury', 44, 1, 'close ', false, false, 5, 0.0);
INSERT INTO public.moon VALUES (6, 'ryd', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (7, 'ry2d', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (8, 'rdfdyd', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (9, 'ryd1', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (10, 'ryd4', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (11, 'ry5d', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (12, 'ryd66', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (13, 'ryd661', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (14, 'ryd662', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (15, 'ryd663', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (16, 'ryd664', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (17, 'ryd665', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (18, 'ryd666', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (19, 'ryd667', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.moon VALUES (20, 'ryd6100', 44, 1, 'close ', false, false, 6, 0.0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, '1Two', 1, 2, '1GOOD', true, true, 1, 0.0);
INSERT INTO public.planet VALUES (2, 'Two', 1, 2, '1GOOD', true, true, 2, 0.0);
INSERT INTO public.planet VALUES (3, 'ry', 44, 1, 'close ', false, false, 3, 0.0);
INSERT INTO public.planet VALUES (4, 'dMercury', 44, 1, 'close ', false, false, 4, 0.0);
INSERT INTO public.planet VALUES (5, 'Mdfdercury', 44, 1, 'close ', false, false, 5, 0.0);
INSERT INTO public.planet VALUES (6, 'ryd', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.planet VALUES (7, 'ry2d', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.planet VALUES (8, 'rdfdyd', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.planet VALUES (9, 'ryd1', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.planet VALUES (10, 'ryd4', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.planet VALUES (11, 'ry5d', 44, 1, 'close ', false, false, 6, 0.0);
INSERT INTO public.planet VALUES (12, 'ryd66', 44, 1, 'close ', false, false, 6, 0.0);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, '1Two', 1, 2, '1GOOD', true, true, 1, 0.0);
INSERT INTO public.star VALUES (2, 'Two', 1, 2, '1GOOD', true, true, 2, 0.0);
INSERT INTO public.star VALUES (3, 'ry', 44, 1, 'close ', false, false, 3, 0.0);
INSERT INTO public.star VALUES (4, 'dMercury', 44, 1, 'close ', false, false, 4, 0.0);
INSERT INTO public.star VALUES (5, 'Mdfdercury', 44, 1, 'close ', false, false, 5, 0.0);
INSERT INTO public.star VALUES (6, 'ryd', 44, 1, 'close ', false, false, 6, 0.0);


--
-- Name: cute_cute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cute_cute_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: cute cute_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cute
    ADD CONSTRAINT cute_name_key UNIQUE (name);


--
-- Name: cute cute_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cute
    ADD CONSTRAINT cute_pkey PRIMARY KEY (cute_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

