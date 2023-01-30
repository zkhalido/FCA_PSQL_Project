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
-- Name: animal; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.animal (
    animal_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    quotes character varying(30)
);


ALTER TABLE public.animal OWNER TO freecodecamp;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.animal_animal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animal_animal_id_seq OWNER TO freecodecamp;

--
-- Name: animal_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.animal_animal_id_seq OWNED BY public.animal.animal_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    radius integer,
    mythology text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxyid_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxyid_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    color character varying(15),
    density numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moonid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moonid_seq OWNER TO freecodecamp;

--
-- Name: moon_moonid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moonid_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    atmosphere boolean,
    density numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planetid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planetid_seq OWNER TO freecodecamp;

--
-- Name: planet_planetid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planetid_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    temperature numeric,
    color character varying(15),
    variable_star boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.star_id;


--
-- Name: animal animal_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal ALTER COLUMN animal_id SET DEFAULT nextval('public.animal_animal_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxyid_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moonid_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planetid_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.animal VALUES (1, 'Human', 1, NULL);
INSERT INTO public.animal VALUES (2, 'Cat', 1, NULL);
INSERT INTO public.animal VALUES (3, 'Dog', 1, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 14, 52850, 'Created by Heracles when he was a baby');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10, 110000, 'Daughter of the King Cepheus and Queen Cassiopeia');
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 400, 30000, '');
INSERT INTO public.galaxy VALUES (4, 'Condor', 5, 26000, 'Tidally disturbed by the smaller lenticular galaxy IC 4970');
INSERT INTO public.galaxy VALUES (5, 'Eye if Sauron', 13, 124000, 'Named after the depiction of Sauron in The Lorn of the Rings');
INSERT INTO public.galaxy VALUES (6, 'Medusa Merger', 7003, 100000, 'Gas rich region');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Our moon', 10, 'Gray', 10, 1);
INSERT INTO public.moon VALUES (2, 'BV546', 11, 'Blue', 9, 3);
INSERT INTO public.moon VALUES (3, 'BV547', 11, 'Blue', 9, 2);
INSERT INTO public.moon VALUES (4, 'BV548', 11, 'Yellow', 9, 4);
INSERT INTO public.moon VALUES (5, 'BV549', 11, 'Gray', 9, 3);
INSERT INTO public.moon VALUES (6, 'BV550', 12, 'Gray', 9, 5);
INSERT INTO public.moon VALUES (7, 'BV551', 15, 'Gray', 15, 6);
INSERT INTO public.moon VALUES (8, 'BV552', 12, 'Gray', 13, 7);
INSERT INTO public.moon VALUES (9, 'BV553', 8, 'White', 13, 8);
INSERT INTO public.moon VALUES (10, 'BV554', 2, 'Black', 10, 9);
INSERT INTO public.moon VALUES (11, 'BV555', 4, 'Gray', 10, 10);
INSERT INTO public.moon VALUES (12, 'BV556', 3, 'Black', 8, 11);
INSERT INTO public.moon VALUES (13, 'BV557', 2, 'Black', 8, 10);
INSERT INTO public.moon VALUES (14, 'BV558', 15, 'Black', 9, 3);
INSERT INTO public.moon VALUES (15, 'BV559', 8, 'Black', 15, 5);
INSERT INTO public.moon VALUES (16, 'BV560', 2, 'Black', 17, 6);
INSERT INTO public.moon VALUES (18, 'BV561', 2, 'Black', 17, 6);
INSERT INTO public.moon VALUES (19, 'BV562', 2, 'Black', 17, 6);
INSERT INTO public.moon VALUES (20, 'BV563', 2, 'Black', 17, 6);
INSERT INTO public.moon VALUES (22, 'BV23', 142, 'Grayk', 907, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'EARTH', 13, true, 5.51, 8);
INSERT INTO public.planet VALUES (2, 'TC2341', 16, false, 4.89, 1);
INSERT INTO public.planet VALUES (3, 'TC2342', 11, false, 3.45, 2);
INSERT INTO public.planet VALUES (4, 'TC2343', 11, false, 3.45, 2);
INSERT INTO public.planet VALUES (5, 'TC2344', 11, false, 3.45, 3);
INSERT INTO public.planet VALUES (6, 'TC2345', 11, false, 3.45, 4);
INSERT INTO public.planet VALUES (7, 'TC2347', 11, false, 3.45, 6);
INSERT INTO public.planet VALUES (8, 'TC2348', 11, true, 3.45, 7);
INSERT INTO public.planet VALUES (9, 'Mercury', 15, true, 2.5, 8);
INSERT INTO public.planet VALUES (10, 'Venus', 15, true, 5.6, 8);
INSERT INTO public.planet VALUES (11, 'Mars', 10, true, 8.1, 8);
INSERT INTO public.planet VALUES (12, 'mr435', 9, true, 9.6, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 10, 3500, 'Orange', true, 1);
INSERT INTO public.star VALUES (2, 'Vega', 455, 9602, 'Blue/White', false, 1);
INSERT INTO public.star VALUES (3, 'AEGA', 441, 9702, 'Purple', false, 2);
INSERT INTO public.star VALUES (4, 'Instraud', 278, 6604, 'White', true, 2);
INSERT INTO public.star VALUES (5, 'Helsin', 15, 430, 'RED', true, 3);
INSERT INTO public.star VALUES (6, 'Iregon', 745, 9940, 'White', false, 4);
INSERT INTO public.star VALUES (7, 'Targa', 48, 10468, 'Orange', false, 5);
INSERT INTO public.star VALUES (8, 'Sun', 87, 45154, 'Orange', false, 1);


--
-- Name: animal_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.animal_animal_id_seq', 3, true);


--
-- Name: galaxy_galaxyid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxyid_seq', 6, true);


--
-- Name: moon_moonid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moonid_seq', 22, true);


--
-- Name: planet_planetid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planetid_seq', 12, true);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 8, true);


--
-- Name: animal animal_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animal_pkey PRIMARY KEY (animal_id);


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
-- Name: animal uq_animal_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT uq_animal_name UNIQUE (name);


--
-- Name: animal fk_animal_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT fk_animal_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

