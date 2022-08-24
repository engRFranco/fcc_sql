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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(20,0),
    age_in_millions_of_years integer,
    multiverse_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,0),
    age_in_millions_of_years integer,
    planet_id integer
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
-- Name: multiverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.multiverse (
    multiverse_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.multiverse OWNER TO freecodecamp;

--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.multiverse_multiverse_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.multiverse_multiverse_id_seq OWNER TO freecodecamp;

--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.multiverse_multiverse_id_seq OWNED BY public.multiverse.multiverse_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,0),
    age_in_millions_of_years integer,
    star_id integer
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
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric(4,0),
    age_in_millions_of_years integer,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: multiverse multiverse_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse ALTER COLUMN multiverse_id SET DEFAULT nextval('public.multiverse_multiverse_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way Galaxy', 'the galaxy that includes our Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye', true, NULL, 26, 12600, 1);
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 'Andromeda Nebula, (catalog numbers NGC 224 and M31), great spiral galaxy in the constellation Andromeda, the nearest large galaxy. The Andromeda Galaxy is one of the few visible to the unaided eye, appearing as a milky blur.', false, NULL, 2480000, NULL, 1);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf Galaxy', ' member of the Local Group of galaxies (the group that includes the Milky Way Galaxy) named after the constellation Canis Major, in which it appears to lie. It was discovered in 2003 by a team of astronomers from France, Italy, Australia, and the United Kingdom.', false, NULL, 25000, NULL, 1);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', 'most powerful cosmic source of radio waves known, lying in the northern constellation Cygnus about 500,000,000 light-years (4.8 × 1021 km) from Earth. It has the appearance of a double galaxy.', false, NULL, 500000000, NULL, 1);
INSERT INTO public.galaxy VALUES (6, 'Maffei I', 'Maffei 1 is a large elliptical galaxy. At about 9,800,000 light-years’ distance, it is part of the nearest group of galaxies to the Local Group.', false, NULL, 9800000, NULL, 1);
INSERT INTO public.galaxy VALUES (7, 'Maffei II', 'Maffei 1 is a large spiral galaxy. At about 9,800,000 light-years’ distance, it is part of the nearest group of galaxies to the Local Group.', false, NULL, 9800000, NULL, 1);
INSERT INTO public.galaxy VALUES (8, 'Magellanic Clouds', ' either of two satellite galaxies of the Milky Way Galaxy, the vast star system of which Earth is a minor component. These companion galaxies were named for the Portuguese navigator Ferdinand Magellan, whose crew discovered them during the first voyage around the world (1519–22).', false, NULL, 160000, NULL, 1);
INSERT INTO public.galaxy VALUES (9, 'Virgo A', 'M87, in full Messier 87, also called Virgo A or NGC4486, giant elliptical galaxy in the constellation Virgo whose nucleus contains a black hole, the first ever to be directly imaged. M87 is the most powerful known source of radio energy among the thousands of galactic systems constituting the so-called Virgo Cluster.', false, NULL, 55000000, NULL, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'Our moon', false, true, 10, 10, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Phobos is a bit larger than Deimos, and orbits only 3,700 miles (6,000 kilometers) above the Martian surface', false, true, 10, 10, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Deimos takes 30 hours for each orbit.', false, true, 10, 10, 4);
INSERT INTO public.moon VALUES (4, 'One', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (5, 'two', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (6, 'Três', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (7, 'Fier', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (8, 'Funf', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Ein', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (10, 'Bier', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'Bitte', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (12, 'Una', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (13, 'Cerveza', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (14, 'Por', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Favor', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (19, 'oi', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (20, 'tchau', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (21, 'télogo', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (22, 'quase', NULL, NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (23, 'lá', NULL, NULL, NULL, NULL, NULL, 10);


--
-- Data for Name: multiverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.multiverse VALUES (1, 'Original Universe', 'Our universe as we know it');
INSERT INTO public.multiverse VALUES (3, 'marvel multiverse', 'almost an inception inst''t it?');
INSERT INTO public.multiverse VALUES (4, 'bored', 'bored');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The closest planet to the sun', false, true, 10, 10, 4);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the sun', false, true, 10, 10, 4);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our beloved blue dot', false, true, 0, 10, 4);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars, Earth''s outer neighbor, is the fourth planet from the Sun. Mars'' bright appearance and reddish color stand out in the night sky. Impressive surface features such as enormous volcanoes and valleys are frequently obscured by huge dust storms.', false, true, 0, 10, 4);
INSERT INTO public.planet VALUES (6, 'Jupyter', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (7, 'Saturn', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (8, 'Uranus', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (10, 'New one', NULL, NULL, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (11, 'Undiscovered one', NULL, NULL, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (18, 'meh', NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (27, 'impossible', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Sun', 'Our favorite star', false, true, 10, 10, 2);
INSERT INTO public.star VALUES (5, 'Aquila', 'not our favorite star', false, true, 10, 10, 2);
INSERT INTO public.star VALUES (6, 'Cygnus', 'one of our favorite star', false, true, 10, 10, 2);
INSERT INTO public.star VALUES (7, 'Hercules', 'mehh', false, true, 10, 10, 2);
INSERT INTO public.star VALUES (8, 'Lyra', 'mehh', false, true, 10, 10, 2);
INSERT INTO public.star VALUES (9, 'Ophiuchus', 'mehh', false, true, 10, 10, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: multiverse_multiverse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.multiverse_multiverse_id_seq', 4, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 28, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: multiverse multiverse_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_name_key UNIQUE (name);


--
-- Name: multiverse multiverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_pkey PRIMARY KEY (multiverse_id);


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
-- Name: galaxy galaxy_multiverse_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_multiverse_id_fkey FOREIGN KEY (multiverse_id) REFERENCES public.multiverse(multiverse_id);


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
