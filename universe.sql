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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    name character varying(30) NOT NULL,
    black_hole_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_water boolean,
    estimated_mass integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_water boolean,
    estimated_mass integer
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_water boolean,
    estimated_mass integer,
    moon_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_water boolean,
    estimated_mass integer
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    has_water boolean,
    estimated_mass integer,
    star_id integer NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('A', 1, 1, 1, 'dark', false, 203.5324, 400, false, 1000000);
INSERT INTO public.black_hole VALUES ('B', 2, 2, 2, 'dark', false, 203.1, 200, false, 1000000);
INSERT INTO public.black_hole VALUES ('C', 3, 3, 3, 'dark', false, 203.5324400, 300, false, 1000000);
INSERT INTO public.black_hole VALUES ('D', 4, 4, 4, 'dark', false, 203.1, 200, false, 1000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('TON618', 1, 1, 'biggest', false, 1034.5321, 500, false, 1000000);
INSERT INTO public.galaxy VALUES ('A', 2, 2, 'ellipse', false, 103.5321, 200, false, 1000000);
INSERT INTO public.galaxy VALUES ('B', 3, 3, 'ellipse', false, 103.5321, 200, false, 1000000);
INSERT INTO public.galaxy VALUES ('C', 4, 4, 'ellipse', false, 103.5321, 200, false, 1000000);
INSERT INTO public.galaxy VALUES ('D', 5, 5, 'ellipse', false, 103.5321, 200, false, 1000000);
INSERT INTO public.galaxy VALUES ('E', 6, 6, 'ellipse', false, 103.5321, 200, false, 1000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('A', 25, 'sphere', false, 203.5324, 400, false, 1000000, 41);
INSERT INTO public.moon VALUES ('B', 26, 'sphere', false, 203.1, 200, false, 1000000, 42);
INSERT INTO public.moon VALUES ('C', 27, 'sphere', false, 203.5324400, 300, false, 1000000, 43);
INSERT INTO public.moon VALUES ('D', 28, 'sphere', false, 203.1, 200, false, 1000000, 44);
INSERT INTO public.moon VALUES ('E', 29, 'sphere', false, 203.5324400, 300, false, 1000000, 45);
INSERT INTO public.moon VALUES ('F', 30, 'sphere', false, 203.1, 200, false, 1000000, 46);
INSERT INTO public.moon VALUES ('G', 31, 'sphere', false, 203.5324, 400, false, 1000000, 47);
INSERT INTO public.moon VALUES ('H', 32, 'sphere', false, 203.1, 200, false, 1000000, 48);
INSERT INTO public.moon VALUES ('I', 33, 'sphere', false, 203.5324400, 300, false, 1000000, 49);
INSERT INTO public.moon VALUES ('J', 34, 'sphere', false, 203.1, 200, false, 1000000, 50);
INSERT INTO public.moon VALUES ('K', 35, 'sphere', false, 203.5324400, 300, false, 1000000, 51);
INSERT INTO public.moon VALUES ('L', 36, 'sphere', false, 203.1, 200, false, 1000000, 52);
INSERT INTO public.moon VALUES ('M', 36, 'sphere', false, 203.5324, 400, false, 1000000, 53);
INSERT INTO public.moon VALUES ('N', 36, 'sphere', false, 203.1, 200, false, 1000000, 54);
INSERT INTO public.moon VALUES ('O', 36, 'sphere', false, 203.5324400, 300, false, 1000000, 55);
INSERT INTO public.moon VALUES ('P', 36, 'sphere', false, 203.1, 200, false, 1000000, 56);
INSERT INTO public.moon VALUES ('Q', 36, 'sphere', false, 203.5324400, 300, false, 1000000, 57);
INSERT INTO public.moon VALUES ('R', 36, 'sphere', false, 203.1, 200, false, 1000000, 58);
INSERT INTO public.moon VALUES ('S', 36, 'sphere', false, 203.5324400, 300, false, 1000000, 59);
INSERT INTO public.moon VALUES ('T', 36, 'sphere', false, 203.1, 200, false, 1000000, 60);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('A', 25, 1, 1, 'sphere', false, 203.5324, 400, false, 1000000);
INSERT INTO public.planet VALUES ('B', 26, 2, 2, 'sphere', false, 203.1, 200, false, 1000000);
INSERT INTO public.planet VALUES ('C', 27, 3, 3, 'sphere', false, 203.5324400, 300, false, 1000000);
INSERT INTO public.planet VALUES ('D', 28, 4, 4, 'sphere', false, 203.1, 200, false, 1000000);
INSERT INTO public.planet VALUES ('E', 29, 5, 5, 'sphere', false, 203.5324400, 300, false, 1000000);
INSERT INTO public.planet VALUES ('F', 30, 6, 6, 'sphere', false, 203.1, 200, false, 1000000);
INSERT INTO public.planet VALUES ('G', 31, 6, 7, 'sphere', false, 203.5324, 400, false, 1000000);
INSERT INTO public.planet VALUES ('H', 32, 6, 8, 'sphere', false, 203.1, 200, false, 1000000);
INSERT INTO public.planet VALUES ('I', 33, 6, 9, 'sphere', false, 203.5324400, 300, false, 1000000);
INSERT INTO public.planet VALUES ('J', 34, 6, 10, 'sphere', false, 203.1, 200, false, 1000000);
INSERT INTO public.planet VALUES ('K', 35, 6, 11, 'sphere', false, 203.5324400, 300, false, 1000000);
INSERT INTO public.planet VALUES ('L', 36, 6, 12, 'sphere', false, 203.1, 200, false, 1000000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('A', 1, 1, 'sphere', false, 203.5324, 400, false, 1000000, 1);
INSERT INTO public.star VALUES ('B', 2, 2, 'sphere', false, 203.1, 200, false, 1000000, 2);
INSERT INTO public.star VALUES ('C', 3, 3, 'sphere', false, 203.5324400, 300, false, 1000000, 3);
INSERT INTO public.star VALUES ('D', 4, 4, 'sphere', false, 203.1, 200, false, 1000000, 4);
INSERT INTO public.star VALUES ('E', 5, 5, 'sphere', false, 203.5324400, 300, false, 1000000, 5);
INSERT INTO public.star VALUES ('F', 6, 6, 'sphere', false, 203.1, 200, false, 1000000, 6);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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

