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
-- Name: sw; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sw (
    name character varying(20) NOT NULL,
    notable_person character varying(30),
    "exists" boolean NOT NULL,
    similar_to character varying(30),
    movie character varying(60) NOT NULL,
    sw_id integer NOT NULL
);


ALTER TABLE public.sw OWNER TO freecodecamp;

--
-- Name: fifth_table_sw_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_sw_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_sw_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_sw_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_sw_id_seq OWNED BY public.sw.sw_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    width_in_light_years integer NOT NULL,
    solar_systems text NOT NULL,
    biggest_star text,
    galaxy_id integer NOT NULL
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
    name character varying(50) NOT NULL,
    planet character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    has_life boolean,
    made_of_cheese boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    diameter integer NOT NULL,
    has_water boolean,
    has_life boolean,
    star character varying(50) NOT NULL,
    planet_id integer NOT NULL,
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
    name character varying(50) NOT NULL,
    diameter_in_million_km numeric NOT NULL,
    age_in_million_years numeric NOT NULL,
    orbiting_planets integer NOT NULL,
    galaxy text NOT NULL,
    star_id integer NOT NULL,
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: sw sw_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sw ALTER COLUMN sw_id SET DEFAULT nextval('public.fifth_table_sw_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 100000, '100-400 billion', 'UY Scuti', 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 220000, '1 trillion', 'Unknown', 2);
INSERT INTO public.galaxy VALUES ('Triangulum', 60000, 'Several billions', 'Unknown', 3);
INSERT INTO public.galaxy VALUES ('Messier 87', 120000, 'Billions', 'Unknown', 4);
INSERT INTO public.galaxy VALUES ('Sombrero', 50000, 'Billions', 'Unknown', 5);
INSERT INTO public.galaxy VALUES ('Whirlpool', 60000, 'Billions', 'Unknown', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', 'Earth', 1, false, false, 1);
INSERT INTO public.moon VALUES ('Phobos', 'Mars', 11, false, false, 2);
INSERT INTO public.moon VALUES ('Deimos', 'Mars', 12, false, false, 2);
INSERT INTO public.moon VALUES ('Io', 'Jupiter', 2, false, false, 3);
INSERT INTO public.moon VALUES ('Europa', 'Jupiter', 3, false, false, 3);
INSERT INTO public.moon VALUES ('Ganymede', 'Jupiter', 4, false, false, 3);
INSERT INTO public.moon VALUES ('Callisto', 'Jupiter', 5, false, false, 3);
INSERT INTO public.moon VALUES ('Titan', 'Saturn', 6, false, false, 4);
INSERT INTO public.moon VALUES ('Enceladus', 'Saturn', 7, false, false, 4);
INSERT INTO public.moon VALUES ('Mimas', 'Saturn', 8, false, false, 4);
INSERT INTO public.moon VALUES ('Hyperion', 'Saturn', 18, false, false, 4);
INSERT INTO public.moon VALUES ('Iapetus', 'Saturn', 19, false, false, 4);
INSERT INTO public.moon VALUES ('Rhea', 'Saturn', 20, false, false, 4);
INSERT INTO public.moon VALUES ('Triton', 'Neptune', 9, false, false, 7);
INSERT INTO public.moon VALUES ('Protheus', 'Neptune', 10, false, false, 7);
INSERT INTO public.moon VALUES ('Miranda', 'Uranus', 13, false, false, 8);
INSERT INTO public.moon VALUES ('Ariel', 'Uranus', 14, false, false, 8);
INSERT INTO public.moon VALUES ('Umbriel', 'Uranus', 15, false, false, 8);
INSERT INTO public.moon VALUES ('Titania', 'Uranus', 16, false, false, 8);
INSERT INTO public.moon VALUES ('Oberon', 'Uranus', 17, false, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 12742, true, true, 'Sun', 1, 1);
INSERT INTO public.planet VALUES ('Mars', 6779, true, false, 'Sun', 2, 1);
INSERT INTO public.planet VALUES ('Jupiter', 139820, true, false, 'Sun', 3, 1);
INSERT INTO public.planet VALUES ('Saturn', 116460, true, false, 'Sun', 4, 1);
INSERT INTO public.planet VALUES ('Venus', 12104, false, false, 'Sun', 5, 1);
INSERT INTO public.planet VALUES ('Mercury', 4880, false, false, 'Sun', 6, 1);
INSERT INTO public.planet VALUES ('Neptune', 49244, true, false, 'Sun', 7, 1);
INSERT INTO public.planet VALUES ('Uranus', 50724, true, false, 'Sun', 8, 1);
INSERT INTO public.planet VALUES ('TRAPPIST-1e', 6800, NULL, NULL, 'TRAPPIST-1', 9, 9);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 6800, NULL, NULL, 'Proxima Centauri', 10, 10);
INSERT INTO public.planet VALUES ('HD 209458 b(Osiris)', 140000, true, false, 'HD 209458', 12, 12);
INSERT INTO public.planet VALUES ('Gliese 581g', 10100, NULL, NULL, 'Gliese 581', 11, 11);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1.4, 4600, 8, 'Milky Way', 1, 1);
INSERT INTO public.star VALUES ('Sirius', 1.7, 200, 0, 'Milky Way', 2, 1);
INSERT INTO public.star VALUES ('TRAPPIST-1', 0.168, 7600, 7, 'Milky Way', 9, 1);
INSERT INTO public.star VALUES ('Proxima Centauri', 0.21, 4000, 1, 'Milky Way', 10, 1);
INSERT INTO public.star VALUES ('HD 209458', 1.68, 4000, 1, 'Milky Way', 12, 1);
INSERT INTO public.star VALUES ('Gliese 581', 0.434, 11000, 3, 'Milky Way', 11, 1);
INSERT INTO public.star VALUES ('Almach', 67, 14, 0, 'Andromeda', 3, 2);
INSERT INTO public.star VALUES ('Mu Andromedae', 1.6, 500, 0, 'Andromeda', 4, 2);
INSERT INTO public.star VALUES ('Delta Trianguli', 3.1, 100, 0, 'Triangulum', 5, 3);
INSERT INTO public.star VALUES ('Beta Trianguli', 3.2, 70, 0, 'Triangulum', 6, 3);
INSERT INTO public.star VALUES ('Eta Virgins', 3, 700, 0, 'Sombrero', 7, 5);
INSERT INTO public.star VALUES ('Zeta Virgins', 3, 6000, 0, 'Sombrero', 8, 5);


--
-- Data for Name: sw; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sw VALUES ('Tattooine', 'Anakin Skywalker', false, 'Jupiter', 'A New Hope', 1);
INSERT INTO public.sw VALUES ('Naboo', 'Padme Amidala', false, 'Earth', 'The Phantom Menace', 3);
INSERT INTO public.sw VALUES ('Hoth', '--', false, 'Neptune', 'The Empire Strikes Back', 2);


--
-- Name: fifth_table_sw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_sw_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: sw fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sw
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (sw_id);


--
-- Name: sw fifth_table_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sw
    ADD CONSTRAINT fifth_table_planet_key UNIQUE (name);


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

