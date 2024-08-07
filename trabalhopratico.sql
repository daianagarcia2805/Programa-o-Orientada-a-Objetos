--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-08-07 14:05:40

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
-- TOC entry 218 (class 1259 OID 50184)
-- Name: baralhos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.baralhos (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    id_usuario integer
);


ALTER TABLE public.baralhos OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 50183)
-- Name: baralhos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.baralhos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.baralhos_id_seq OWNER TO postgres;

--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: baralhos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.baralhos_id_seq OWNED BY public.baralhos.id;


--
-- TOC entry 220 (class 1259 OID 50196)
-- Name: cartoes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cartoes (
    id integer NOT NULL,
    frente character varying(255),
    verso character varying(255),
    data_ultima_revisao timestamp without time zone,
    data_criacao timestamp without time zone,
    revisoes_realizadas integer,
    id_baralho integer,
    id_usuario integer
);


ALTER TABLE public.cartoes OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 50195)
-- Name: cartoes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cartoes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cartoes_id_seq OWNER TO postgres;

--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 219
-- Name: cartoes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cartoes_id_seq OWNED BY public.cartoes.id;


--
-- TOC entry 216 (class 1259 OID 50175)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nome character varying(100),
    email character varying(100),
    senha character varying(100),
    data_criacao date
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 50174)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 215
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 4699 (class 2604 OID 50187)
-- Name: baralhos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baralhos ALTER COLUMN id SET DEFAULT nextval('public.baralhos_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 50199)
-- Name: cartoes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartoes ALTER COLUMN id SET DEFAULT nextval('public.cartoes_id_seq'::regclass);


--
-- TOC entry 4698 (class 2604 OID 50178)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 4858 (class 0 OID 50184)
-- Dependencies: 218
-- Data for Name: baralhos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.baralhos (id, nome, id_usuario) FROM stdin;
19	EN	8
20	novo baralho	8
21	baralhinho	9
22	math	10
\.


--
-- TOC entry 4860 (class 0 OID 50196)
-- Dependencies: 220
-- Data for Name: cartoes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cartoes (id, frente, verso, data_ultima_revisao, data_criacao, revisoes_realizadas, id_baralho, id_usuario) FROM stdin;
27	Hello, how are you?	OlÃ¡, como vocÃª estÃ¡?	2024-08-07 00:00:00	\N	1	19	8
28	What is your name?	Qual Ã© o seu nome?	2024-08-07 00:00:00	\N	1	19	8
29	I love programming.	Eu amo programaÃ§Ã£o.	2024-08-07 00:00:00	\N	1	19	8
30	Where is the nearest restaurant?	Onde fica o restaurante mais prÃ³ximo?	2024-08-07 00:00:00	\N	1	19	8
31	Can you help me?	VocÃª pode me ajudar?	2024-08-07 00:00:00	\N	1	19	8
32	I am learning Spanish.	Eu estou aprendendo espanhol.	2024-08-07 00:00:00	\N	1	19	8
33	Have a nice day!	Tenha um bom dia!	2024-08-07 00:00:00	\N	1	19	8
34	Thank you very much.	Muito obrigado.	2024-08-07 00:00:00	\N	1	19	8
35	Sorry, I do not understand.	Desculpe, eu nÃ£o entendo.	2024-08-07 00:00:00	\N	1	19	8
36	How much does this cost?	Quanto custa isso?	2024-08-07 00:00:00	\N	1	19	8
37	What time is it?	Que horas sÃ£o?	2024-08-07 00:00:00	\N	1	19	8
38	I would like a coffee.	Eu gostaria de um cafÃ©.	\N	\N	\N	19	8
39	Can you speak slowly?	VocÃª pode falar devagar?	\N	\N	\N	19	8
40	I need to find a hotel.	Eu preciso encontrar um hotel.	\N	\N	\N	19	8
41	I am from Brazil.	Eu sou do Brasil.	\N	\N	\N	19	8
42	Do you have Wi-Fi?	VocÃª tem Wi-Fi?	\N	\N	\N	19	8
43	What is your favorite color?	Qual Ã© a sua cor favorita?	\N	\N	\N	19	8
44	I am very tired.	Eu estou muito cansado.	\N	\N	\N	19	8
45	Is it going to rain today?	Vai chover hoje?	\N	\N	\N	19	8
46	Where can I buy tickets?	Onde posso comprar ingressos?	\N	\N	\N	19	8
47	I am looking for a book.	Eu estou procurando um livro.	\N	\N	\N	19	8
48	Can you recommend a good restaurant?	VocÃª pode recomendar um bom restaurante?	\N	\N	\N	19	8
49	How do I get to the airport?	Como eu chego ao aeroporto?	\N	\N	\N	19	8
50	I need a taxi.	Eu preciso de um tÃ¡xi.	\N	\N	\N	19	8
51	What is the weather like today?	Como estÃ¡ o clima hoje?	\N	\N	\N	19	8
52	I am going to the market.	Eu estou indo para o mercado.	\N	\N	\N	19	8
53	Can I see the menu, please?	Posso ver o menu, por favor?	\N	\N	\N	19	8
54	How do you say this in English?	Como se diz isso em inglÃªs?	\N	\N	\N	19	8
55	I am not feeling well.	Eu nÃ£o estou me sentindo bem.	\N	\N	\N	19	8
56	Where is the closest pharmacy?	Onde fica a farmÃ¡cia mais prÃ³xima?	\N	\N	\N	19	8
57	Can you show me the way?	VocÃª pode me mostrar o caminho?	\N	\N	\N	19	8
58	I have a reservation.	Eu tenho uma reserva.	\N	\N	\N	19	8
59	Is there a bus stop nearby?	HÃ¡ um ponto de Ã´nibus por perto?	\N	\N	\N	19	8
60	I would like to order.	Eu gostaria de fazer um pedido.	\N	\N	\N	19	8
61	Can you give me directions?	VocÃª pode me dar direÃ§Ãµes?	\N	\N	\N	19	8
62	I need to make a phone call.	Eu preciso fazer uma ligaÃ§Ã£o telefÃ´nica.	\N	\N	\N	19	8
63	How far is it to the nearest subway station?	QuÃ£o longe Ã© a estaÃ§Ã£o de metrÃ´ mais prÃ³xima?	\N	\N	\N	19	8
64	What is the local specialty?	Qual Ã© a especialidade local?	\N	\N	\N	19	8
65	I need an appointment with a doctor.	Eu preciso de uma consulta com um mÃ©dico.	\N	\N	\N	19	8
66	Where can I rent a car?	Onde posso alugar um carro?	\N	\N	\N	19	8
67	Is this seat taken?	Este assento estÃ¡ ocupado?	\N	\N	\N	19	8
68	Can I have some water, please?	Posso ter um pouco de Ã¡gua, por favor?	\N	\N	\N	19	8
69	Do you accept credit cards?	VocÃªs aceitam cartÃµes de crÃ©dito?	\N	\N	\N	19	8
70	Can you recommend a hotel?	VocÃª pode recomendar um hotel?	\N	\N	\N	19	8
71	I am looking for a pharmacy.	Eu estou procurando uma farmÃ¡cia.	\N	\N	\N	19	8
72	Do you have vegetarian options?	VocÃª tem opÃ§Ãµes vegetarianas?	\N	\N	\N	19	8
73	I am lost.	Eu estou perdido.	\N	\N	\N	19	8
74	would like a table for two.	Eu gostaria de uma mesa para dois.	\N	\N	\N	19	8
75	Can you recommend a hotel?	VocÃª pode recomendar um hotel?	\N	\N	\N	19	8
76	I am looking for a pharmacy.	Eu estou procurando uma farmÃ¡cia.	\N	\N	\N	19	8
77	Do you have vegetarian options?	VocÃª tem opÃ§Ãµes vegetarianas?	\N	\N	\N	19	8
78	I am lost.	Eu estou perdido.	\N	\N	\N	19	8
79	would like a table for two.	Eu gostaria de uma mesa para dois.	\N	\N	\N	19	8
80	Hello World!	Olá mundo!	\N	2024-08-07 00:00:00	\N	19	\N
\.


--
-- TOC entry 4856 (class 0 OID 50175)
-- Dependencies: 216
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuarios (id, nome, email, senha, data_criacao) FROM stdin;
8	Daiana	daianagarcia2805@gmail.com	123	2024-05-10
9	Luana	lmgo@outlook.com.br	123	2024-05-14
10	Sophia	sophia@gmail.com	123	2024-05-14
\.


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 217
-- Name: baralhos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.baralhos_id_seq', 22, true);


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 219
-- Name: cartoes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cartoes_id_seq', 80, true);


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 215
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 11, true);


--
-- TOC entry 4706 (class 2606 OID 50189)
-- Name: baralhos baralhos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baralhos
    ADD CONSTRAINT baralhos_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 50203)
-- Name: cartoes cartoes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartoes
    ADD CONSTRAINT cartoes_pkey PRIMARY KEY (id);


--
-- TOC entry 4702 (class 2606 OID 50182)
-- Name: usuarios email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT email_unique UNIQUE (email);


--
-- TOC entry 4704 (class 2606 OID 50180)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 4710 (class 2606 OID 50204)
-- Name: cartoes id_baralho_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartoes
    ADD CONSTRAINT id_baralho_fk FOREIGN KEY (id_baralho) REFERENCES public.baralhos(id);


--
-- TOC entry 4709 (class 2606 OID 50190)
-- Name: baralhos id_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.baralhos
    ADD CONSTRAINT id_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


--
-- TOC entry 4711 (class 2606 OID 50209)
-- Name: cartoes id_usuario_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cartoes
    ADD CONSTRAINT id_usuario_fk FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id);


-- Completed on 2024-08-07 14:05:44

--
-- PostgreSQL database dump complete
--

