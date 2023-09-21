--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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

DROP DATABASE IF EXISTS "test-technique-gamma-software";
--
-- Name: test-technique-gamma-software; Type: DATABASE; Schema: -; Owner: arthur.jacquemin
--

CREATE DATABASE "test-technique-gamma-software" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'fr_FR.UTF8';


ALTER DATABASE "test-technique-gamma-software" OWNER TO "arthur.jacquemin";

\connect -reuse-previous=on "dbname='test-technique-gamma-software'"

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
-- Name: band; Type: TABLE; Schema: public; Owner: arthur.jacquemin
--

CREATE TABLE public.band (
    id integer NOT NULL,
    country_id integer NOT NULL,
    city_id integer NOT NULL,
    genre_id integer,
    birthdate integer NOT NULL,
    breakup integer NOT NULL,
    founders character varying(255) DEFAULT NULL::character varying,
    members integer,
    presentation text NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.band OWNER TO "arthur.jacquemin";

--
-- Name: band_id_seq; Type: SEQUENCE; Schema: public; Owner: arthur.jacquemin
--

CREATE SEQUENCE public.band_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.band_id_seq OWNER TO "arthur.jacquemin";

--
-- Name: city; Type: TABLE; Schema: public; Owner: arthur.jacquemin
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.city OWNER TO "arthur.jacquemin";

--
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: arthur.jacquemin
--

CREATE SEQUENCE public.city_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_id_seq OWNER TO "arthur.jacquemin";

--
-- Name: country; Type: TABLE; Schema: public; Owner: arthur.jacquemin
--

CREATE TABLE public.country (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.country OWNER TO "arthur.jacquemin";

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: arthur.jacquemin
--

CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_id_seq OWNER TO "arthur.jacquemin";

--
-- Name: doctrine_migration_versions; Type: TABLE; Schema: public; Owner: arthur.jacquemin
--

CREATE TABLE public.doctrine_migration_versions (
    version character varying(191) NOT NULL,
    executed_at timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    execution_time integer
);


ALTER TABLE public.doctrine_migration_versions OWNER TO "arthur.jacquemin";

--
-- Name: genre; Type: TABLE; Schema: public; Owner: arthur.jacquemin
--

CREATE TABLE public.genre (
    id integer NOT NULL,
    name character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.genre OWNER TO "arthur.jacquemin";

--
-- Name: genre_id_seq; Type: SEQUENCE; Schema: public; Owner: arthur.jacquemin
--

CREATE SEQUENCE public.genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genre_id_seq OWNER TO "arthur.jacquemin";

--
-- Data for Name: band; Type: TABLE DATA; Schema: public; Owner: arthur.jacquemin
--

INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (21, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (22, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (23, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (24, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (25, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (26, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (27, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (81, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (82, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (83, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (84, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (85, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (86, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (87, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (88, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (89, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (90, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (91, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (92, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (93, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (94, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (95, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (96, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (97, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (98, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (99, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (100, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (28, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (29, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (30, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (31, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (32, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (33, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (34, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (35, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (36, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (37, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (38, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (39, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (40, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (41, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (42, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (43, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (44, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (45, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (46, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (47, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (48, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (49, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (50, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (51, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (52, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (53, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (54, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (55, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (56, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (57, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (58, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (59, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (60, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (61, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (62, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (63, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (64, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (65, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (66, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (67, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (68, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (69, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (70, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (71, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (72, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (73, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (74, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (75, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (76, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (77, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (78, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (79, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (80, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (101, 5, 10, 6, 0, 0, 'Fondateurs', 0, 'Présentation', 'Nom du groupe');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (102, 6, 11, NULL, 1960, 1970, 'John Lennon', 4, 'The Beatles [ðə ˈbiːtəlz] est un quatuor musical britannique originaire de Liverpool, en Angleterre. Le noyau du groupe se forme avec les Quarrymen fondés ...', 'The Beatles');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (103, 7, 12, 7, 1981, 0, 'Nicola Sirkis et Dominique Nicolas', 5, 'Indochine est un groupe de pop rock français originaire de Paris, formé par Nicola Sirkis et Dominique Nicolas en 1981. Le groupe est issu du courant new wave', 'Indochine');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (104, 7, 13, 8, 1980, 2010, 'Bertrand Cantat', 4, 'Noir Désir est un groupe de rock français, originaire de Bordeaux, en Gironde. Formé dans les années 1980, et dissout en 2010, il se compose de Bertrand Cantat, Denis Barthe, Serge Teyssot-Gay et Frédéric Vidalenc remplacé par Jean-Paul Roy à partir de 1996', 'Noir Désir');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (105, 8, 14, 9, 1987, 1994, 'Kurt Cobain', 3, 'Nirvana est un groupe de grunge américain, originaire d''Aberdeen, dans l''État de Washington, formé en 1987 par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic', 'Nirvana');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (106, 6, 15, 8, 1968, 1980, 'Jimmy Page', 0, 'Led Zeppelin [lɛd ˈzɛpələn] est un groupe britannique de rock, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page, avec Robert Plant, John Paul Jones et John Bonham, et dissout à la suite de la mort de ce dernier, en 1980', 'Led Zeppelin');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (107, 6, 16, 8, 1980, 0, NULL, 3, 'Depeche Mode est un groupe britannique de new wave et rock alternatif, originaire de Basildon, dans l''Essex, en Angleterre. Formé en 1980, le groupe apparait au sein du courant de la synthpop et devient rapidement influent et populaire sur la scène internationale. Son nom provient d''un magazine français, Dépêche Mode', 'Depeche Mode');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (108, 7, 17, 8, 1976, 1986, NULL, 4, 'Téléphone est un groupe de rock français. Il est formé le 12 novembre 1976 et séparé le 21 avril 1986. Composé de Jean-Louis Aubert, Louis Bertignac, Corine Marienneau et Richard Kolinka, il connaît un énorme succès dès ses débuts avec plusieurs tubes et des tournées très populaires', 'Téléphone');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (109, 6, 18, 10, 1987, 0, NULL, 0, 'Massive Attack est un groupe musical britannique, originaire de Bristol, précurseur de la musique trip hop. Il se compose, à l''origine, de Robert Del Naja, Grant Marshall et Andrew Vowles', 'Massive Attack');
INSERT INTO public.band (id, country_id, city_id, genre_id, birthdate, breakup, founders, members, presentation, name) VALUES (110, 6, 15, 8, 1964, 2014, 'Syd Barrett,', 3, 'Pink Floyd [pɪŋk flɔɪd] est un groupe britannique de rock originaire de Londres. Le groupe débute avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et représentant majeur de ces styles musicaux.', 'Pink Floyd');


--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: arthur.jacquemin
--

INSERT INTO public.city (id, name) VALUES (10, 'Ville');
INSERT INTO public.city (id, name) VALUES (11, 'Liverpool');
INSERT INTO public.city (id, name) VALUES (12, 'paris');
INSERT INTO public.city (id, name) VALUES (13, 'bordeaux');
INSERT INTO public.city (id, name) VALUES (14, 'Aberdeen');
INSERT INTO public.city (id, name) VALUES (15, 'Londres');
INSERT INTO public.city (id, name) VALUES (16, 'Basildon');
INSERT INTO public.city (id, name) VALUES (17, 'Paris');
INSERT INTO public.city (id, name) VALUES (18, 'bristol');


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: arthur.jacquemin
--

INSERT INTO public.country (id, name) VALUES (5, 'Origine');
INSERT INTO public.country (id, name) VALUES (6, 'Royaume-Uni ');
INSERT INTO public.country (id, name) VALUES (7, 'France');
INSERT INTO public.country (id, name) VALUES (8, 'Etats-unis');


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: arthur.jacquemin
--

INSERT INTO public.doctrine_migration_versions (version, executed_at, execution_time) VALUES ('DoctrineMigrations\Version20230919160728', '2023-09-19 16:14:16', 30);
INSERT INTO public.doctrine_migration_versions (version, executed_at, execution_time) VALUES ('DoctrineMigrations\Version20230919171034', '2023-09-19 17:10:48', 6);


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: arthur.jacquemin
--

INSERT INTO public.genre (id, name) VALUES (6, 'Courant musical');
INSERT INTO public.genre (id, name) VALUES (7, 'pop rock');
INSERT INTO public.genre (id, name) VALUES (8, 'rock');
INSERT INTO public.genre (id, name) VALUES (9, 'grunge');
INSERT INTO public.genre (id, name) VALUES (10, 'Trip hop');


--
-- Name: band_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arthur.jacquemin
--

SELECT pg_catalog.setval('public.band_id_seq', 110, true);


--
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arthur.jacquemin
--

SELECT pg_catalog.setval('public.city_id_seq', 18, true);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arthur.jacquemin
--

SELECT pg_catalog.setval('public.country_id_seq', 8, true);


--
-- Name: genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: arthur.jacquemin
--

SELECT pg_catalog.setval('public.genre_id_seq', 10, true);


--
-- Name: band band_pkey; Type: CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT band_pkey PRIMARY KEY (id);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: doctrine_migration_versions doctrine_migration_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.doctrine_migration_versions
    ADD CONSTRAINT doctrine_migration_versions_pkey PRIMARY KEY (version);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);


--
-- Name: idx_48dfa2eb4296d31f; Type: INDEX; Schema: public; Owner: arthur.jacquemin
--

CREATE INDEX idx_48dfa2eb4296d31f ON public.band USING btree (genre_id);


--
-- Name: idx_48dfa2eb8bac62af; Type: INDEX; Schema: public; Owner: arthur.jacquemin
--

CREATE INDEX idx_48dfa2eb8bac62af ON public.band USING btree (city_id);


--
-- Name: idx_48dfa2ebf92f3e70; Type: INDEX; Schema: public; Owner: arthur.jacquemin
--

CREATE INDEX idx_48dfa2ebf92f3e70 ON public.band USING btree (country_id);


--
-- Name: band fk_48dfa2eb4296d31f; Type: FK CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT fk_48dfa2eb4296d31f FOREIGN KEY (genre_id) REFERENCES public.genre(id);


--
-- Name: band fk_48dfa2eb8bac62af; Type: FK CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT fk_48dfa2eb8bac62af FOREIGN KEY (city_id) REFERENCES public.city(id);


--
-- Name: band fk_48dfa2ebf92f3e70; Type: FK CONSTRAINT; Schema: public; Owner: arthur.jacquemin
--

ALTER TABLE ONLY public.band
    ADD CONSTRAINT fk_48dfa2ebf92f3e70 FOREIGN KEY (country_id) REFERENCES public.country(id);


--
-- PostgreSQL database dump complete
--

