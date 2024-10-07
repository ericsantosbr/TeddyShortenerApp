--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.2 (Debian 16.2-1.pgdg120+2)

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

--
-- Name: URL; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "URL";


ALTER SCHEMA "URL" OWNER TO postgres;

--
-- Name: User; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "User";


ALTER SCHEMA "User" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: urls; Type: TABLE; Schema: URL; Owner: postgres
--

CREATE TABLE "URL".urls (
    email character varying,
    target character varying NOT NULL,
    createdat date NOT NULL,
    isactive boolean,
    shortenedurl character varying NOT NULL,
    hits integer DEFAULT 0,
    deactivatedat date,
    updatedat date,
    id integer NOT NULL,
    user_id integer
);


ALTER TABLE "URL".urls OWNER TO postgres;

--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: URL; Owner: postgres
--

CREATE SEQUENCE "URL".urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "URL".urls_id_seq OWNER TO postgres;

--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: URL; Owner: postgres
--

ALTER SEQUENCE "URL".urls_id_seq OWNED BY "URL".urls.id;


--
-- Name: users; Type: TABLE; Schema: User; Owner: postgres
--

CREATE TABLE "User".users (
    email character varying NOT NULL,
    password character varying NOT NULL,
    updatedat date,
    user_id integer NOT NULL,
    isactive boolean,
    createdat date
);


ALTER TABLE "User".users OWNER TO postgres;

--
-- Name: COLUMN users.email; Type: COMMENT; Schema: User; Owner: postgres
--

COMMENT ON COLUMN "User".users.email IS 'User e-mail';


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: User; Owner: postgres
--

CREATE SEQUENCE "User".users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE "User".users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: User; Owner: postgres
--

ALTER SEQUENCE "User".users_id_seq OWNED BY "User".users.user_id;


--
-- Name: urls id; Type: DEFAULT; Schema: URL; Owner: postgres
--

ALTER TABLE ONLY "URL".urls ALTER COLUMN id SET DEFAULT nextval('"URL".urls_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: User; Owner: postgres
--

ALTER TABLE ONLY "User".users ALTER COLUMN user_id SET DEFAULT nextval('"User".users_id_seq'::regclass);


--
-- Data for Name: urls; Type: TABLE DATA; Schema: URL; Owner: postgres
--

COPY "URL".urls (email, target, createdat, isactive, shortenedurl, hits, deactivatedat, updatedat, id, user_id) FROM stdin;
ericsantosbr2@gmail.com	https://github.com/ericsantosbr/TeddyShortenerEngine	2024-10-06	f	h2V0EV	0	\N	2024-10-06	1	3
\N	https://github.com/ericsantosbr/TeddyShortenerEngine	2024-10-07	t	udxhqb	0	\N	2024-10-07	2	\N
\N	https://github.com/ericsantosbr/TeddyShortenerEngine	2024-10-07	t	bf010J	0	\N	2024-10-07	3	\N
\N	https://github.com/ericsantosbr/TeddyShortenerEngine	2024-10-07	t	7uI9SG	0	\N	2024-10-07	4	\N
\N	https://github.com/ericsantosbr/TeddyShortenerEngine	2024-10-07	t	TCh3lp	0	\N	2024-10-07	5	\N
\N	https://google.com	2024-10-07	t	litQKN	0	\N	2024-10-07	6	\N
\N	https://google.com	2024-10-07	t	tp70Dh	0	\N	2024-10-07	7	\N
ericsantosbr2@gmail.com	https://google.com/imghp	2024-10-07	t	abcdef	6	2024-10-07	2024-10-07	8	3
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: User; Owner: postgres
--

COPY "User".users (email, password, updatedat, user_id, isactive, createdat) FROM stdin;
ericsantosbr2@gmail.com	$2b$12$gc/2i1fAtPTUymIWal/U7.ryU0vXGfxYmh3h4cnuqQYagPaEh/E4i	2024-10-05	3	t	\N
eric@santos	$2b$12$bAl4dNm1uyxCwoimddEVXumC9M21pnJ/UllzdzYRcjQOnhh9lgCTG	2024-10-07	5	t	2024-10-07
eric2@santos	$2b$12$TTRNPAQz4k5suAXtU9zvoeMq4FEp8umDZS/Eyte3mPiJ1yEb4fmSO	2024-10-07	6	t	2024-10-07
eric3@santos	$2b$12$vj2rPKmN2EqTJPT4tHxO8e4FYE/t.GT6AzUHwVsGea7KnCcDzxRe.	2024-10-07	7	t	2024-10-07
eric4@santos	$2b$12$TW/Oj0XURtklovOWBA3/bO7lUNy3dx5rWeNwjmsYLffF3cBEZ9QAG	2024-10-07	8	t	2024-10-07
eric5@santos	$2b$12$qaqcJJN96WovHGgxqwdC3eGYte2Yap/opVB1XQhoiTaDSFhd/ksoe	2024-10-07	9	t	2024-10-07
eric6@santos	$2b$12$D7hSL.POzvncgO2EWIMm5.mLLszfl4w.sT4ro6Q9JBJPw.wmLKPqW	2024-10-07	10	t	2024-10-07
eric7@santos	$2b$12$FakpmEXG1lRklGWjwWcNG.fdmQbzEUPL1QNe8jpG3ZBRpohHUeY12	2024-10-07	11	t	2024-10-07
eric8@santos	$2b$12$alC1eIQ0O3YTkPaDR6HLX.enw0.XJ5rTcx9NTa.h5LihnrwM.CyGy	2024-10-07	12	t	2024-10-07
eric9@santos	$2b$12$xyJz5jVgYxBNjUMkrGpq9uH172/H/NRefSXWa15EPCTEHw0CqesLa	2024-10-07	14	t	2024-10-07
eric10@santos	$2b$12$catcFqq/rxpzCu6pZsdNOeFpHAC3p3UennAgFwuCbbpwH2VCCbxJm	2024-10-07	15	t	2024-10-07
\.


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: URL; Owner: postgres
--

SELECT pg_catalog.setval('"URL".urls_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: User; Owner: postgres
--

SELECT pg_catalog.setval('"User".users_id_seq', 15, true);


--
-- Name: urls urls_pk; Type: CONSTRAINT; Schema: URL; Owner: postgres
--

ALTER TABLE ONLY "URL".urls
    ADD CONSTRAINT urls_pk PRIMARY KEY (id);


--
-- Name: users users_pk; Type: CONSTRAINT; Schema: User; Owner: postgres
--

ALTER TABLE ONLY "User".users
    ADD CONSTRAINT users_pk PRIMARY KEY (user_id);


--
-- Name: users users_unique; Type: CONSTRAINT; Schema: User; Owner: postgres
--

ALTER TABLE ONLY "User".users
    ADD CONSTRAINT users_unique UNIQUE (email);


--
-- Name: urls owner; Type: FK CONSTRAINT; Schema: URL; Owner: postgres
--

ALTER TABLE ONLY "URL".urls
    ADD CONSTRAINT owner FOREIGN KEY (email) REFERENCES "User".users(email);


--
-- Name: urls urls_users_fk; Type: FK CONSTRAINT; Schema: URL; Owner: postgres
--

ALTER TABLE ONLY "URL".urls
    ADD CONSTRAINT urls_users_fk FOREIGN KEY (user_id) REFERENCES "User".users(user_id);


--
-- PostgreSQL database dump complete
--

