--
-- PostgreSQL database dump
--

\restrict mjtxWtIx3CdmWN2INpRHHp0aZqHOSpYMj8LUN9ejfRr3gTRwtTF4k8X2YIYU20k

-- Dumped from database version 17.9
-- Dumped by pg_dump version 17.9

-- Started on 2026-04-14 12:29:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 24589)
-- Name: cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart (
    id integer NOT NULL,
    user_id integer,
    product_id character varying(50),
    quantity integer DEFAULT 1,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.cart OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24588)
-- Name: cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cart_id_seq OWNER TO postgres;

--
-- TOC entry 4929 (class 0 OID 0)
-- Dependencies: 219
-- Name: cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;


--
-- TOC entry 222 (class 1259 OID 24621)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    product_id character varying(50) NOT NULL,
    name character varying(255) NOT NULL,
    brand character varying(100) NOT NULL,
    category character varying(50) NOT NULL,
    style character varying(100) NOT NULL,
    price numeric(10,2) NOT NULL,
    offer_price numeric(10,2) NOT NULL,
    discount integer,
    image_url text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    rating numeric(3,2) DEFAULT 4.0,
    material character varying(50),
    color character varying(50)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24620)
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO postgres;

--
-- TOC entry 4930 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- TOC entry 218 (class 1259 OID 24577)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24576)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4931 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4754 (class 2604 OID 24592)
-- Name: cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);


--
-- TOC entry 4757 (class 2604 OID 24624)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- TOC entry 4752 (class 2604 OID 24580)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4921 (class 0 OID 24589)
-- Dependencies: 220
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart (id, user_id, product_id, quantity, created_at) FROM stdin;
1	1	P001	1	2026-04-10 12:55:10.680027
2	1	P002	1	2026-04-10 13:07:51.216226
3	1	P003	1	2026-04-10 13:40:09.530474
4	1	M004	1	2026-04-10 13:56:38.839853
5	1	M006	1	2026-04-10 15:06:26.874897
6	1	watch-22	1	2026-04-11 11:03:32.504858
7	1	wom-sar-29	1	2026-04-14 10:32:02.623019
8	1	wom-jean-36	1	2026-04-14 11:19:21.422921
9	1	wom-ring-8	1	2026-04-14 11:19:50.537685
10	1	kid-feed-18	1	2026-04-14 11:50:35.48622
11	1	kid-ts-20	1	2026-04-14 11:56:46.551062
\.


--
-- TOC entry 4923 (class 0 OID 24621)
-- Dependencies: 222
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, product_id, name, brand, category, style, price, offer_price, discount, image_url, created_at, rating, material, color) FROM stdin;
23879	kurta-1	Pure Cotton Short Kurta Designer Edition	Essential Mart	men	kurtas	6957.00	2852.00	59	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.462572	4.90	Cotton	Blue
23880	kurta-2	Raw Silk Knee Length Designer Edition	FabIndia	men	kurtas	3190.00	2074.00	35	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.478282	4.10	Polyester	Blue
23881	kurta-3	Khadi Linen Long Kurta Designer Edition	Manyavar	men	kurtas	4158.00	1663.00	60	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.480142	3.90	Denim	Pink
23882	kurta-4	Chanderi Pathani Style Designer Edition	Snitch	men	kurtas	3322.00	1661.00	50	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.482644	4.70	Cotton	Grey
23883	kurta-5	Lucknowi Short Kurta Designer Edition	Ethnix	men	kurtas	4856.00	3642.00	25	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.484474	4.50	Leather	Black
23884	kurta-6	Pure Cotton Knee Length Designer Edition	Essential Mart	men	kurtas	6424.00	3148.00	51	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.486388	4.70	Denim	Red
23885	kurta-7	Raw Silk Long Kurta Designer Edition	FabIndia	men	kurtas	4871.00	2630.00	46	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.488501	4.60	Chiffon	Red
23886	kurta-8	Khadi Linen Pathani Style Designer Edition	Manyavar	men	kurtas	6539.00	5493.00	16	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.490412	4.70	Denim	Black
23887	kurta-9	Chanderi Short Kurta Designer Edition	Snitch	men	kurtas	3332.00	1599.00	52	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.492317	3.80	Denim	Red
23888	kurta-10	Lucknowi Knee Length Designer Edition	Ethnix	men	kurtas	1923.00	1365.00	29	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.493848	4.70	Denim	Gold
23889	kurta-11	Pure Cotton Long Kurta Designer Edition	Essential Mart	men	kurtas	3579.00	2219.00	38	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.495361	4.50	Linen	Pink
23890	kurta-12	Raw Silk Pathani Style Designer Edition	FabIndia	men	kurtas	1026.00	482.00	53	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.497119	3.90	Linen	Green
23891	kurta-13	Khadi Linen Short Kurta Designer Edition	Manyavar	men	kurtas	1700.00	1207.00	29	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.499001	4.90	Chiffon	Gold
23892	kurta-14	Chanderi Knee Length Designer Edition	Snitch	men	kurtas	2822.00	1157.00	59	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.500409	4.10	Denim	Green
23893	kurta-15	Lucknowi Long Kurta Designer Edition	Ethnix	men	kurtas	2948.00	2005.00	32	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.501674	4.60	Linen	Grey
23894	kurta-16	Pure Cotton Pathani Style Designer Edition	Essential Mart	men	kurtas	4197.00	2812.00	33	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.502839	4.00	Cotton	Gold
23895	kurta-17	Raw Silk Short Kurta Designer Edition	FabIndia	men	kurtas	1445.00	867.00	40	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.504167	4.70	Silk	Pink
23896	kurta-18	Khadi Linen Knee Length Designer Edition	Manyavar	men	kurtas	6762.00	5072.00	25	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.505368	4.10	Chiffon	White
23897	kurta-19	Chanderi Long Kurta Designer Edition	Snitch	men	kurtas	7184.00	3808.00	47	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.506749	5.00	Leather	Green
23898	kurta-20	Lucknowi Pathani Style Designer Edition	Ethnix	men	kurtas	4546.00	3046.00	33	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.508014	4.60	Georgette	Gold
23899	kurta-21	Pure Cotton Short Kurta Designer Edition	Essential Mart	men	kurtas	2383.00	1287.00	46	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.509356	4.00	Cotton	Red
23900	kurta-22	Raw Silk Knee Length Designer Edition	FabIndia	men	kurtas	4776.00	2531.00	47	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.510533	4.80	Chiffon	Gold
23901	kurta-23	Khadi Linen Long Kurta Designer Edition	Manyavar	men	kurtas	3938.00	2284.00	42	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.511789	4.40	Denim	Pink
23902	kurta-24	Chanderi Pathani Style Designer Edition	Snitch	men	kurtas	6558.00	4394.00	33	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.513025	4.60	Leather	Black
23903	kurta-25	Lucknowi Short Kurta Designer Edition	Ethnix	men	kurtas	7407.00	5703.00	23	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.514236	4.90	Linen	Gold
23904	kurta-26	Pure Cotton Knee Length Designer Edition	Essential Mart	men	kurtas	2849.00	1453.00	49	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.515456	4.10	Polyester	Grey
23905	kurta-27	Raw Silk Long Kurta Designer Edition	FabIndia	men	kurtas	1974.00	1619.00	18	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.516633	4.20	Chiffon	Gold
23906	kurta-28	Khadi Linen Pathani Style Designer Edition	Manyavar	men	kurtas	1734.00	1127.00	35	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.51778	4.10	Leather	Pink
23907	kurta-29	Chanderi Short Kurta Designer Edition	Snitch	men	kurtas	5136.00	3852.00	25	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.518938	3.90	Cotton	Black
23908	kurta-30	Lucknowi Knee Length Designer Edition	Ethnix	men	kurtas	1651.00	1139.00	31	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.520094	4.20	Chiffon	Beige
23909	kurta-31	Pure Cotton Long Kurta Designer Edition	Essential Mart	men	kurtas	5494.00	3791.00	31	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.521255	4.80	Denim	White
23910	kurta-32	Raw Silk Pathani Style Designer Edition	FabIndia	men	kurtas	7972.00	6776.00	15	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.522403	4.10	Polyester	Pink
23911	kurta-33	Khadi Linen Short Kurta Designer Edition	Manyavar	men	kurtas	6775.00	5081.00	25	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.52521	4.50	Denim	Green
23912	kurta-34	Chanderi Knee Length Designer Edition	Snitch	men	kurtas	7487.00	3369.00	55	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.526686	3.90	Chiffon	Blue
23913	kurta-35	Lucknowi Long Kurta Designer Edition	Ethnix	men	kurtas	3870.00	1896.00	51	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.52807	4.30	Linen	Pink
23914	kurta-36	Pure Cotton Pathani Style Designer Edition	Essential Mart	men	kurtas	3141.00	1445.00	54	https://i.pinimg.com/736x/1e/82/93/1e829340d7e1f07cd10d694df9068613.jpg	2026-04-14 12:10:53.52937	4.80	Cotton	Green
23915	kurta-37	Raw Silk Short Kurta Designer Edition	FabIndia	men	kurtas	6393.00	3964.00	38	https://i.pinimg.com/1200x/6f/ef/92/6fef92771cbd653bcf3a8c096f197aeb.jpg	2026-04-14 12:10:53.530635	3.90	Silk	White
23916	kurta-38	Khadi Linen Knee Length Designer Edition	Manyavar	men	kurtas	1530.00	1117.00	27	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.531916	3.90	Silk	Beige
23917	kurta-39	Chanderi Long Kurta Designer Edition	Snitch	men	kurtas	2279.00	1504.00	34	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.533078	4.80	Chiffon	Green
23918	kurta-40	Lucknowi Pathani Style Designer Edition	Ethnix	men	kurtas	3453.00	1796.00	48	https://i.pinimg.com/736x/6b/31/41/6b3141ec49702e5fb5f662b783e1498f.jpg	2026-04-14 12:10:53.534252	4.10	Cotton	Black
23919	sherwani-1	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	1250.00	813.00	35	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.536122	4.30	Georgette	Green
23920	sherwani-2	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	7672.00	5601.00	27	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.5374	4.00	Leather	White
23921	sherwani-3	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	4443.00	3243.00	27	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.538791	4.10	Leather	Pink
23922	sherwani-4	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	6455.00	3421.00	47	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.54015	4.80	Georgette	Black
23923	sherwani-5	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	5187.00	3060.00	41	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.541369	5.00	Cotton	Green
23924	sherwani-6	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	1862.00	1527.00	18	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.542541	4.10	Polyester	Black
23925	sherwani-7	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	6805.00	4083.00	40	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.543779	4.00	Silk	Grey
23926	sherwani-8	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	3257.00	2540.00	22	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.544987	4.60	Polyester	Gold
23927	sherwani-9	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	7395.00	3845.00	48	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.546178	5.00	Chiffon	Gold
23928	sherwani-10	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	2632.00	2132.00	19	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.547528	4.40	Silk	Blue
23929	sherwani-11	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	6454.00	5228.00	19	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.548823	4.20	Georgette	Pink
23930	sherwani-12	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	5512.00	3969.00	28	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.550018	4.30	Linen	Red
23931	sherwani-13	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	3917.00	1723.00	56	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.551236	4.20	Silk	Red
23932	sherwani-14	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	5285.00	2167.00	59	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.55241	4.90	Polyester	Pink
23933	sherwani-15	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	4416.00	2296.00	48	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.553701	3.90	Linen	Red
23934	sherwani-16	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	5247.00	3043.00	42	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.555334	4.60	Cotton	Black
23935	sherwani-17	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	5642.00	2652.00	53	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.556632	4.20	Polyester	Gold
23936	sherwani-18	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	7806.00	5855.00	25	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.557907	4.70	Leather	Pink
23937	sherwani-19	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	1375.00	1018.00	26	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.559224	4.80	Linen	Pink
23938	sherwani-20	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	1555.00	824.00	47	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.560511	4.70	Polyester	Pink
23939	sherwani-21	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	4383.00	2717.00	38	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.562212	5.00	Denim	Pink
23940	sherwani-22	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	4158.00	2037.00	51	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.563887	4.80	Cotton	Red
23941	sherwani-23	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	1211.00	678.00	44	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.56584	4.40	Silk	Gold
23942	sherwani-24	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	7085.00	4464.00	37	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.567918	4.50	Polyester	White
23943	sherwani-25	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	5614.00	4042.00	28	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.569359	4.90	Cotton	Pink
23944	sherwani-26	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	3007.00	2135.00	29	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.571055	3.90	Leather	Gold
23945	sherwani-27	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	7502.00	5627.00	25	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.572364	4.20	Denim	Red
23946	sherwani-28	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	1807.00	1373.00	24	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.573699	3.90	Linen	Red
23947	sherwani-29	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	4413.00	2295.00	48	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.575352	4.50	Georgette	Gold
23948	sherwani-30	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	3166.00	1773.00	44	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.576616	4.50	Leather	Gold
23949	sherwani-31	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	5431.00	2335.00	57	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.578027	4.80	Cotton	Blue
23950	sherwani-32	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	2770.00	1801.00	35	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.579738	5.00	Linen	Pink
23951	sherwani-33	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	4441.00	3730.00	16	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.581098	4.70	Silk	Black
23952	sherwani-34	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	2588.00	1242.00	52	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.582456	4.80	Chiffon	Gold
23953	sherwani-35	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	3050.00	1434.00	53	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.583738	4.20	Cotton	Gold
23954	sherwani-36	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	2549.00	1988.00	22	https://i.pinimg.com/1200x/20/e6/9a/20e69ac3d4660f57cd76c1d03529beac.jpg	2026-04-14 12:10:53.58508	4.50	Denim	Green
23955	sherwani-37	Silk Jamawar Indo-Western Set	Manyavar	men	sherwani-sets	3852.00	1733.00	55	https://i.pinimg.com/736x/ed/cd/47/edcd477099ae2a9fd2a2fe214c2c7ad5.jpg	2026-04-14 12:10:53.586397	4.30	Chiffon	Pink
23956	sherwani-38	Velvet Classic Sherwani Set	Tasva	men	sherwani-sets	3871.00	1819.00	53	https://i.pinimg.com/1200x/75/cc/88/75cc887be94910301bfc0bc876c6c3fc.jpg	2026-04-14 12:10:53.588024	4.20	Silk	Black
23957	sherwani-39	Banarasi Silk Jodhpuris Set	Sabyasachi	men	sherwani-sets	7917.00	4750.00	40	https://i.pinimg.com/736x/d3/a9/82/d3a9824f0b87e464d8d6013ee678bd4d.jpg	2026-04-14 12:10:53.589287	5.00	Georgette	Black
23958	sherwani-40	Lucknowi Georgette Achkan Set	Anita Dongre	men	sherwani-sets	7177.00	3230.00	55	https://i.pinimg.com/736x/16/c1/45/16c14542260d743c64c13c280a382341.jpg	2026-04-14 12:10:53.590503	4.00	Chiffon	Green
23959	shirt-1	Slim Fit Cotton Premium Shirt	Essential Mart	men	shirts	2436.00	1924.00	21	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.592936	4.30	Polyester	Black
23960	shirt-2	Oversized Linen Premium Shirt	Zara	men	shirts	4349.00	3697.00	15	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.594183	4.50	Linen	Pink
23961	shirt-3	Regular Fit Denim Premium Shirt	H&M	men	shirts	7777.00	4977.00	36	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.595665	4.70	Denim	Pink
23962	shirt-4	Mandarin Collar Satin Premium Shirt	Snitch	men	shirts	7391.00	5026.00	32	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.596867	4.90	Leather	White
23963	shirt-5	Slim Fit Cotton Premium Shirt	Levi's	men	shirts	7165.00	6019.00	16	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.59824	4.50	Cotton	Blue
23964	shirt-6	Oversized Linen Premium Shirt	Essential Mart	men	shirts	1758.00	791.00	55	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.600097	4.30	Chiffon	Red
23965	shirt-7	Regular Fit Denim Premium Shirt	Zara	men	shirts	5905.00	4783.00	19	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.601836	3.90	Georgette	Red
23966	shirt-8	Mandarin Collar Satin Premium Shirt	H&M	men	shirts	5686.00	4663.00	18	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.603478	4.60	Silk	Red
23967	shirt-9	Slim Fit Cotton Premium Shirt	Snitch	men	shirts	2127.00	1319.00	38	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.604949	4.90	Cotton	Green
23968	shirt-10	Oversized Linen Premium Shirt	Levi's	men	shirts	5697.00	3190.00	44	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.606416	4.00	Denim	Green
23969	shirt-11	Regular Fit Denim Premium Shirt	Essential Mart	men	shirts	1434.00	932.00	35	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.60777	4.10	Silk	White
23970	shirt-12	Mandarin Collar Satin Premium Shirt	Zara	men	shirts	3268.00	2680.00	18	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.6092	3.90	Georgette	Blue
23971	shirt-13	Slim Fit Cotton Premium Shirt	H&M	men	shirts	7612.00	6090.00	20	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.610749	4.70	Linen	Black
23972	shirt-14	Oversized Linen Premium Shirt	Snitch	men	shirts	7844.00	4314.00	45	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.612581	4.90	Georgette	Green
23973	shirt-15	Regular Fit Denim Premium Shirt	Levi's	men	shirts	3098.00	1363.00	56	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.614984	4.90	Denim	Blue
23974	shirt-16	Mandarin Collar Satin Premium Shirt	Essential Mart	men	shirts	2884.00	2134.00	26	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.61639	4.90	Chiffon	Beige
23975	shirt-17	Slim Fit Cotton Premium Shirt	Zara	men	shirts	4796.00	2398.00	50	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.618114	4.60	Denim	White
23976	shirt-18	Oversized Linen Premium Shirt	H&M	men	shirts	7621.00	4954.00	35	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.619871	4.80	Cotton	Blue
23977	shirt-19	Regular Fit Denim Premium Shirt	Snitch	men	shirts	1475.00	885.00	40	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.621037	3.90	Polyester	Red
23978	shirt-20	Mandarin Collar Satin Premium Shirt	Levi's	men	shirts	3692.00	2732.00	26	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.622156	4.30	Cotton	Red
23979	shirt-21	Slim Fit Cotton Premium Shirt	Essential Mart	men	shirts	7958.00	3263.00	59	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.62381	4.90	Polyester	Beige
23980	shirt-22	Oversized Linen Premium Shirt	Zara	men	shirts	7594.00	6151.00	19	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.625045	4.90	Georgette	Green
23981	shirt-23	Regular Fit Denim Premium Shirt	H&M	men	shirts	5999.00	4019.00	33	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.626219	4.60	Cotton	Blue
23982	shirt-24	Mandarin Collar Satin Premium Shirt	Snitch	men	shirts	6075.00	3038.00	50	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.627624	4.90	Polyester	Beige
23983	shirt-25	Slim Fit Cotton Premium Shirt	Levi's	men	shirts	2096.00	1425.00	32	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.629339	4.50	Silk	Red
23984	shirt-26	Oversized Linen Premium Shirt	Essential Mart	men	shirts	4335.00	3511.00	19	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.630937	4.30	Polyester	Blue
23985	shirt-27	Regular Fit Denim Premium Shirt	Zara	men	shirts	1981.00	891.00	55	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.632105	4.80	Polyester	Pink
23986	shirt-28	Mandarin Collar Satin Premium Shirt	H&M	men	shirts	6038.00	2536.00	58	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.63346	4.40	Chiffon	Pink
23987	shirt-29	Slim Fit Cotton Premium Shirt	Snitch	men	shirts	6112.00	3117.00	49	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.6347	4.00	Cotton	Red
25184	kid-feed-16	Baby Bowl Kids Wear	Essential Kids	kids	feeding	7956.00	5808.00	27	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.185096	4.50	Polyester	White
23988	shirt-30	Oversized Linen Premium Shirt	Levi's	men	shirts	4672.00	3270.00	30	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.635974	4.10	Linen	Grey
23989	shirt-31	Regular Fit Denim Premium Shirt	Essential Mart	men	shirts	6786.00	3529.00	48	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.637967	3.90	Silk	Blue
23990	shirt-32	Mandarin Collar Satin Premium Shirt	Zara	men	shirts	4486.00	2736.00	39	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.639892	3.90	Cotton	Pink
23991	shirt-33	Slim Fit Cotton Premium Shirt	H&M	men	shirts	2820.00	1889.00	33	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.641418	4.60	Georgette	Grey
23992	shirt-34	Oversized Linen Premium Shirt	Snitch	men	shirts	4008.00	2605.00	35	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.642598	3.80	Leather	Blue
23993	shirt-35	Regular Fit Denim Premium Shirt	Levi's	men	shirts	5596.00	2462.00	56	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.643705	4.10	Leather	Grey
23994	shirt-36	Mandarin Collar Satin Premium Shirt	Essential Mart	men	shirts	2844.00	1650.00	42	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.645258	4.10	Linen	Grey
23995	shirt-37	Slim Fit Cotton Premium Shirt	Zara	men	shirts	7054.00	3456.00	51	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.647304	4.40	Chiffon	Gold
23996	shirt-38	Oversized Linen Premium Shirt	H&M	men	shirts	7909.00	3638.00	54	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.648901	4.10	Silk	Gold
23997	shirt-39	Regular Fit Denim Premium Shirt	Snitch	men	shirts	5946.00	4638.00	22	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.650508	3.80	Denim	Black
23998	shirt-40	Mandarin Collar Satin Premium Shirt	Levi's	men	shirts	6440.00	4894.00	24	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.65184	4.20	Chiffon	Red
23999	shirt-41	Slim Fit Cotton Premium Shirt	Essential Mart	men	shirts	3725.00	2794.00	25	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.65325	4.90	Denim	Red
24000	shirt-42	Oversized Linen Premium Shirt	Zara	men	shirts	3263.00	2415.00	26	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.65589	3.80	Leather	Grey
24001	shirt-43	Regular Fit Denim Premium Shirt	H&M	men	shirts	3784.00	2233.00	41	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.658489	4.00	Cotton	Gold
24002	shirt-44	Mandarin Collar Satin Premium Shirt	Snitch	men	shirts	6432.00	3280.00	49	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.659956	4.60	Polyester	White
24003	shirt-45	Slim Fit Cotton Premium Shirt	Levi's	men	shirts	4948.00	2474.00	50	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.661721	4.10	Georgette	Black
24004	shirt-46	Oversized Linen Premium Shirt	Essential Mart	men	shirts	4139.00	1904.00	54	https://i.pinimg.com/736x/e1/21/d6/e121d6618768f9d899f2ca595bc9cc9e.jpg	2026-04-14 12:10:53.663312	4.50	Georgette	White
24005	shirt-47	Regular Fit Denim Premium Shirt	Zara	men	shirts	7272.00	4363.00	40	https://img.fantaskycdn.com/74f2d619cb9cc850e0dc4914d48f4a63_1024x.jpeg	2026-04-14 12:10:53.664759	4.40	Leather	Black
24006	shirt-48	Mandarin Collar Satin Premium Shirt	H&M	men	shirts	2553.00	1302.00	49	https://i.pinimg.com/736x/74/06/ff/7406ffe68f296b25cb19224669d544a2.jpg	2026-04-14 12:10:53.666739	5.00	Silk	Gold
24007	shirt-49	Slim Fit Cotton Premium Shirt	Snitch	men	shirts	7089.00	5671.00	20	https://i.pinimg.com/1200x/0e/f7/5d/0ef75dc11ed684d1ea790e37268326c2.jpg	2026-04-14 12:10:53.66888	5.00	Linen	Red
24008	shirt-50	Oversized Linen Premium Shirt	Levi's	men	shirts	5304.00	2440.00	54	https://i.pinimg.com/736x/f9/03/27/f90327a72ce1dc043dcc8ef5026bc81b.jpg	2026-04-14 12:10:53.670899	4.70	Leather	Blue
24009	jeans-1	Deep Blue Straight Fit Premium Denim	Levi's	men	jeans	6429.00	3986.00	38	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.673495	4.80	Linen	Green
24010	jeans-2	Midnight Black Slim Fit Premium Denim	Snitch	men	jeans	1016.00	691.00	32	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.686534	4.70	Polyester	Gold
24011	jeans-3	Grey Bootcut Premium Denim	Zara	men	jeans	6365.00	4519.00	29	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.687899	4.30	Linen	Green
24012	jeans-4	Light Wash Baggy Premium Denim	Essential Mart	men	jeans	4571.00	3565.00	22	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.690291	4.20	Cotton	Black
24013	jeans-5	Deep Blue Skinny Premium Denim	H&M	men	jeans	3944.00	2800.00	29	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.692343	4.80	Cotton	Blue
24014	jeans-6	Midnight Black Straight Fit Premium Denim	Levi's	men	jeans	1729.00	1089.00	37	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.694315	4.70	Leather	Green
24015	jeans-7	Grey Slim Fit Premium Denim	Snitch	men	jeans	1259.00	541.00	57	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.696125	4.20	Linen	Pink
24016	jeans-8	Light Wash Bootcut Premium Denim	Zara	men	jeans	2303.00	1267.00	45	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.698133	5.00	Chiffon	Pink
24017	jeans-9	Deep Blue Baggy Premium Denim	Essential Mart	men	jeans	2346.00	1830.00	22	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.699508	4.30	Linen	White
24018	jeans-10	Midnight Black Skinny Premium Denim	H&M	men	jeans	5107.00	2605.00	49	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.701532	4.90	Linen	Black
24019	jeans-11	Grey Straight Fit Premium Denim	Levi's	men	jeans	1812.00	1196.00	34	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.702736	4.60	Linen	Green
24020	jeans-12	Light Wash Slim Fit Premium Denim	Snitch	men	jeans	1568.00	674.00	57	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.704814	4.50	Georgette	Pink
24021	jeans-13	Deep Blue Bootcut Premium Denim	Zara	men	jeans	5624.00	2756.00	51	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.706936	4.10	Polyester	Black
24022	jeans-14	Midnight Black Baggy Premium Denim	Essential Mart	men	jeans	2355.00	1554.00	34	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.70868	4.80	Leather	Green
24023	jeans-15	Grey Skinny Premium Denim	H&M	men	jeans	1093.00	896.00	18	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.711514	4.50	Silk	Pink
24024	jeans-16	Light Wash Straight Fit Premium Denim	Levi's	men	jeans	4482.00	3675.00	18	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.713459	4.20	Silk	Black
24025	jeans-17	Deep Blue Slim Fit Premium Denim	Snitch	men	jeans	6972.00	5159.00	26	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.714853	3.90	Linen	Pink
24026	jeans-18	Midnight Black Bootcut Premium Denim	Zara	men	jeans	5940.00	3564.00	40	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.71634	4.70	Linen	Red
24027	jeans-19	Grey Baggy Premium Denim	Essential Mart	men	jeans	7045.00	5495.00	22	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.718577	4.50	Denim	Pink
24028	jeans-20	Light Wash Skinny Premium Denim	H&M	men	jeans	4580.00	2473.00	46	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.720653	3.90	Polyester	Black
24029	jeans-21	Deep Blue Straight Fit Premium Denim	Levi's	men	jeans	4119.00	2801.00	32	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.722477	4.70	Chiffon	Beige
24030	jeans-22	Midnight Black Slim Fit Premium Denim	Snitch	men	jeans	3423.00	1609.00	53	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.724587	4.70	Leather	Black
24031	jeans-23	Grey Bootcut Premium Denim	Zara	men	jeans	5787.00	3993.00	31	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.726721	4.50	Chiffon	Grey
24032	jeans-24	Light Wash Baggy Premium Denim	Essential Mart	men	jeans	1263.00	543.00	57	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.72859	3.90	Leather	Green
24033	jeans-25	Deep Blue Skinny Premium Denim	H&M	men	jeans	3473.00	2431.00	30	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.730186	4.80	Linen	Grey
24034	jeans-26	Midnight Black Straight Fit Premium Denim	Levi's	men	jeans	6662.00	2798.00	58	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.731655	4.30	Georgette	Gold
24035	jeans-27	Grey Slim Fit Premium Denim	Snitch	men	jeans	3052.00	2442.00	20	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.733018	4.40	Denim	Red
24036	jeans-28	Light Wash Bootcut Premium Denim	Zara	men	jeans	5853.00	3922.00	33	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.734041	4.30	Cotton	Red
24037	jeans-29	Deep Blue Baggy Premium Denim	Essential Mart	men	jeans	2803.00	1934.00	31	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.735047	4.00	Denim	Grey
24038	jeans-30	Midnight Black Skinny Premium Denim	H&M	men	jeans	7581.00	4170.00	45	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.736056	4.30	Linen	Red
24039	jeans-31	Grey Straight Fit Premium Denim	Levi's	men	jeans	5537.00	2990.00	46	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.737049	4.10	Silk	Blue
24040	jeans-32	Light Wash Slim Fit Premium Denim	Snitch	men	jeans	5199.00	4107.00	21	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.738034	5.00	Polyester	Gold
24041	jeans-33	Deep Blue Bootcut Premium Denim	Zara	men	jeans	6484.00	2788.00	57	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.739023	4.80	Denim	Green
24042	jeans-34	Midnight Black Baggy Premium Denim	Essential Mart	men	jeans	4830.00	3188.00	34	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.740018	4.90	Linen	Green
24043	jeans-35	Grey Skinny Premium Denim	H&M	men	jeans	1996.00	1038.00	48	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.741006	4.60	Silk	Green
24044	jeans-36	Light Wash Straight Fit Premium Denim	Levi's	men	jeans	1485.00	1143.00	23	https://images.unsplash.com/photo-1542272604-787c3835535d?q=80&w=1000	2026-04-14 12:10:53.741997	4.00	Silk	Blue
24045	jeans-37	Deep Blue Slim Fit Premium Denim	Snitch	men	jeans	1992.00	996.00	50	https://i.pinimg.com/1200x/1c/e0/53/1ce053123bfaf353dcd5e51611e539ea.jpg	2026-04-14 12:10:53.743114	3.80	Georgette	Black
24046	jeans-38	Midnight Black Bootcut Premium Denim	Zara	men	jeans	4144.00	2196.00	47	https://i.pinimg.com/736x/56/47/ac/5647ac6146a0b8b9ef269fb7a7ddf5db.jpg	2026-04-14 12:10:53.744411	4.50	Denim	Green
24047	jeans-39	Grey Baggy Premium Denim	Essential Mart	men	jeans	7022.00	5267.00	25	https://images.unsplash.com/photo-1541099649105-f69ad21f3246?q=80&w=1000	2026-04-14 12:10:53.745798	4.10	Chiffon	Pink
24048	jeans-40	Light Wash Skinny Premium Denim	H&M	men	jeans	4865.00	2043.00	58	https://images.unsplash.com/photo-1582552938357-32b906df40cb?q=80&w=1000	2026-04-14 12:10:53.747022	4.40	Georgette	Black
24049	tshirt-1	Polo Cotton Tee	Levi's	men	tshirts	5878.00	3997.00	32	https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg	2026-04-14 12:10:53.749167	4.00	Chiffon	Blue
24050	tshirt-2	V-Neck Linen Tee	Snitch	men	tshirts	1715.00	686.00	60	https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg	2026-04-14 12:10:53.75087	4.90	Georgette	White
24051	tshirt-3	Round Neck Blended Tee	Zara	men	tshirts	7816.00	4846.00	38	https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg	2026-04-14 12:10:53.752492	4.80	Leather	Green
24052	tshirt-4	Henley Cotton Tee	Essential Mart	men	tshirts	7650.00	5661.00	26	https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg	2026-04-14 12:10:53.753875	4.90	Silk	Black
24053	tshirt-5	Polo Linen Tee	H&M	men	tshirts	3803.00	1635.00	57	https://i.pinimg.com/736x/aa/97/37/aa973704d33cadbe9a7f626563f22265.jpg	2026-04-14 12:10:53.754985	4.00	Denim	Red
24054	tshirt-6	V-Neck Blended Tee	Levi's	men	tshirts	6707.00	2817.00	58	https://i.pinimg.com/736x/ca/93/ce/ca93ceea168c3db8b4cf644dd4e9eab1.jpg	2026-04-14 12:10:53.756099	4.90	Cotton	Black
24055	tshirt-7	Round Neck Cotton Tee	Snitch	men	tshirts	2882.00	1326.00	54	https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg	2026-04-14 12:10:53.757816	4.30	Cotton	Grey
24056	tshirt-8	Henley Linen Tee	Zara	men	tshirts	3791.00	2199.00	42	https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg	2026-04-14 12:10:53.75966	4.10	Leather	Pink
24057	tshirt-9	Polo Blended Tee	Essential Mart	men	tshirts	1513.00	620.00	59	https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg	2026-04-14 12:10:53.761305	5.00	Georgette	Gold
24058	tshirt-10	V-Neck Cotton Tee	H&M	men	tshirts	2629.00	1288.00	51	https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg	2026-04-14 12:10:53.762817	4.80	Chiffon	Red
24059	tshirt-11	Round Neck Linen Tee	Levi's	men	tshirts	4415.00	3576.00	19	https://i.pinimg.com/736x/aa/97/37/aa973704d33cadbe9a7f626563f22265.jpg	2026-04-14 12:10:53.764001	4.10	Denim	White
24060	tshirt-12	Henley Blended Tee	Snitch	men	tshirts	7116.00	5479.00	23	https://i.pinimg.com/736x/ca/93/ce/ca93ceea168c3db8b4cf644dd4e9eab1.jpg	2026-04-14 12:10:53.765028	4.70	Leather	Black
24061	tshirt-13	Polo Cotton Tee	Zara	men	tshirts	5766.00	3460.00	40	https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg	2026-04-14 12:10:53.766233	4.00	Cotton	Beige
24062	tshirt-14	V-Neck Linen Tee	Essential Mart	men	tshirts	7663.00	4674.00	39	https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg	2026-04-14 12:10:53.767687	4.00	Linen	Gold
24063	tshirt-15	Round Neck Blended Tee	H&M	men	tshirts	4564.00	2373.00	48	https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg	2026-04-14 12:10:53.768701	4.50	Cotton	Gold
24064	tshirt-16	Henley Cotton Tee	Levi's	men	tshirts	3870.00	1625.00	58	https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg	2026-04-14 12:10:53.76969	4.80	Leather	Grey
24065	tshirt-17	Polo Linen Tee	Snitch	men	tshirts	3644.00	2915.00	20	https://i.pinimg.com/736x/aa/97/37/aa973704d33cadbe9a7f626563f22265.jpg	2026-04-14 12:10:53.770785	4.90	Denim	Gold
24066	tshirt-18	V-Neck Blended Tee	Zara	men	tshirts	2211.00	1172.00	47	https://i.pinimg.com/736x/ca/93/ce/ca93ceea168c3db8b4cf644dd4e9eab1.jpg	2026-04-14 12:10:53.771889	4.00	Leather	Red
24067	tshirt-19	Round Neck Cotton Tee	Essential Mart	men	tshirts	3996.00	2637.00	34	https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg	2026-04-14 12:10:53.772907	4.30	Silk	White
24068	tshirt-20	Henley Linen Tee	H&M	men	tshirts	2409.00	1999.00	17	https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg	2026-04-14 12:10:53.774026	4.30	Polyester	Beige
24069	tshirt-21	Polo Blended Tee	Levi's	men	tshirts	4226.00	1859.00	56	https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg	2026-04-14 12:10:53.775805	4.40	Denim	Pink
24070	tshirt-22	V-Neck Cotton Tee	Snitch	men	tshirts	5708.00	3939.00	31	https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg	2026-04-14 12:10:53.777552	4.10	Chiffon	Pink
24071	tshirt-23	Round Neck Linen Tee	Zara	men	tshirts	1829.00	732.00	60	https://i.pinimg.com/736x/aa/97/37/aa973704d33cadbe9a7f626563f22265.jpg	2026-04-14 12:10:53.779244	5.00	Chiffon	Pink
24072	tshirt-24	Henley Blended Tee	Essential Mart	men	tshirts	7841.00	6508.00	17	https://i.pinimg.com/736x/ca/93/ce/ca93ceea168c3db8b4cf644dd4e9eab1.jpg	2026-04-14 12:10:53.780847	3.90	Georgette	Green
24073	tshirt-25	Polo Cotton Tee	H&M	men	tshirts	6691.00	3747.00	44	https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg	2026-04-14 12:10:53.782732	4.30	Leather	Green
24074	tshirt-26	V-Neck Linen Tee	Levi's	men	tshirts	5226.00	3815.00	27	https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg	2026-04-14 12:10:53.784057	4.80	Linen	Gold
24075	tshirt-27	Round Neck Blended Tee	Snitch	men	tshirts	4922.00	3298.00	33	https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg	2026-04-14 12:10:53.785306	3.90	Cotton	White
24076	tshirt-28	Henley Cotton Tee	Zara	men	tshirts	2861.00	1688.00	41	https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg	2026-04-14 12:10:53.786744	5.00	Denim	Black
24077	tshirt-29	Polo Linen Tee	Essential Mart	men	tshirts	5241.00	3302.00	37	https://i.pinimg.com/736x/aa/97/37/aa973704d33cadbe9a7f626563f22265.jpg	2026-04-14 12:10:53.787862	4.50	Polyester	Red
24078	tshirt-30	V-Neck Blended Tee	H&M	men	tshirts	4948.00	2622.00	47	https://i.pinimg.com/736x/ca/93/ce/ca93ceea168c3db8b4cf644dd4e9eab1.jpg	2026-04-14 12:10:53.788881	4.00	Georgette	Pink
24079	tshirt-31	Round Neck Cotton Tee	Levi's	men	tshirts	1595.00	1340.00	16	https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg	2026-04-14 12:10:53.790142	4.90	Denim	Beige
24080	tshirt-32	Henley Linen Tee	Snitch	men	tshirts	6245.00	4746.00	24	https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg	2026-04-14 12:10:53.791285	3.90	Linen	Blue
24081	tshirt-33	Polo Blended Tee	Zara	men	tshirts	2113.00	1585.00	25	https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg	2026-04-14 12:10:53.792322	3.90	Polyester	Green
24082	tshirt-34	V-Neck Cotton Tee	Essential Mart	men	tshirts	7891.00	4182.00	47	https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg	2026-04-14 12:10:53.79332	4.70	Linen	Pink
24083	tshirt-35	Round Neck Linen Tee	H&M	men	tshirts	7780.00	4824.00	38	https://i.pinimg.com/736x/aa/97/37/aa973704d33cadbe9a7f626563f22265.jpg	2026-04-14 12:10:53.794376	4.30	Cotton	Black
24084	tshirt-36	Henley Blended Tee	Levi's	men	tshirts	4487.00	2782.00	38	https://i.pinimg.com/736x/ca/93/ce/ca93ceea168c3db8b4cf644dd4e9eab1.jpg	2026-04-14 12:10:53.79602	4.30	Georgette	Red
24085	tshirt-37	Polo Cotton Tee	Snitch	men	tshirts	2225.00	1202.00	46	https://i.pinimg.com/736x/a2/70/dd/a270dd7b6259fefd7ad1e022af073a5c.jpg	2026-04-14 12:10:53.797452	4.80	Cotton	Gold
24086	tshirt-38	V-Neck Linen Tee	Zara	men	tshirts	5032.00	2214.00	56	https://i.pinimg.com/1200x/72/45/42/7245428dc23a052bd63728c3569f732a.jpg	2026-04-14 12:10:53.79865	4.60	Leather	Red
24087	tshirt-39	Round Neck Blended Tee	Essential Mart	men	tshirts	6887.00	3237.00	53	https://i.pinimg.com/1200x/59/76/2d/59762db04d50442fe2119a8334b7c923.jpg	2026-04-14 12:10:53.799687	4.70	Georgette	White
24088	tshirt-40	Henley Cotton Tee	H&M	men	tshirts	7054.00	4726.00	33	https://i.pinimg.com/1200x/18/18/86/181886b981551a8254c6e65dcc615d90.jpg	2026-04-14 12:10:53.800678	4.00	Georgette	Gold
24089	boot-1	Chelsea Boots Leather Boot	Timberland	men	boots	7810.00	3671.00	53	https://i.pinimg.com/1200x/f3/36/c9/f336c9aeef0764005b964a33e289a388.jpg	2026-04-14 12:10:53.802085	4.70	Georgette	Gold
24090	boot-2	Combat Boots Suede Boot	Snitch	men	boots	3969.00	2937.00	26	https://i.pinimg.com/1200x/4d/c0/e5/4dc0e5d18904304650e9c0f71bc73d97.jpg	2026-04-14 12:10:53.803253	4.70	Leather	Black
24091	boot-3	Chukka Boots Synthetic Boot	Zara	men	boots	4798.00	3167.00	34	https://img.fantaskycdn.com/617ee88610b32e5463de723069c14f96_1024x.jpeg	2026-04-14 12:10:53.804246	4.70	Silk	Pink
24092	boot-4	Work Boots Leather Boot	Essential Mart	men	boots	4577.00	3250.00	29	https://i.pinimg.com/736x/e8/30/c4/e830c4943bb1b74d724faf0821942836.jpg	2026-04-14 12:10:53.805296	3.90	Georgette	White
24093	boot-5	Chelsea Boots Suede Boot	Timberland	men	boots	7748.00	4106.00	47	https://i.pinimg.com/736x/9f/b3/67/9fb367b422f6c0974f9c7745e95c37f7.jpg	2026-04-14 12:10:53.806665	4.10	Cotton	Black
24094	boot-6	Combat Boots Synthetic Boot	Snitch	men	boots	4875.00	3949.00	19	https://i.pinimg.com/736x/16/9d/d5/169dd5438a3087ee4a9258928b7d3d34.jpg	2026-04-14 12:10:53.80793	4.00	Polyester	Black
24095	boot-7	Chukka Boots Leather Boot	Zara	men	boots	4939.00	4099.00	17	https://i.pinimg.com/736x/f4/28/77/f4287724aaf70e117b619ef58562a45e.jpg	2026-04-14 12:10:53.80966	4.50	Chiffon	Red
24096	boot-8	Work Boots Suede Boot	Essential Mart	men	boots	1469.00	617.00	58	https://i.pinimg.com/736x/24/9e/ff/249effd901edfa98229cf1689dabc0b2.jpg	2026-04-14 12:10:53.810838	4.60	Linen	Grey
24097	boot-9	Chelsea Boots Synthetic Boot	Timberland	men	boots	1484.00	1039.00	30	https://i.pinimg.com/1200x/f3/36/c9/f336c9aeef0764005b964a33e289a388.jpg	2026-04-14 12:10:53.812381	4.70	Linen	Black
24098	boot-10	Combat Boots Leather Boot	Snitch	men	boots	7769.00	4428.00	43	https://i.pinimg.com/1200x/4d/c0/e5/4dc0e5d18904304650e9c0f71bc73d97.jpg	2026-04-14 12:10:53.81356	4.00	Cotton	Gold
24099	boot-11	Chukka Boots Suede Boot	Zara	men	boots	1259.00	743.00	41	https://img.fantaskycdn.com/617ee88610b32e5463de723069c14f96_1024x.jpeg	2026-04-14 12:10:53.814655	3.90	Denim	Pink
24100	boot-12	Work Boots Synthetic Boot	Essential Mart	men	boots	5889.00	3416.00	42	https://i.pinimg.com/736x/e8/30/c4/e830c4943bb1b74d724faf0821942836.jpg	2026-04-14 12:10:53.815743	4.30	Denim	Red
24101	boot-13	Chelsea Boots Leather Boot	Timberland	men	boots	7313.00	3876.00	47	https://i.pinimg.com/736x/9f/b3/67/9fb367b422f6c0974f9c7745e95c37f7.jpg	2026-04-14 12:10:53.817114	4.80	Chiffon	Red
24102	boot-14	Combat Boots Suede Boot	Snitch	men	boots	1170.00	608.00	48	https://i.pinimg.com/736x/16/9d/d5/169dd5438a3087ee4a9258928b7d3d34.jpg	2026-04-14 12:10:53.81827	4.90	Leather	Gold
24103	boot-15	Chukka Boots Synthetic Boot	Zara	men	boots	3792.00	2427.00	36	https://i.pinimg.com/736x/f4/28/77/f4287724aaf70e117b619ef58562a45e.jpg	2026-04-14 12:10:53.81951	4.60	Linen	Blue
24104	boot-16	Work Boots Leather Boot	Essential Mart	men	boots	4318.00	2591.00	40	https://i.pinimg.com/736x/24/9e/ff/249effd901edfa98229cf1689dabc0b2.jpg	2026-04-14 12:10:53.820856	4.60	Polyester	Green
24105	boot-17	Chelsea Boots Suede Boot	Timberland	men	boots	3500.00	2870.00	18	https://i.pinimg.com/1200x/f3/36/c9/f336c9aeef0764005b964a33e289a388.jpg	2026-04-14 12:10:53.822279	4.10	Georgette	Pink
24106	boot-18	Combat Boots Synthetic Boot	Snitch	men	boots	7903.00	4268.00	46	https://i.pinimg.com/1200x/4d/c0/e5/4dc0e5d18904304650e9c0f71bc73d97.jpg	2026-04-14 12:10:53.82348	4.90	Leather	Black
24107	boot-19	Chukka Boots Leather Boot	Zara	men	boots	1078.00	787.00	27	https://img.fantaskycdn.com/617ee88610b32e5463de723069c14f96_1024x.jpeg	2026-04-14 12:10:53.825137	4.90	Cotton	Gold
24108	boot-20	Work Boots Suede Boot	Essential Mart	men	boots	5980.00	4066.00	32	https://i.pinimg.com/736x/e8/30/c4/e830c4943bb1b74d724faf0821942836.jpg	2026-04-14 12:10:53.827225	4.30	Linen	Green
24109	boot-21	Chelsea Boots Synthetic Boot	Timberland	men	boots	6507.00	3709.00	43	https://i.pinimg.com/736x/9f/b3/67/9fb367b422f6c0974f9c7745e95c37f7.jpg	2026-04-14 12:10:53.829218	4.90	Denim	Blue
24110	boot-22	Combat Boots Leather Boot	Snitch	men	boots	3854.00	2659.00	31	https://i.pinimg.com/736x/16/9d/d5/169dd5438a3087ee4a9258928b7d3d34.jpg	2026-04-14 12:10:53.831733	4.10	Linen	Gold
24111	boot-23	Chukka Boots Suede Boot	Zara	men	boots	4656.00	3678.00	21	https://i.pinimg.com/736x/f4/28/77/f4287724aaf70e117b619ef58562a45e.jpg	2026-04-14 12:10:53.832973	4.00	Linen	Grey
24112	boot-24	Work Boots Synthetic Boot	Essential Mart	men	boots	7687.00	6303.00	18	https://i.pinimg.com/736x/24/9e/ff/249effd901edfa98229cf1689dabc0b2.jpg	2026-04-14 12:10:53.834138	4.00	Georgette	Beige
24113	boot-25	Chelsea Boots Leather Boot	Timberland	men	boots	5489.00	3842.00	30	https://i.pinimg.com/1200x/f3/36/c9/f336c9aeef0764005b964a33e289a388.jpg	2026-04-14 12:10:53.835258	4.50	Silk	Black
24114	boot-26	Combat Boots Suede Boot	Snitch	men	boots	1975.00	1383.00	30	https://i.pinimg.com/1200x/4d/c0/e5/4dc0e5d18904304650e9c0f71bc73d97.jpg	2026-04-14 12:10:53.837076	4.90	Linen	Pink
24115	boot-27	Chukka Boots Synthetic Boot	Zara	men	boots	5339.00	2563.00	52	https://img.fantaskycdn.com/617ee88610b32e5463de723069c14f96_1024x.jpeg	2026-04-14 12:10:53.838444	4.80	Polyester	Green
24116	boot-28	Work Boots Leather Boot	Essential Mart	men	boots	6458.00	4779.00	26	https://i.pinimg.com/736x/e8/30/c4/e830c4943bb1b74d724faf0821942836.jpg	2026-04-14 12:10:53.839609	4.40	Silk	Gold
24117	boot-29	Chelsea Boots Suede Boot	Timberland	men	boots	3215.00	2251.00	30	https://i.pinimg.com/736x/9f/b3/67/9fb367b422f6c0974f9c7745e95c37f7.jpg	2026-04-14 12:10:53.840799	4.70	Leather	Green
24118	boot-30	Combat Boots Synthetic Boot	Snitch	men	boots	1737.00	782.00	55	https://i.pinimg.com/736x/16/9d/d5/169dd5438a3087ee4a9258928b7d3d34.jpg	2026-04-14 12:10:53.841918	4.90	Cotton	Black
24119	boot-31	Chukka Boots Leather Boot	Zara	men	boots	3414.00	1809.00	47	https://i.pinimg.com/736x/f4/28/77/f4287724aaf70e117b619ef58562a45e.jpg	2026-04-14 12:10:53.843046	4.20	Silk	Pink
24120	boot-32	Work Boots Suede Boot	Essential Mart	men	boots	4106.00	1725.00	58	https://i.pinimg.com/736x/24/9e/ff/249effd901edfa98229cf1689dabc0b2.jpg	2026-04-14 12:10:53.844335	4.30	Chiffon	Beige
24121	boot-33	Chelsea Boots Synthetic Boot	Timberland	men	boots	5963.00	2564.00	57	https://i.pinimg.com/1200x/f3/36/c9/f336c9aeef0764005b964a33e289a388.jpg	2026-04-14 12:10:53.846263	3.80	Chiffon	Gold
24122	boot-34	Combat Boots Leather Boot	Snitch	men	boots	5817.00	2676.00	54	https://i.pinimg.com/1200x/4d/c0/e5/4dc0e5d18904304650e9c0f71bc73d97.jpg	2026-04-14 12:10:53.847764	4.40	Cotton	Gold
24123	boot-35	Chukka Boots Suede Boot	Zara	men	boots	5945.00	4875.00	18	https://img.fantaskycdn.com/617ee88610b32e5463de723069c14f96_1024x.jpeg	2026-04-14 12:10:53.848933	4.80	Linen	Grey
24124	boot-36	Work Boots Synthetic Boot	Essential Mart	men	boots	5980.00	3409.00	43	https://i.pinimg.com/736x/e8/30/c4/e830c4943bb1b74d724faf0821942836.jpg	2026-04-14 12:10:53.850147	4.30	Cotton	Blue
24125	boot-37	Chelsea Boots Leather Boot	Timberland	men	boots	6212.00	4659.00	25	https://i.pinimg.com/736x/9f/b3/67/9fb367b422f6c0974f9c7745e95c37f7.jpg	2026-04-14 12:10:53.851576	4.00	Chiffon	Beige
24126	boot-38	Combat Boots Suede Boot	Snitch	men	boots	7685.00	6455.00	16	https://i.pinimg.com/736x/16/9d/d5/169dd5438a3087ee4a9258928b7d3d34.jpg	2026-04-14 12:10:53.852701	4.50	Silk	Pink
24127	boot-39	Chukka Boots Synthetic Boot	Zara	men	boots	7554.00	5968.00	21	https://i.pinimg.com/736x/f4/28/77/f4287724aaf70e117b619ef58562a45e.jpg	2026-04-14 12:10:53.853756	4.20	Cotton	Grey
24128	boot-40	Work Boots Leather Boot	Essential Mart	men	boots	4519.00	2305.00	49	https://i.pinimg.com/736x/24/9e/ff/249effd901edfa98229cf1689dabc0b2.jpg	2026-04-14 12:10:53.854887	3.90	Cotton	Red
24129	shorts-1	Cargo Shorts Cotton	Levi's	men	shorts-and-3	6880.00	3784.00	45	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.856642	4.50	Linen	Gold
24130	shorts-2	Denim Shorts Linen	Snitch	men	shorts-and-3	4934.00	3059.00	38	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.857992	4.70	Denim	Grey
24131	shorts-3	Chino Shorts Denim	Zara	men	shorts-and-3	1133.00	906.00	20	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.859149	4.20	Linen	White
24132	shorts-4	3/4ths Cotton	Essential Mart	men	shorts-and-3	6962.00	5082.00	27	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.860212	4.70	Cotton	Red
24133	shorts-5	Cargo Shorts Linen	Levi's	men	shorts-and-3	7174.00	4663.00	35	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.86141	4.60	Polyester	White
24134	shorts-6	Denim Shorts Denim	Snitch	men	shorts-and-3	3491.00	2269.00	35	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.862633	5.00	Denim	Gold
24135	shorts-7	Chino Shorts Cotton	Zara	men	shorts-and-3	1167.00	934.00	20	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.863699	4.50	Polyester	White
24136	shorts-8	3/4ths Linen	Essential Mart	men	shorts-and-3	2590.00	1321.00	49	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.864779	4.90	Georgette	Green
24137	shorts-9	Cargo Shorts Denim	Levi's	men	shorts-and-3	6222.00	5164.00	17	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.865879	3.90	Linen	Gold
24138	shorts-10	Denim Shorts Cotton	Snitch	men	shorts-and-3	6899.00	2760.00	60	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.867187	4.40	Leather	Pink
24139	shorts-11	Chino Shorts Linen	Zara	men	shorts-and-3	3364.00	1346.00	60	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.869029	4.50	Leather	Red
24140	shorts-12	3/4ths Denim	Essential Mart	men	shorts-and-3	6107.00	2870.00	53	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.870575	4.30	Georgette	Beige
24141	shorts-13	Cargo Shorts Cotton	Levi's	men	shorts-and-3	7303.00	5404.00	26	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.872169	4.10	Silk	Blue
24142	shorts-14	Denim Shorts Linen	Snitch	men	shorts-and-3	6209.00	2608.00	58	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.873851	3.90	Chiffon	Green
24143	shorts-15	Chino Shorts Denim	Zara	men	shorts-and-3	4131.00	3429.00	17	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.875817	4.50	Georgette	Grey
24144	shorts-16	3/4ths Cotton	Essential Mart	men	shorts-and-3	1749.00	822.00	53	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.877509	4.70	Georgette	Grey
24145	shorts-17	Cargo Shorts Linen	Levi's	men	shorts-and-3	2451.00	1936.00	21	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.87934	3.90	Linen	Black
24146	shorts-18	Denim Shorts Denim	Snitch	men	shorts-and-3	6832.00	4441.00	35	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.88153	4.60	Chiffon	Beige
24147	shorts-19	Chino Shorts Cotton	Zara	men	shorts-and-3	4352.00	3133.00	28	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.883138	4.60	Polyester	Grey
24148	shorts-20	3/4ths Linen	Essential Mart	men	shorts-and-3	1084.00	705.00	35	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.884514	4.30	Polyester	Gold
24149	shorts-21	Cargo Shorts Denim	Levi's	men	shorts-and-3	4084.00	2246.00	45	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.885739	4.40	Linen	Black
24150	shorts-22	Denim Shorts Cotton	Snitch	men	shorts-and-3	2801.00	1933.00	31	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.887009	4.40	Linen	Gold
24151	shorts-23	Chino Shorts Linen	Zara	men	shorts-and-3	7660.00	4902.00	36	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.888088	4.70	Leather	Blue
24152	shorts-24	3/4ths Denim	Essential Mart	men	shorts-and-3	5238.00	3300.00	37	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.889145	4.30	Polyester	Green
24153	shorts-25	Cargo Shorts Cotton	Levi's	men	shorts-and-3	7394.00	3845.00	48	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.890295	3.90	Leather	Grey
24154	shorts-26	Denim Shorts Linen	Snitch	men	shorts-and-3	6164.00	3329.00	46	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.891358	4.20	Cotton	Pink
24155	shorts-27	Chino Shorts Denim	Zara	men	shorts-and-3	3557.00	2632.00	26	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.892415	4.30	Georgette	Black
24156	shorts-28	3/4ths Cotton	Essential Mart	men	shorts-and-3	3325.00	1397.00	58	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.893465	4.20	Cotton	Pink
24157	shorts-29	Cargo Shorts Linen	Levi's	men	shorts-and-3	1141.00	901.00	21	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.894641	4.10	Denim	Black
24158	shorts-30	Denim Shorts Denim	Snitch	men	shorts-and-3	1828.00	1536.00	16	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.895919	4.70	Linen	Grey
24159	shorts-31	Chino Shorts Cotton	Zara	men	shorts-and-3	3371.00	2393.00	29	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.896999	4.80	Denim	White
24160	shorts-32	3/4ths Linen	Essential Mart	men	shorts-and-3	7495.00	3598.00	52	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.898264	5.00	Denim	Blue
24161	shorts-33	Cargo Shorts Denim	Levi's	men	shorts-and-3	3536.00	2122.00	40	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.899355	4.60	Leather	Black
24162	shorts-34	Denim Shorts Cotton	Snitch	men	shorts-and-3	3129.00	1345.00	57	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.900424	4.30	Georgette	Pink
24163	shorts-35	Chino Shorts Linen	Zara	men	shorts-and-3	3571.00	1571.00	56	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.901469	4.60	Georgette	Red
24164	shorts-36	3/4ths Denim	Essential Mart	men	shorts-and-3	2401.00	2041.00	15	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.902536	4.40	Polyester	Red
24165	shorts-37	Cargo Shorts Cotton	Levi's	men	shorts-and-3	4088.00	2575.00	37	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.903652	4.80	Chiffon	White
24166	shorts-38	Denim Shorts Linen	Snitch	men	shorts-and-3	6334.00	3674.00	42	https://images.unsplash.com/photo-1617135671695-99af119685e3?q=80&w=1000	2026-04-14 12:10:53.904773	4.50	Polyester	Green
24167	shorts-39	Chino Shorts Denim	Zara	men	shorts-and-3	4993.00	2646.00	47	https://images.unsplash.com/photo-1508296695146-257a814070b4?q=80&w=1000	2026-04-14 12:10:53.905831	3.80	Chiffon	Beige
24168	shorts-40	3/4ths Cotton	Essential Mart	men	shorts-and-3	3605.00	3064.00	15	https://images.unsplash.com/photo-1591195853828-11db59a44f6b?q=80&w=1000	2026-04-14 12:10:53.906914	4.70	Chiffon	White
24169	stole-1	Embroidered Stole in Silk	Manyavar	men	stoles	3633.00	1962.00	46	https://i.pinimg.com/1200x/4e/5b/d0/4e5bd0ec99b3bdc2edf0f366f69045a5.jpg	2026-04-14 12:10:53.908491	5.00	Denim	White
24170	stole-2	Silk Stole in Cotton	Sabyasachi	men	stoles	7031.00	4289.00	39	https://i.pinimg.com/736x/af/3f/9c/af3f9c1a765d3344810c5039974471d1.jpg	2026-04-14 12:10:53.909992	4.10	Denim	Pink
24171	stole-3	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	2905.00	1220.00	58	https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=1000	2026-04-14 12:10:53.911471	4.10	Cotton	Gold
24172	stole-4	Chanderi Stole in Georgette	Ethnix	men	stoles	7257.00	6168.00	15	https://i.pinimg.com/736x/9a/a5/b7/9aa5b70f3a087f26bcbe3fe23c8ff1ea.jpg	2026-04-14 12:10:53.912848	4.80	Cotton	Grey
24173	stole-5	Embroidered Stole in Silk	Manyavar	men	stoles	6080.00	4317.00	29	https://i.pinimg.com/736x/2e/2f/05/2e2f05a48e5dd463f206ad46ac3ff4e6.jpg	2026-04-14 12:10:53.91425	4.80	Silk	Beige
24174	stole-6	Silk Stole in Cotton	Sabyasachi	men	stoles	6722.00	3899.00	42	https://i.pinimg.com/736x/ad/71/9f/ad719fac840ee7ca461cabb30d1e6c12.jpg	2026-04-14 12:10:53.915591	3.90	Denim	Blue
24175	stole-7	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	6617.00	5294.00	20	https://i.pinimg.com/736x/52/a1/62/52a1629144480817f49388546bda2abd.jpg	2026-04-14 12:10:53.916758	3.90	Cotton	Gold
24176	stole-8	Chanderi Stole in Georgette	Ethnix	men	stoles	3251.00	1886.00	42	https://i.pinimg.com/1200x/4e/5b/d0/4e5bd0ec99b3bdc2edf0f366f69045a5.jpg	2026-04-14 12:10:53.918119	4.20	Chiffon	Beige
24177	stole-9	Embroidered Stole in Silk	Manyavar	men	stoles	7168.00	3512.00	51	https://i.pinimg.com/736x/af/3f/9c/af3f9c1a765d3344810c5039974471d1.jpg	2026-04-14 12:10:53.919301	4.80	Silk	White
24178	stole-10	Silk Stole in Cotton	Sabyasachi	men	stoles	6599.00	3497.00	47	https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=1000	2026-04-14 12:10:53.920619	3.90	Chiffon	White
24179	stole-11	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	2369.00	1564.00	34	https://i.pinimg.com/736x/9a/a5/b7/9aa5b70f3a087f26bcbe3fe23c8ff1ea.jpg	2026-04-14 12:10:53.921857	3.90	Chiffon	Blue
24180	stole-12	Chanderi Stole in Georgette	Ethnix	men	stoles	3520.00	2851.00	19	https://i.pinimg.com/736x/2e/2f/05/2e2f05a48e5dd463f206ad46ac3ff4e6.jpg	2026-04-14 12:10:53.92334	4.90	Denim	Grey
24181	stole-13	Embroidered Stole in Silk	Manyavar	men	stoles	6475.00	5180.00	20	https://i.pinimg.com/736x/ad/71/9f/ad719fac840ee7ca461cabb30d1e6c12.jpg	2026-04-14 12:10:53.924638	4.20	Linen	Green
24182	stole-14	Silk Stole in Cotton	Sabyasachi	men	stoles	5489.00	3293.00	40	https://i.pinimg.com/736x/52/a1/62/52a1629144480817f49388546bda2abd.jpg	2026-04-14 12:10:53.925698	4.30	Cotton	Beige
24183	stole-15	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	6596.00	5343.00	19	https://i.pinimg.com/1200x/4e/5b/d0/4e5bd0ec99b3bdc2edf0f366f69045a5.jpg	2026-04-14 12:10:53.927112	4.70	Chiffon	Grey
24184	stole-16	Chanderi Stole in Georgette	Ethnix	men	stoles	4720.00	2266.00	52	https://i.pinimg.com/736x/af/3f/9c/af3f9c1a765d3344810c5039974471d1.jpg	2026-04-14 12:10:53.928319	4.80	Leather	Red
24185	stole-17	Embroidered Stole in Silk	Manyavar	men	stoles	1811.00	1123.00	38	https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=1000	2026-04-14 12:10:53.93011	4.00	Linen	Pink
24186	stole-18	Silk Stole in Cotton	Sabyasachi	men	stoles	4692.00	2768.00	41	https://i.pinimg.com/736x/9a/a5/b7/9aa5b70f3a087f26bcbe3fe23c8ff1ea.jpg	2026-04-14 12:10:53.931444	4.10	Denim	Blue
24187	stole-19	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	1781.00	873.00	51	https://i.pinimg.com/736x/2e/2f/05/2e2f05a48e5dd463f206ad46ac3ff4e6.jpg	2026-04-14 12:10:53.932625	4.70	Denim	Gold
24188	stole-20	Chanderi Stole in Georgette	Ethnix	men	stoles	3159.00	1895.00	40	https://i.pinimg.com/736x/ad/71/9f/ad719fac840ee7ca461cabb30d1e6c12.jpg	2026-04-14 12:10:53.933832	5.00	Silk	Pink
24189	stole-21	Embroidered Stole in Silk	Manyavar	men	stoles	3272.00	1472.00	55	https://i.pinimg.com/736x/52/a1/62/52a1629144480817f49388546bda2abd.jpg	2026-04-14 12:10:53.935115	4.30	Denim	Pink
24190	stole-22	Silk Stole in Cotton	Sabyasachi	men	stoles	2016.00	927.00	54	https://i.pinimg.com/1200x/4e/5b/d0/4e5bd0ec99b3bdc2edf0f366f69045a5.jpg	2026-04-14 12:10:53.936949	4.30	Chiffon	Beige
24191	stole-23	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	6449.00	3676.00	43	https://i.pinimg.com/736x/af/3f/9c/af3f9c1a765d3344810c5039974471d1.jpg	2026-04-14 12:10:53.938291	4.20	Silk	Blue
24192	stole-24	Chanderi Stole in Georgette	Ethnix	men	stoles	7320.00	4465.00	39	https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=1000	2026-04-14 12:10:53.939532	4.30	Denim	Beige
24193	stole-25	Embroidered Stole in Silk	Manyavar	men	stoles	4080.00	2162.00	47	https://i.pinimg.com/736x/9a/a5/b7/9aa5b70f3a087f26bcbe3fe23c8ff1ea.jpg	2026-04-14 12:10:53.940618	3.90	Chiffon	Gold
24194	stole-26	Silk Stole in Cotton	Sabyasachi	men	stoles	2354.00	1860.00	21	https://i.pinimg.com/736x/2e/2f/05/2e2f05a48e5dd463f206ad46ac3ff4e6.jpg	2026-04-14 12:10:53.941677	4.20	Leather	Green
24195	stole-27	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	3166.00	2153.00	32	https://i.pinimg.com/736x/ad/71/9f/ad719fac840ee7ca461cabb30d1e6c12.jpg	2026-04-14 12:10:53.942731	4.00	Chiffon	Green
24196	stole-28	Chanderi Stole in Georgette	Ethnix	men	stoles	7705.00	6472.00	16	https://i.pinimg.com/736x/52/a1/62/52a1629144480817f49388546bda2abd.jpg	2026-04-14 12:10:53.943916	3.90	Silk	Green
24197	stole-29	Embroidered Stole in Silk	Manyavar	men	stoles	3300.00	2211.00	33	https://i.pinimg.com/1200x/4e/5b/d0/4e5bd0ec99b3bdc2edf0f366f69045a5.jpg	2026-04-14 12:10:53.945441	4.20	Polyester	Red
24198	stole-30	Silk Stole in Cotton	Sabyasachi	men	stoles	3770.00	1659.00	56	https://i.pinimg.com/736x/af/3f/9c/af3f9c1a765d3344810c5039974471d1.jpg	2026-04-14 12:10:53.94719	4.70	Polyester	White
24199	stole-31	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	7602.00	6386.00	16	https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=1000	2026-04-14 12:10:53.948813	4.80	Leather	Black
24200	stole-32	Chanderi Stole in Georgette	Ethnix	men	stoles	7290.00	6051.00	17	https://i.pinimg.com/736x/9a/a5/b7/9aa5b70f3a087f26bcbe3fe23c8ff1ea.jpg	2026-04-14 12:10:53.950442	4.50	Silk	Gold
24201	stole-33	Embroidered Stole in Silk	Manyavar	men	stoles	1632.00	800.00	51	https://i.pinimg.com/736x/2e/2f/05/2e2f05a48e5dd463f206ad46ac3ff4e6.jpg	2026-04-14 12:10:53.951636	4.60	Denim	White
24202	stole-34	Silk Stole in Cotton	Sabyasachi	men	stoles	7576.00	3712.00	51	https://i.pinimg.com/736x/ad/71/9f/ad719fac840ee7ca461cabb30d1e6c12.jpg	2026-04-14 12:10:53.95302	3.90	Polyester	Beige
24203	stole-35	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	3936.00	2558.00	35	https://i.pinimg.com/736x/52/a1/62/52a1629144480817f49388546bda2abd.jpg	2026-04-14 12:10:53.954712	4.80	Georgette	Red
24204	stole-36	Chanderi Stole in Georgette	Ethnix	men	stoles	6474.00	4338.00	33	https://i.pinimg.com/1200x/4e/5b/d0/4e5bd0ec99b3bdc2edf0f366f69045a5.jpg	2026-04-14 12:10:53.956031	4.80	Silk	Red
24205	stole-37	Embroidered Stole in Silk	Manyavar	men	stoles	2645.00	1561.00	41	https://i.pinimg.com/736x/af/3f/9c/af3f9c1a765d3344810c5039974471d1.jpg	2026-04-14 12:10:53.957208	4.00	Polyester	Green
24206	stole-38	Silk Stole in Cotton	Sabyasachi	men	stoles	7573.00	3484.00	54	https://images.unsplash.com/photo-1520903920243-00d872a2d1c9?q=80&w=1000	2026-04-14 12:10:53.95847	4.50	Silk	Red
24207	stole-39	Banarasi Stole in Chiffon	Anita Dongre	men	stoles	4698.00	3899.00	17	https://i.pinimg.com/736x/9a/a5/b7/9aa5b70f3a087f26bcbe3fe23c8ff1ea.jpg	2026-04-14 12:10:53.959654	3.80	Georgette	Black
24208	stole-40	Chanderi Stole in Georgette	Ethnix	men	stoles	6960.00	5498.00	21	https://i.pinimg.com/736x/2e/2f/05/2e2f05a48e5dd463f206ad46ac3ff4e6.jpg	2026-04-14 12:10:53.961137	4.70	Georgette	Gold
24209	wallet-1	Bifold Wallet in Leather	Hidesign	men	wallets	4060.00	2192.00	46	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:53.963047	4.00	Polyester	Blue
24210	wallet-2	Trifold Wallet in Canvas	Snitch	men	wallets	3245.00	1363.00	58	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:53.964367	4.60	Linen	Pink
24211	wallet-3	Money Clip in Synthetic	Zara	men	wallets	7490.00	4419.00	41	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:53.965898	4.10	Denim	Grey
24212	wallet-4	Card Holder in Leather	Essential Mart	men	wallets	1733.00	1196.00	31	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:53.967173	4.40	Denim	Blue
24213	wallet-5	Bifold Wallet in Canvas	Hidesign	men	wallets	4379.00	3197.00	27	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:53.968825	4.70	Silk	Grey
24214	wallet-6	Trifold Wallet in Synthetic	Snitch	men	wallets	7580.00	5079.00	33	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:53.970225	4.20	Georgette	Beige
24215	wallet-7	Money Clip in Leather	Zara	men	wallets	7808.00	5231.00	33	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:53.971584	4.30	Denim	Green
24216	wallet-8	Card Holder in Canvas	Essential Mart	men	wallets	3945.00	2959.00	25	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:53.9729	4.80	Polyester	White
24217	wallet-9	Bifold Wallet in Synthetic	Hidesign	men	wallets	3046.00	2345.00	23	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:53.974275	4.80	Chiffon	Pink
24218	wallet-10	Trifold Wallet in Leather	Snitch	men	wallets	1418.00	1035.00	27	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:53.975487	4.50	Denim	Green
24219	wallet-11	Money Clip in Canvas	Zara	men	wallets	6539.00	4250.00	35	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:53.977243	4.40	Leather	Grey
24220	wallet-12	Card Holder in Synthetic	Essential Mart	men	wallets	3386.00	1524.00	55	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:53.978748	4.20	Cotton	White
24221	wallet-13	Bifold Wallet in Leather	Hidesign	men	wallets	7216.00	6134.00	15	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:53.980211	4.40	Linen	Pink
24222	wallet-14	Trifold Wallet in Canvas	Snitch	men	wallets	6361.00	4007.00	37	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:53.981965	4.20	Georgette	Gold
24223	wallet-15	Money Clip in Synthetic	Zara	men	wallets	1556.00	980.00	37	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:53.983582	4.10	Silk	Beige
24224	wallet-16	Card Holder in Leather	Essential Mart	men	wallets	2841.00	1449.00	49	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:53.98511	4.30	Denim	Gold
24225	wallet-17	Bifold Wallet in Canvas	Hidesign	men	wallets	2405.00	1659.00	31	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:53.986422	4.90	Denim	Beige
24226	wallet-18	Trifold Wallet in Synthetic	Snitch	men	wallets	5059.00	3744.00	26	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:53.987739	4.00	Linen	Green
24227	wallet-19	Money Clip in Leather	Zara	men	wallets	3977.00	1909.00	52	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:53.988967	4.20	Linen	Black
24228	wallet-20	Card Holder in Canvas	Essential Mart	men	wallets	4641.00	2413.00	48	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:53.99026	4.50	Linen	Green
24229	wallet-21	Bifold Wallet in Synthetic	Hidesign	men	wallets	1158.00	730.00	37	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:53.99171	4.60	Denim	Pink
24230	wallet-22	Trifold Wallet in Leather	Snitch	men	wallets	2233.00	916.00	59	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:53.993206	4.20	Georgette	Black
24231	wallet-23	Money Clip in Canvas	Zara	men	wallets	4290.00	1759.00	59	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:53.994697	4.30	Polyester	Blue
24232	wallet-24	Card Holder in Synthetic	Essential Mart	men	wallets	5715.00	4286.00	25	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:53.996072	3.90	Georgette	Gold
24233	wallet-25	Bifold Wallet in Leather	Hidesign	men	wallets	2798.00	1567.00	44	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:53.997341	4.40	Georgette	Pink
24234	wallet-26	Trifold Wallet in Canvas	Snitch	men	wallets	5300.00	3869.00	27	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:53.998501	4.10	Georgette	Gold
24235	wallet-27	Money Clip in Synthetic	Zara	men	wallets	1767.00	724.00	59	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:53.999569	4.60	Polyester	Blue
24236	wallet-28	Card Holder in Leather	Essential Mart	men	wallets	4941.00	2767.00	44	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:54.001189	4.90	Leather	Pink
24237	wallet-29	Bifold Wallet in Canvas	Hidesign	men	wallets	2094.00	1487.00	29	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:54.002566	4.30	Polyester	Gold
24238	wallet-30	Trifold Wallet in Synthetic	Snitch	men	wallets	7071.00	5728.00	19	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:54.003791	4.20	Polyester	White
24239	wallet-31	Money Clip in Leather	Zara	men	wallets	4665.00	2426.00	48	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:54.004991	4.50	Georgette	White
24240	wallet-32	Card Holder in Canvas	Essential Mart	men	wallets	7930.00	4362.00	45	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:54.00627	3.90	Polyester	Black
24241	wallet-33	Bifold Wallet in Synthetic	Hidesign	men	wallets	5936.00	4571.00	23	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:54.007478	4.10	Silk	Beige
24242	wallet-34	Trifold Wallet in Leather	Snitch	men	wallets	1885.00	1602.00	15	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:54.008644	4.60	Silk	Blue
24243	wallet-35	Money Clip in Canvas	Zara	men	wallets	3242.00	1880.00	42	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:54.009799	4.00	Cotton	Pink
24244	wallet-36	Card Holder in Synthetic	Essential Mart	men	wallets	1116.00	949.00	15	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:54.011048	4.90	Georgette	Pink
24245	wallet-37	Bifold Wallet in Leather	Hidesign	men	wallets	7047.00	3453.00	51	https://images.unsplash.com/photo-1627123424574-724758594e93?q=80&w=1000	2026-04-14 12:10:54.01226	4.70	Chiffon	Red
24246	wallet-38	Trifold Wallet in Canvas	Snitch	men	wallets	3139.00	2480.00	21	https://i.pinimg.com/736x/b7/ff/9f/b7ff9f71b1ee87ecadfd95446e78c17c.jpg	2026-04-14 12:10:54.01333	4.80	Linen	Blue
24247	wallet-39	Money Clip in Synthetic	Zara	men	wallets	7681.00	3149.00	59	https://i.pinimg.com/1200x/14/1c/6b/141c6b624564603faee1661789d41b95.jpg	2026-04-14 12:10:54.01439	4.90	Linen	Blue
24248	wallet-40	Card Holder in Leather	Essential Mart	men	wallets	5609.00	4487.00	20	https://i.pinimg.com/736x/e0/32/46/e032462259c0ed4b5de3da95ee908f70.jpg	2026-04-14 12:10:54.015442	4.20	Georgette	White
24249	watch-1	Analog Watch with Leather Strap	Fossil	men	watches	4031.00	1814.00	55	https://i.pinimg.com/736x/8e/b7/9c/8eb79c31b5710dcf92dc1cf816fcb772.jpg	2026-04-14 12:10:54.016952	4.80	Leather	Gold
24250	watch-2	Digital Watch with Metal Strap	Snitch	men	watches	5258.00	3838.00	27	https://i.pinimg.com/736x/07/9d/2b/079d2b8d1dccb47788c5345c887d2641.jpg	2026-04-14 12:10:54.018391	4.50	Linen	Beige
24251	watch-3	Chronograph with Silicone Strap	Zara	men	watches	3338.00	2537.00	24	https://i.pinimg.com/736x/d5/6f/5e/d56f5e4e2111a65d0ee8533dfe1719f6.jpg	2026-04-14 12:10:54.019483	4.10	Polyester	White
24252	watch-4	Smartwatch with Leather Strap	Essential Mart	men	watches	5031.00	3522.00	30	https://i.pinimg.com/736x/88/dc/1c/88dc1c3ab7fc882fd7d6e18fedb1efac.jpg	2026-04-14 12:10:54.020541	4.70	Polyester	Pink
24253	watch-5	Analog Watch with Metal Strap	Fossil	men	watches	3932.00	1651.00	58	https://i.pinimg.com/1200x/2d/b1/a4/2db1a465eebc01da388fadb76db828cd.jpg	2026-04-14 12:10:54.021622	4.70	Linen	Beige
24254	watch-6	Digital Watch with Silicone Strap	Snitch	men	watches	4020.00	2452.00	39	https://i.pinimg.com/736x/3e/fc/54/3efc548620fefbd99a21aa8ca3003f84.jpg	2026-04-14 12:10:54.022681	4.30	Polyester	Gold
24255	watch-7	Chronograph with Leather Strap	Zara	men	watches	5439.00	4351.00	20	https://i.pinimg.com/736x/37/68/1f/37681fce8fab071dd3e6a16e62acd96c.jpg	2026-04-14 12:10:54.024159	5.00	Denim	Pink
24256	watch-8	Smartwatch with Metal Strap	Essential Mart	men	watches	1623.00	1039.00	36	https://i.pinimg.com/1200x/ef/05/54/ef0554ab4e35893d6481a0d41798dacd.jpg	2026-04-14 12:10:54.025568	4.40	Denim	White
24257	watch-9	Analog Watch with Silicone Strap	Fossil	men	watches	4559.00	2599.00	43	https://i.pinimg.com/736x/f1/ba/3b/f1ba3bc0104b740b8c1fe8c346984b78.jpg	2026-04-14 12:10:54.027188	4.10	Polyester	Gold
24258	watch-10	Digital Watch with Leather Strap	Snitch	men	watches	1504.00	1008.00	33	https://i.pinimg.com/736x/06/01/eb/0601ebb91eed13f01d5f035ef0dcb6bf.jpg	2026-04-14 12:10:54.028839	4.00	Cotton	Gold
24259	watch-11	Chronograph with Metal Strap	Zara	men	watches	3382.00	2232.00	34	https://i.pinimg.com/736x/8e/b7/9c/8eb79c31b5710dcf92dc1cf816fcb772.jpg	2026-04-14 12:10:54.030637	4.10	Polyester	White
24260	watch-12	Smartwatch with Silicone Strap	Essential Mart	men	watches	2947.00	2004.00	32	https://i.pinimg.com/736x/07/9d/2b/079d2b8d1dccb47788c5345c887d2641.jpg	2026-04-14 12:10:54.032246	4.30	Linen	Pink
24261	watch-13	Analog Watch with Leather Strap	Fossil	men	watches	4253.00	2637.00	38	https://i.pinimg.com/736x/d5/6f/5e/d56f5e4e2111a65d0ee8533dfe1719f6.jpg	2026-04-14 12:10:54.033537	3.90	Silk	Pink
24262	watch-14	Digital Watch with Metal Strap	Snitch	men	watches	4534.00	2720.00	40	https://i.pinimg.com/736x/88/dc/1c/88dc1c3ab7fc882fd7d6e18fedb1efac.jpg	2026-04-14 12:10:54.034846	4.00	Silk	Blue
24263	watch-15	Chronograph with Silicone Strap	Zara	men	watches	7552.00	3247.00	57	https://i.pinimg.com/1200x/2d/b1/a4/2db1a465eebc01da388fadb76db828cd.jpg	2026-04-14 12:10:54.036122	5.00	Linen	Red
24264	watch-16	Smartwatch with Leather Strap	Essential Mart	men	watches	3690.00	1697.00	54	https://i.pinimg.com/736x/3e/fc/54/3efc548620fefbd99a21aa8ca3003f84.jpg	2026-04-14 12:10:54.037415	4.40	Denim	Beige
24265	watch-17	Analog Watch with Metal Strap	Fossil	men	watches	4253.00	2297.00	46	https://i.pinimg.com/736x/37/68/1f/37681fce8fab071dd3e6a16e62acd96c.jpg	2026-04-14 12:10:54.038724	4.70	Linen	White
24266	watch-18	Digital Watch with Silicone Strap	Snitch	men	watches	5548.00	4216.00	24	https://i.pinimg.com/1200x/ef/05/54/ef0554ab4e35893d6481a0d41798dacd.jpg	2026-04-14 12:10:54.040176	4.90	Silk	Gold
24267	watch-19	Chronograph with Leather Strap	Zara	men	watches	2400.00	1368.00	43	https://i.pinimg.com/736x/f1/ba/3b/f1ba3bc0104b740b8c1fe8c346984b78.jpg	2026-04-14 12:10:54.0416	4.00	Cotton	Grey
24268	watch-20	Smartwatch with Metal Strap	Essential Mart	men	watches	7690.00	4999.00	35	https://i.pinimg.com/736x/06/01/eb/0601ebb91eed13f01d5f035ef0dcb6bf.jpg	2026-04-14 12:10:54.042863	4.70	Polyester	Pink
24269	watch-21	Analog Watch with Silicone Strap	Fossil	men	watches	7873.00	4724.00	40	https://i.pinimg.com/736x/8e/b7/9c/8eb79c31b5710dcf92dc1cf816fcb772.jpg	2026-04-14 12:10:54.044505	4.90	Georgette	Pink
24270	watch-22	Digital Watch with Leather Strap	Snitch	men	watches	5773.00	2309.00	60	https://i.pinimg.com/736x/07/9d/2b/079d2b8d1dccb47788c5345c887d2641.jpg	2026-04-14 12:10:54.045882	4.90	Chiffon	Grey
24271	watch-23	Chronograph with Metal Strap	Zara	men	watches	6833.00	3485.00	49	https://i.pinimg.com/736x/d5/6f/5e/d56f5e4e2111a65d0ee8533dfe1719f6.jpg	2026-04-14 12:10:54.047096	4.20	Linen	Grey
24272	watch-24	Smartwatch with Silicone Strap	Essential Mart	men	watches	4173.00	3505.00	16	https://i.pinimg.com/736x/88/dc/1c/88dc1c3ab7fc882fd7d6e18fedb1efac.jpg	2026-04-14 12:10:54.048157	4.60	Cotton	Beige
24273	watch-25	Analog Watch with Leather Strap	Fossil	men	watches	1584.00	1283.00	19	https://i.pinimg.com/1200x/2d/b1/a4/2db1a465eebc01da388fadb76db828cd.jpg	2026-04-14 12:10:54.049315	4.50	Chiffon	Pink
24274	watch-26	Digital Watch with Metal Strap	Snitch	men	watches	5879.00	3645.00	38	https://i.pinimg.com/736x/3e/fc/54/3efc548620fefbd99a21aa8ca3003f84.jpg	2026-04-14 12:10:54.050375	4.80	Leather	Black
24275	watch-27	Chronograph with Silicone Strap	Zara	men	watches	2199.00	1605.00	27	https://i.pinimg.com/736x/37/68/1f/37681fce8fab071dd3e6a16e62acd96c.jpg	2026-04-14 12:10:54.051421	4.40	Leather	Pink
24276	watch-28	Smartwatch with Leather Strap	Essential Mart	men	watches	1630.00	897.00	45	https://i.pinimg.com/1200x/ef/05/54/ef0554ab4e35893d6481a0d41798dacd.jpg	2026-04-14 12:10:54.052463	4.60	Cotton	Blue
24277	watch-29	Analog Watch with Metal Strap	Fossil	men	watches	5239.00	4401.00	16	https://i.pinimg.com/736x/f1/ba/3b/f1ba3bc0104b740b8c1fe8c346984b78.jpg	2026-04-14 12:10:54.053673	3.90	Silk	Black
24278	watch-30	Digital Watch with Silicone Strap	Snitch	men	watches	2311.00	1779.00	23	https://i.pinimg.com/736x/06/01/eb/0601ebb91eed13f01d5f035ef0dcb6bf.jpg	2026-04-14 12:10:54.054735	4.30	Leather	Pink
24279	watch-31	Chronograph with Leather Strap	Zara	men	watches	3742.00	1646.00	56	https://i.pinimg.com/736x/8e/b7/9c/8eb79c31b5710dcf92dc1cf816fcb772.jpg	2026-04-14 12:10:54.055897	4.30	Denim	Pink
24280	watch-32	Smartwatch with Metal Strap	Essential Mart	men	watches	1876.00	1032.00	45	https://i.pinimg.com/736x/07/9d/2b/079d2b8d1dccb47788c5345c887d2641.jpg	2026-04-14 12:10:54.056966	4.00	Leather	Black
24281	watch-33	Analog Watch with Silicone Strap	Fossil	men	watches	7731.00	3788.00	51	https://i.pinimg.com/736x/d5/6f/5e/d56f5e4e2111a65d0ee8533dfe1719f6.jpg	2026-04-14 12:10:54.058011	3.90	Georgette	Red
24282	watch-34	Digital Watch with Leather Strap	Snitch	men	watches	2368.00	1516.00	36	https://i.pinimg.com/736x/88/dc/1c/88dc1c3ab7fc882fd7d6e18fedb1efac.jpg	2026-04-14 12:10:54.059043	4.60	Linen	Green
24283	watch-35	Chronograph with Metal Strap	Zara	men	watches	1452.00	711.00	51	https://i.pinimg.com/1200x/2d/b1/a4/2db1a465eebc01da388fadb76db828cd.jpg	2026-04-14 12:10:54.060091	4.40	Georgette	Pink
24284	watch-36	Smartwatch with Silicone Strap	Essential Mart	men	watches	2018.00	1049.00	48	https://i.pinimg.com/736x/3e/fc/54/3efc548620fefbd99a21aa8ca3003f84.jpg	2026-04-14 12:10:54.061328	4.90	Silk	Grey
24285	watch-37	Analog Watch with Leather Strap	Fossil	men	watches	1481.00	1155.00	22	https://i.pinimg.com/736x/37/68/1f/37681fce8fab071dd3e6a16e62acd96c.jpg	2026-04-14 12:10:54.062748	4.70	Linen	Black
24286	watch-38	Digital Watch with Metal Strap	Snitch	men	watches	6518.00	3389.00	48	https://i.pinimg.com/1200x/ef/05/54/ef0554ab4e35893d6481a0d41798dacd.jpg	2026-04-14 12:10:54.063836	4.80	Polyester	Black
24287	watch-39	Chronograph with Silicone Strap	Zara	men	watches	2350.00	1128.00	52	https://i.pinimg.com/736x/f1/ba/3b/f1ba3bc0104b740b8c1fe8c346984b78.jpg	2026-04-14 12:10:54.064951	3.80	Polyester	Grey
24288	watch-40	Smartwatch with Leather Strap	Essential Mart	men	watches	2395.00	1677.00	30	https://i.pinimg.com/736x/06/01/eb/0601ebb91eed13f01d5f035ef0dcb6bf.jpg	2026-04-14 12:10:54.065991	4.30	Polyester	Grey
24289	sunglasses-1	Aviator with Metal Frame	Ray-Ban	men	sunglasses	4147.00	3235.00	22	https://i.pinimg.com/1200x/72/5e/3e/725e3e39d6d2ba45159a1f4eca80fbba.jpg	2026-04-14 12:10:54.067453	4.50	Linen	Grey
24290	sunglasses-2	Wayfarer with Plastic Frame	Snitch	men	sunglasses	5882.00	3706.00	37	https://i.pinimg.com/1200x/3b/ad/72/3bad7214ae3f39519951dbe496ad9d0d.jpg	2026-04-14 12:10:54.068617	4.10	Cotton	Red
25185	kid-feed-17	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	3040.00	1672.00	45	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.186285	4.10	Linen	Red
24291	sunglasses-3	Round with Wooden Frame	Zara	men	sunglasses	1952.00	1308.00	33	https://i.pinimg.com/736x/89/38/b6/8938b654166e6e033edbf27cf47078c4.jpg	2026-04-14 12:10:54.069738	4.90	Leather	Pink
24292	sunglasses-4	Clubmaster with Metal Frame	Essential Mart	men	sunglasses	2969.00	1989.00	33	https://i.pinimg.com/1200x/bc/17/8c/bc178ca37c1b07c8dd1f03cc317e3940.jpg	2026-04-14 12:10:54.071149	4.70	Georgette	Blue
24293	sunglasses-5	Aviator with Plastic Frame	Ray-Ban	men	sunglasses	1340.00	737.00	45	https://i.pinimg.com/736x/f4/b9/88/f4b988edfe12a5792aba609f47966747.jpg	2026-04-14 12:10:54.072844	4.60	Silk	White
24294	sunglasses-6	Wayfarer with Wooden Frame	Snitch	men	sunglasses	5166.00	2480.00	52	https://i.pinimg.com/736x/81/e6/54/81e654781cfcb4149b9710f26fd9a734.jpg	2026-04-14 12:10:54.074108	4.00	Polyester	Green
24295	sunglasses-7	Round with Metal Frame	Zara	men	sunglasses	6354.00	2986.00	53	https://i.pinimg.com/736x/44/e0/75/44e07551655c9b6948dd345478148378.jpg	2026-04-14 12:10:54.075657	4.90	Silk	Red
24296	sunglasses-8	Clubmaster with Plastic Frame	Essential Mart	men	sunglasses	6411.00	3782.00	41	https://i.pinimg.com/1200x/b5/7d/9b/b57d9b6d2389cb602648c8cbfda23938.jpg	2026-04-14 12:10:54.077005	3.80	Georgette	Beige
24297	sunglasses-9	Aviator with Wooden Frame	Ray-Ban	men	sunglasses	4036.00	2301.00	43	https://i.pinimg.com/736x/9d/1f/b7/9d1fb7210798cb6584f0b82b14c9dc58.jpg	2026-04-14 12:10:54.078454	4.60	Georgette	Gold
24298	sunglasses-10	Wayfarer with Metal Frame	Snitch	men	sunglasses	7380.00	5830.00	21	https://i.pinimg.com/1200x/19/e2/e6/19e2e6dc31d89f8d5f29aeb56621a9b7.jpg	2026-04-14 12:10:54.079938	4.00	Cotton	White
24299	sunglasses-11	Round with Plastic Frame	Zara	men	sunglasses	5669.00	3628.00	36	https://i.pinimg.com/1200x/72/5e/3e/725e3e39d6d2ba45159a1f4eca80fbba.jpg	2026-04-14 12:10:54.081214	4.90	Georgette	Blue
24300	sunglasses-12	Clubmaster with Wooden Frame	Essential Mart	men	sunglasses	4713.00	3818.00	19	https://i.pinimg.com/1200x/3b/ad/72/3bad7214ae3f39519951dbe496ad9d0d.jpg	2026-04-14 12:10:54.082474	4.80	Chiffon	Red
24301	sunglasses-13	Aviator with Metal Frame	Ray-Ban	men	sunglasses	4002.00	2401.00	40	https://i.pinimg.com/736x/89/38/b6/8938b654166e6e033edbf27cf47078c4.jpg	2026-04-14 12:10:54.083791	4.70	Silk	Grey
24302	sunglasses-14	Wayfarer with Plastic Frame	Snitch	men	sunglasses	3843.00	2729.00	29	https://i.pinimg.com/1200x/bc/17/8c/bc178ca37c1b07c8dd1f03cc317e3940.jpg	2026-04-14 12:10:54.085254	4.10	Polyester	Blue
24303	sunglasses-15	Round with Wooden Frame	Zara	men	sunglasses	1722.00	1464.00	15	https://i.pinimg.com/736x/f4/b9/88/f4b988edfe12a5792aba609f47966747.jpg	2026-04-14 12:10:54.086793	4.10	Leather	Beige
24304	sunglasses-16	Clubmaster with Metal Frame	Essential Mart	men	sunglasses	3955.00	2887.00	27	https://i.pinimg.com/736x/81/e6/54/81e654781cfcb4149b9710f26fd9a734.jpg	2026-04-14 12:10:54.088165	4.60	Georgette	Red
24305	sunglasses-17	Aviator with Plastic Frame	Ray-Ban	men	sunglasses	3688.00	1549.00	58	https://i.pinimg.com/736x/44/e0/75/44e07551655c9b6948dd345478148378.jpg	2026-04-14 12:10:54.08942	4.40	Linen	White
24306	sunglasses-18	Wayfarer with Wooden Frame	Snitch	men	sunglasses	5180.00	3885.00	25	https://i.pinimg.com/1200x/b5/7d/9b/b57d9b6d2389cb602648c8cbfda23938.jpg	2026-04-14 12:10:54.09063	4.20	Cotton	Red
24307	sunglasses-19	Round with Metal Frame	Zara	men	sunglasses	3222.00	1837.00	43	https://i.pinimg.com/736x/9d/1f/b7/9d1fb7210798cb6584f0b82b14c9dc58.jpg	2026-04-14 12:10:54.091693	4.20	Chiffon	Grey
24308	sunglasses-20	Clubmaster with Plastic Frame	Essential Mart	men	sunglasses	1561.00	1296.00	17	https://i.pinimg.com/1200x/19/e2/e6/19e2e6dc31d89f8d5f29aeb56621a9b7.jpg	2026-04-14 12:10:54.092769	5.00	Cotton	Blue
24309	sunglasses-21	Aviator with Wooden Frame	Ray-Ban	men	sunglasses	6777.00	3660.00	46	https://i.pinimg.com/1200x/72/5e/3e/725e3e39d6d2ba45159a1f4eca80fbba.jpg	2026-04-14 12:10:54.093987	4.10	Denim	Grey
24310	sunglasses-22	Wayfarer with Metal Frame	Snitch	men	sunglasses	5653.00	3957.00	30	https://i.pinimg.com/1200x/3b/ad/72/3bad7214ae3f39519951dbe496ad9d0d.jpg	2026-04-14 12:10:54.095192	4.90	Cotton	Green
24311	sunglasses-23	Round with Plastic Frame	Zara	men	sunglasses	4713.00	3865.00	18	https://i.pinimg.com/736x/89/38/b6/8938b654166e6e033edbf27cf47078c4.jpg	2026-04-14 12:10:54.096434	4.30	Georgette	Red
24312	sunglasses-24	Clubmaster with Wooden Frame	Essential Mart	men	sunglasses	2610.00	1462.00	44	https://i.pinimg.com/1200x/bc/17/8c/bc178ca37c1b07c8dd1f03cc317e3940.jpg	2026-04-14 12:10:54.097757	4.30	Leather	Beige
24313	sunglasses-25	Aviator with Metal Frame	Ray-Ban	men	sunglasses	3608.00	1479.00	59	https://i.pinimg.com/736x/f4/b9/88/f4b988edfe12a5792aba609f47966747.jpg	2026-04-14 12:10:54.099153	4.70	Linen	Black
24314	sunglasses-26	Wayfarer with Plastic Frame	Snitch	men	sunglasses	4225.00	1943.00	54	https://i.pinimg.com/736x/81/e6/54/81e654781cfcb4149b9710f26fd9a734.jpg	2026-04-14 12:10:54.100364	4.90	Denim	Beige
24315	sunglasses-27	Round with Wooden Frame	Zara	men	sunglasses	7276.00	4220.00	42	https://i.pinimg.com/736x/44/e0/75/44e07551655c9b6948dd345478148378.jpg	2026-04-14 12:10:54.101675	4.80	Denim	Beige
24316	sunglasses-28	Clubmaster with Metal Frame	Essential Mart	men	sunglasses	7315.00	4535.00	38	https://i.pinimg.com/1200x/b5/7d/9b/b57d9b6d2389cb602648c8cbfda23938.jpg	2026-04-14 12:10:54.102873	4.50	Cotton	Green
24317	sunglasses-29	Aviator with Plastic Frame	Ray-Ban	men	sunglasses	1763.00	1305.00	26	https://i.pinimg.com/736x/9d/1f/b7/9d1fb7210798cb6584f0b82b14c9dc58.jpg	2026-04-14 12:10:54.10401	4.40	Linen	Grey
24318	sunglasses-30	Wayfarer with Wooden Frame	Snitch	men	sunglasses	7399.00	3330.00	55	https://i.pinimg.com/1200x/19/e2/e6/19e2e6dc31d89f8d5f29aeb56621a9b7.jpg	2026-04-14 12:10:54.105163	4.80	Leather	Gold
24319	sunglasses-31	Round with Metal Frame	Zara	men	sunglasses	3865.00	2899.00	25	https://i.pinimg.com/1200x/72/5e/3e/725e3e39d6d2ba45159a1f4eca80fbba.jpg	2026-04-14 12:10:54.106338	4.30	Leather	Beige
24320	sunglasses-32	Clubmaster with Plastic Frame	Essential Mart	men	sunglasses	1050.00	462.00	56	https://i.pinimg.com/1200x/3b/ad/72/3bad7214ae3f39519951dbe496ad9d0d.jpg	2026-04-14 12:10:54.10741	4.90	Silk	Beige
24321	sunglasses-33	Aviator with Wooden Frame	Ray-Ban	men	sunglasses	3414.00	2014.00	41	https://i.pinimg.com/736x/89/38/b6/8938b654166e6e033edbf27cf47078c4.jpg	2026-04-14 12:10:54.108547	4.40	Polyester	Grey
24322	sunglasses-34	Wayfarer with Metal Frame	Snitch	men	sunglasses	1941.00	1320.00	32	https://i.pinimg.com/1200x/bc/17/8c/bc178ca37c1b07c8dd1f03cc317e3940.jpg	2026-04-14 12:10:54.109607	4.00	Polyester	Gold
24323	sunglasses-35	Round with Plastic Frame	Zara	men	sunglasses	5532.00	2987.00	46	https://i.pinimg.com/736x/f4/b9/88/f4b988edfe12a5792aba609f47966747.jpg	2026-04-14 12:10:54.110916	4.70	Linen	Gold
24324	sunglasses-36	Clubmaster with Wooden Frame	Essential Mart	men	sunglasses	2220.00	1288.00	42	https://i.pinimg.com/736x/81/e6/54/81e654781cfcb4149b9710f26fd9a734.jpg	2026-04-14 12:10:54.112258	4.30	Silk	Green
24325	sunglasses-37	Aviator with Metal Frame	Ray-Ban	men	sunglasses	4901.00	2647.00	46	https://i.pinimg.com/736x/44/e0/75/44e07551655c9b6948dd345478148378.jpg	2026-04-14 12:10:54.113716	4.00	Georgette	Red
24326	sunglasses-38	Wayfarer with Plastic Frame	Snitch	men	sunglasses	5787.00	3530.00	39	https://i.pinimg.com/1200x/b5/7d/9b/b57d9b6d2389cb602648c8cbfda23938.jpg	2026-04-14 12:10:54.115158	4.80	Polyester	White
24327	sunglasses-39	Round with Wooden Frame	Zara	men	sunglasses	5301.00	2704.00	49	https://i.pinimg.com/736x/9d/1f/b7/9d1fb7210798cb6584f0b82b14c9dc58.jpg	2026-04-14 12:10:54.116283	4.20	Linen	Black
24328	sunglasses-40	Clubmaster with Metal Frame	Essential Mart	men	sunglasses	2941.00	1471.00	50	https://i.pinimg.com/1200x/19/e2/e6/19e2e6dc31d89f8d5f29aeb56621a9b7.jpg	2026-04-14 12:10:54.117331	3.90	Chiffon	Beige
24329	trackpants-1	Athletic Track Pants Cotton	Nike	men	trackpants	3271.00	2682.00	18	https://i.pinimg.com/736x/e4/9e/53/e49e538bd31ced448c8df19aaf02f9a7.jpg	2026-04-14 12:10:54.119123	4.10	Polyester	Red
24330	trackpants-2	Casual Joggers Polyester	Adidas	men	trackpants	6227.00	2740.00	56	https://i.pinimg.com/736x/80/a9/db/80a9dbbd6bfd8c245c543e9aef7c9a83.jpg	2026-04-14 12:10:54.120319	3.80	Georgette	Beige
24331	trackpants-3	Compression Pants Blended	Puma	men	trackpants	2741.00	2138.00	22	https://i.pinimg.com/736x/78/db/08/78db085cbaec0f217f46ac1e71bd7a1b.jpg	2026-04-14 12:10:54.12137	4.60	Denim	Pink
24332	trackpants-4	Athletic Track Pants Cotton	Essential Mart	men	trackpants	5967.00	2745.00	54	https://i.pinimg.com/736x/3f/0d/5c/3f0d5cdba55d1faef2fc811efac08b63.jpg	2026-04-14 12:10:54.122434	3.80	Denim	White
24333	trackpants-5	Casual Joggers Polyester	Nike	men	trackpants	1254.00	815.00	35	https://i.pinimg.com/1200x/99/16/5a/99165a6aa6f69bc429b30bc7e3904ffd.jpg	2026-04-14 12:10:54.123467	4.00	Silk	Red
24334	trackpants-6	Compression Pants Blended	Adidas	men	trackpants	7005.00	4273.00	39	https://i.pinimg.com/1200x/f8/f0/b6/f8f0b6b4063395e7c70f6a8a1d7f07a2.jpg	2026-04-14 12:10:54.124516	4.50	Chiffon	White
24335	trackpants-7	Athletic Track Pants Cotton	Puma	men	trackpants	6854.00	3633.00	47	https://i.pinimg.com/1200x/eb/08/3d/eb083d68e1f4640964120fb84e77a365.jpg	2026-04-14 12:10:54.125563	4.50	Denim	Red
24336	trackpants-8	Casual Joggers Polyester	Essential Mart	men	trackpants	7060.00	4871.00	31	https://i.pinimg.com/1200x/d2/9f/1f/d29f1f3fff2a336ce72151b5ce87c2cd.jpg	2026-04-14 12:10:54.126603	3.90	Polyester	Pink
24337	trackpants-9	Compression Pants Blended	Nike	men	trackpants	7158.00	6084.00	15	https://i.pinimg.com/1200x/4d/07/da/4d07daecb91a8584041a1a4d7e5a3583.jpg	2026-04-14 12:10:54.128205	4.20	Chiffon	Red
24338	trackpants-10	Athletic Track Pants Cotton	Adidas	men	trackpants	4882.00	3271.00	33	https://i.pinimg.com/736x/1e/92/94/1e92940b1f88ad857ae9ce92899a2e45.jpg	2026-04-14 12:10:54.129327	4.00	Silk	Black
24339	trackpants-11	Casual Joggers Polyester	Puma	men	trackpants	1428.00	814.00	43	https://i.pinimg.com/1200x/7d/2b/f5/7d2bf5f75cdcd6b288730819e5221ebd.jpg	2026-04-14 12:10:54.130371	4.10	Georgette	Gold
24340	trackpants-12	Compression Pants Blended	Essential Mart	men	trackpants	7096.00	4967.00	30	https://i.pinimg.com/736x/98/76/5c/98765c5787d36f749da3e079738f0c1f.jpg	2026-04-14 12:10:54.131411	4.70	Polyester	Beige
24341	trackpants-13	Athletic Track Pants Cotton	Nike	men	trackpants	1976.00	909.00	54	https://img.fantaskycdn.com/387218c027a873fbe1522093de808fde_1024x.jpeg	2026-04-14 12:10:54.132443	4.10	Cotton	Red
24342	trackpants-14	Casual Joggers Polyester	Adidas	men	trackpants	5811.00	3545.00	39	https://i.pinimg.com/736x/e4/9e/53/e49e538bd31ced448c8df19aaf02f9a7.jpg	2026-04-14 12:10:54.133622	4.30	Silk	Gold
24343	trackpants-15	Compression Pants Blended	Puma	men	trackpants	3046.00	1493.00	51	https://i.pinimg.com/736x/80/a9/db/80a9dbbd6bfd8c245c543e9aef7c9a83.jpg	2026-04-14 12:10:54.135321	4.20	Polyester	Grey
24344	trackpants-16	Athletic Track Pants Cotton	Essential Mart	men	trackpants	7989.00	4074.00	49	https://i.pinimg.com/736x/78/db/08/78db085cbaec0f217f46ac1e71bd7a1b.jpg	2026-04-14 12:10:54.136608	4.80	Linen	Blue
24345	trackpants-17	Casual Joggers Polyester	Nike	men	trackpants	4501.00	2926.00	35	https://i.pinimg.com/736x/3f/0d/5c/3f0d5cdba55d1faef2fc811efac08b63.jpg	2026-04-14 12:10:54.138102	4.10	Linen	Black
24346	trackpants-18	Compression Pants Blended	Adidas	men	trackpants	5906.00	3603.00	39	https://i.pinimg.com/1200x/99/16/5a/99165a6aa6f69bc429b30bc7e3904ffd.jpg	2026-04-14 12:10:54.139573	4.60	Georgette	Blue
24347	trackpants-19	Athletic Track Pants Cotton	Puma	men	trackpants	5028.00	2715.00	46	https://i.pinimg.com/1200x/f8/f0/b6/f8f0b6b4063395e7c70f6a8a1d7f07a2.jpg	2026-04-14 12:10:54.140763	3.90	Leather	Pink
24348	trackpants-20	Casual Joggers Polyester	Essential Mart	men	trackpants	4442.00	1866.00	58	https://i.pinimg.com/1200x/eb/08/3d/eb083d68e1f4640964120fb84e77a365.jpg	2026-04-14 12:10:54.141988	4.10	Denim	Red
24349	trackpants-21	Compression Pants Blended	Nike	men	trackpants	3203.00	2723.00	15	https://i.pinimg.com/1200x/d2/9f/1f/d29f1f3fff2a336ce72151b5ce87c2cd.jpg	2026-04-14 12:10:54.143265	4.50	Georgette	Black
24350	trackpants-22	Athletic Track Pants Cotton	Adidas	men	trackpants	4024.00	2092.00	48	https://i.pinimg.com/1200x/4d/07/da/4d07daecb91a8584041a1a4d7e5a3583.jpg	2026-04-14 12:10:54.144417	4.20	Cotton	Grey
24351	trackpants-23	Casual Joggers Polyester	Puma	men	trackpants	6638.00	5111.00	23	https://i.pinimg.com/736x/1e/92/94/1e92940b1f88ad857ae9ce92899a2e45.jpg	2026-04-14 12:10:54.145787	4.80	Chiffon	White
24352	trackpants-24	Compression Pants Blended	Essential Mart	men	trackpants	1434.00	617.00	57	https://i.pinimg.com/1200x/7d/2b/f5/7d2bf5f75cdcd6b288730819e5221ebd.jpg	2026-04-14 12:10:54.147291	4.90	Cotton	Grey
24353	trackpants-25	Athletic Track Pants Cotton	Nike	men	trackpants	4079.00	2325.00	43	https://i.pinimg.com/736x/98/76/5c/98765c5787d36f749da3e079738f0c1f.jpg	2026-04-14 12:10:54.148797	4.80	Polyester	Grey
24354	trackpants-26	Casual Joggers Polyester	Adidas	men	trackpants	5523.00	3093.00	44	https://img.fantaskycdn.com/387218c027a873fbe1522093de808fde_1024x.jpeg	2026-04-14 12:10:54.149953	4.40	Chiffon	Pink
24355	trackpants-27	Compression Pants Blended	Puma	men	trackpants	6684.00	4010.00	40	https://i.pinimg.com/736x/e4/9e/53/e49e538bd31ced448c8df19aaf02f9a7.jpg	2026-04-14 12:10:54.151052	4.40	Denim	Grey
24356	trackpants-28	Athletic Track Pants Cotton	Essential Mart	men	trackpants	1142.00	548.00	52	https://i.pinimg.com/736x/80/a9/db/80a9dbbd6bfd8c245c543e9aef7c9a83.jpg	2026-04-14 12:10:54.152102	4.20	Leather	White
24357	trackpants-29	Casual Joggers Polyester	Nike	men	trackpants	3235.00	2620.00	19	https://i.pinimg.com/736x/78/db/08/78db085cbaec0f217f46ac1e71bd7a1b.jpg	2026-04-14 12:10:54.153151	4.00	Cotton	White
24358	trackpants-30	Compression Pants Blended	Adidas	men	trackpants	1927.00	867.00	55	https://i.pinimg.com/736x/3f/0d/5c/3f0d5cdba55d1faef2fc811efac08b63.jpg	2026-04-14 12:10:54.154213	4.80	Silk	Blue
24359	trackpants-31	Athletic Track Pants Cotton	Puma	men	trackpants	7382.00	3691.00	50	https://i.pinimg.com/1200x/99/16/5a/99165a6aa6f69bc429b30bc7e3904ffd.jpg	2026-04-14 12:10:54.155304	4.00	Silk	Black
24360	trackpants-32	Casual Joggers Polyester	Essential Mart	men	trackpants	2928.00	1962.00	33	https://i.pinimg.com/1200x/f8/f0/b6/f8f0b6b4063395e7c70f6a8a1d7f07a2.jpg	2026-04-14 12:10:54.156568	4.00	Chiffon	Blue
24361	trackpants-33	Compression Pants Blended	Nike	men	trackpants	3546.00	2908.00	18	https://i.pinimg.com/1200x/eb/08/3d/eb083d68e1f4640964120fb84e77a365.jpg	2026-04-14 12:10:54.157685	3.90	Leather	Black
24362	trackpants-34	Athletic Track Pants Cotton	Adidas	men	trackpants	6250.00	2625.00	58	https://i.pinimg.com/1200x/d2/9f/1f/d29f1f3fff2a336ce72151b5ce87c2cd.jpg	2026-04-14 12:10:54.158816	4.20	Silk	Grey
24363	trackpants-35	Casual Joggers Polyester	Puma	men	trackpants	1587.00	889.00	44	https://i.pinimg.com/1200x/4d/07/da/4d07daecb91a8584041a1a4d7e5a3583.jpg	2026-04-14 12:10:54.159866	4.80	Linen	Gold
24364	trackpants-36	Compression Pants Blended	Essential Mart	men	trackpants	4256.00	2043.00	52	https://i.pinimg.com/736x/1e/92/94/1e92940b1f88ad857ae9ce92899a2e45.jpg	2026-04-14 12:10:54.161064	4.70	Chiffon	Green
24365	trackpants-37	Athletic Track Pants Cotton	Nike	men	trackpants	3640.00	2730.00	25	https://i.pinimg.com/1200x/7d/2b/f5/7d2bf5f75cdcd6b288730819e5221ebd.jpg	2026-04-14 12:10:54.162273	4.70	Cotton	White
24366	trackpants-38	Casual Joggers Polyester	Adidas	men	trackpants	5766.00	2595.00	55	https://i.pinimg.com/736x/98/76/5c/98765c5787d36f749da3e079738f0c1f.jpg	2026-04-14 12:10:54.163413	4.20	Georgette	Green
24367	trackpants-39	Compression Pants Blended	Puma	men	trackpants	2678.00	1634.00	39	https://img.fantaskycdn.com/387218c027a873fbe1522093de808fde_1024x.jpeg	2026-04-14 12:10:54.164488	4.80	Linen	Pink
24368	trackpants-40	Athletic Track Pants Cotton	Essential Mart	men	trackpants	4160.00	2870.00	31	https://i.pinimg.com/736x/e4/9e/53/e49e538bd31ced448c8df19aaf02f9a7.jpg	2026-04-14 12:10:54.165966	4.30	Georgette	Black
24369	belt-1	Leather Belt in Leather	Hidesign	men	belts	7136.00	4924.00	31	https://i.pinimg.com/1200x/96/c2/9e/96c29e204996f879ad9936d00b8abf7e.jpg	2026-04-14 12:10:54.167445	4.60	Chiffon	Black
24370	belt-2	Canvas Belt in Canvas	Snitch	men	belts	2043.00	1267.00	38	https://i.pinimg.com/1200x/47/7c/0d/477c0d3b9ce963d7a9645220e0173698.jpg	2026-04-14 12:10:54.168682	4.00	Linen	White
24371	belt-3	Braided Belt in Synthetic	Zara	men	belts	5188.00	4099.00	21	https://i.pinimg.com/1200x/dd/a1/0a/dda10afb218426f23e31de6afb4e9102.jpg	2026-04-14 12:10:54.169711	4.70	Leather	Gold
24372	belt-4	Reversible Belt in Leather	Essential Mart	men	belts	1309.00	655.00	50	https://i.pinimg.com/1200x/43/11/cd/4311cd585be5bc07d39048a9acc2f32b.jpg	2026-04-14 12:10:54.170759	4.50	Leather	Gold
24373	belt-5	Leather Belt in Canvas	Hidesign	men	belts	6651.00	4789.00	28	https://i.pinimg.com/1200x/ba/5f/1c/ba5f1cab6a8777d8cba2785201e0356d.jpg	2026-04-14 12:10:54.171811	3.80	Silk	Beige
24374	belt-6	Canvas Belt in Synthetic	Snitch	men	belts	1966.00	1592.00	19	https://i.pinimg.com/736x/6f/61/d2/6f61d28fd4604d83d968a8749e8995df.jpg	2026-04-14 12:10:54.172855	3.90	Denim	Blue
24375	belt-7	Braided Belt in Leather	Zara	men	belts	3454.00	2487.00	28	https://i.pinimg.com/1200x/89/82/1e/89821eae08d467d049c44cfed6fbf85b.jpg	2026-04-14 12:10:54.173943	3.90	Silk	White
24376	belt-8	Reversible Belt in Canvas	Essential Mart	men	belts	1530.00	811.00	47	https://i.pinimg.com/1200x/96/c2/9e/96c29e204996f879ad9936d00b8abf7e.jpg	2026-04-14 12:10:54.17502	4.80	Silk	Grey
24377	belt-9	Leather Belt in Synthetic	Hidesign	men	belts	2031.00	1178.00	42	https://i.pinimg.com/1200x/47/7c/0d/477c0d3b9ce963d7a9645220e0173698.jpg	2026-04-14 12:10:54.176077	4.00	Linen	Green
24378	belt-10	Canvas Belt in Leather	Snitch	men	belts	1001.00	480.00	52	https://i.pinimg.com/1200x/dd/a1/0a/dda10afb218426f23e31de6afb4e9102.jpg	2026-04-14 12:10:54.177259	4.60	Cotton	Green
24379	belt-11	Braided Belt in Canvas	Zara	men	belts	2704.00	1731.00	36	https://i.pinimg.com/1200x/43/11/cd/4311cd585be5bc07d39048a9acc2f32b.jpg	2026-04-14 12:10:54.178516	4.60	Polyester	Green
24380	belt-12	Reversible Belt in Synthetic	Essential Mart	men	belts	7185.00	3161.00	56	https://i.pinimg.com/1200x/ba/5f/1c/ba5f1cab6a8777d8cba2785201e0356d.jpg	2026-04-14 12:10:54.179688	4.60	Chiffon	Black
24381	belt-13	Leather Belt in Leather	Hidesign	men	belts	1765.00	953.00	46	https://i.pinimg.com/736x/6f/61/d2/6f61d28fd4604d83d968a8749e8995df.jpg	2026-04-14 12:10:54.18116	4.80	Silk	Black
24382	belt-14	Canvas Belt in Canvas	Snitch	men	belts	1775.00	1473.00	17	https://i.pinimg.com/1200x/89/82/1e/89821eae08d467d049c44cfed6fbf85b.jpg	2026-04-14 12:10:54.182857	3.90	Cotton	Green
24383	belt-15	Braided Belt in Synthetic	Zara	men	belts	5562.00	3504.00	37	https://i.pinimg.com/1200x/96/c2/9e/96c29e204996f879ad9936d00b8abf7e.jpg	2026-04-14 12:10:54.183945	3.80	Silk	Blue
24384	belt-16	Reversible Belt in Leather	Essential Mart	men	belts	1835.00	1468.00	20	https://i.pinimg.com/1200x/47/7c/0d/477c0d3b9ce963d7a9645220e0173698.jpg	2026-04-14 12:10:54.185009	4.20	Polyester	White
24385	belt-17	Leather Belt in Canvas	Hidesign	men	belts	3140.00	2010.00	36	https://i.pinimg.com/1200x/dd/a1/0a/dda10afb218426f23e31de6afb4e9102.jpg	2026-04-14 12:10:54.186073	4.00	Denim	Beige
24386	belt-18	Canvas Belt in Synthetic	Snitch	men	belts	1629.00	798.00	51	https://i.pinimg.com/1200x/43/11/cd/4311cd585be5bc07d39048a9acc2f32b.jpg	2026-04-14 12:10:54.187179	4.60	Cotton	White
24387	belt-19	Braided Belt in Leather	Zara	men	belts	5789.00	3126.00	46	https://i.pinimg.com/1200x/ba/5f/1c/ba5f1cab6a8777d8cba2785201e0356d.jpg	2026-04-14 12:10:54.188801	4.30	Denim	Gold
24388	belt-20	Reversible Belt in Canvas	Essential Mart	men	belts	4568.00	3380.00	26	https://i.pinimg.com/736x/6f/61/d2/6f61d28fd4604d83d968a8749e8995df.jpg	2026-04-14 12:10:54.189949	4.60	Denim	Black
24389	belt-21	Leather Belt in Synthetic	Hidesign	men	belts	4808.00	2212.00	54	https://i.pinimg.com/1200x/89/82/1e/89821eae08d467d049c44cfed6fbf85b.jpg	2026-04-14 12:10:54.191025	4.40	Denim	Red
24390	belt-22	Canvas Belt in Leather	Snitch	men	belts	3626.00	2067.00	43	https://i.pinimg.com/1200x/96/c2/9e/96c29e204996f879ad9936d00b8abf7e.jpg	2026-04-14 12:10:54.192069	4.00	Polyester	Blue
24391	belt-23	Braided Belt in Canvas	Zara	men	belts	6756.00	3918.00	42	https://i.pinimg.com/1200x/47/7c/0d/477c0d3b9ce963d7a9645220e0173698.jpg	2026-04-14 12:10:54.193098	4.90	Polyester	Red
24392	belt-24	Reversible Belt in Synthetic	Essential Mart	men	belts	2794.00	1537.00	45	https://i.pinimg.com/1200x/dd/a1/0a/dda10afb218426f23e31de6afb4e9102.jpg	2026-04-14 12:10:54.194325	3.90	Chiffon	Green
24393	belt-25	Leather Belt in Leather	Hidesign	men	belts	6618.00	3574.00	46	https://i.pinimg.com/1200x/43/11/cd/4311cd585be5bc07d39048a9acc2f32b.jpg	2026-04-14 12:10:54.195632	4.40	Denim	Beige
24394	belt-26	Canvas Belt in Canvas	Snitch	men	belts	2612.00	2090.00	20	https://i.pinimg.com/1200x/ba/5f/1c/ba5f1cab6a8777d8cba2785201e0356d.jpg	2026-04-14 12:10:54.197183	4.50	Linen	Beige
24395	belt-27	Braided Belt in Synthetic	Zara	men	belts	4047.00	2590.00	36	https://i.pinimg.com/736x/6f/61/d2/6f61d28fd4604d83d968a8749e8995df.jpg	2026-04-14 12:10:54.198699	4.30	Georgette	Blue
24396	belt-28	Reversible Belt in Leather	Essential Mart	men	belts	3939.00	3112.00	21	https://i.pinimg.com/1200x/89/82/1e/89821eae08d467d049c44cfed6fbf85b.jpg	2026-04-14 12:10:54.200201	4.90	Chiffon	Black
24397	belt-29	Leather Belt in Canvas	Hidesign	men	belts	5516.00	3861.00	30	https://i.pinimg.com/1200x/96/c2/9e/96c29e204996f879ad9936d00b8abf7e.jpg	2026-04-14 12:10:54.201661	4.60	Cotton	White
24398	belt-30	Canvas Belt in Synthetic	Snitch	men	belts	7290.00	4010.00	45	https://i.pinimg.com/1200x/47/7c/0d/477c0d3b9ce963d7a9645220e0173698.jpg	2026-04-14 12:10:54.203187	4.40	Polyester	Green
24399	belt-31	Braided Belt in Leather	Zara	men	belts	5201.00	2132.00	59	https://i.pinimg.com/1200x/dd/a1/0a/dda10afb218426f23e31de6afb4e9102.jpg	2026-04-14 12:10:54.204415	4.90	Cotton	Grey
24400	belt-32	Reversible Belt in Canvas	Essential Mart	men	belts	6618.00	5096.00	23	https://i.pinimg.com/1200x/43/11/cd/4311cd585be5bc07d39048a9acc2f32b.jpg	2026-04-14 12:10:54.205749	3.80	Silk	Red
24401	belt-33	Leather Belt in Synthetic	Hidesign	men	belts	7071.00	3677.00	48	https://i.pinimg.com/1200x/ba/5f/1c/ba5f1cab6a8777d8cba2785201e0356d.jpg	2026-04-14 12:10:54.207024	4.90	Polyester	Pink
24402	belt-34	Canvas Belt in Leather	Snitch	men	belts	3455.00	2488.00	28	https://i.pinimg.com/736x/6f/61/d2/6f61d28fd4604d83d968a8749e8995df.jpg	2026-04-14 12:10:54.208348	4.10	Silk	Green
24403	belt-35	Braided Belt in Canvas	Zara	men	belts	5446.00	2287.00	58	https://i.pinimg.com/1200x/89/82/1e/89821eae08d467d049c44cfed6fbf85b.jpg	2026-04-14 12:10:54.209642	4.60	Denim	Gold
24404	belt-36	Reversible Belt in Synthetic	Essential Mart	men	belts	5180.00	2331.00	55	https://i.pinimg.com/1200x/96/c2/9e/96c29e204996f879ad9936d00b8abf7e.jpg	2026-04-14 12:10:54.211013	4.80	Cotton	Gold
24405	belt-37	Leather Belt in Leather	Hidesign	men	belts	7268.00	3634.00	50	https://i.pinimg.com/1200x/47/7c/0d/477c0d3b9ce963d7a9645220e0173698.jpg	2026-04-14 12:10:54.212387	4.90	Leather	Green
24406	belt-38	Canvas Belt in Canvas	Snitch	men	belts	3366.00	2558.00	24	https://i.pinimg.com/1200x/dd/a1/0a/dda10afb218426f23e31de6afb4e9102.jpg	2026-04-14 12:10:54.214015	4.60	Polyester	Green
24407	belt-39	Braided Belt in Synthetic	Zara	men	belts	7035.00	5417.00	23	https://i.pinimg.com/1200x/43/11/cd/4311cd585be5bc07d39048a9acc2f32b.jpg	2026-04-14 12:10:54.215363	4.00	Cotton	Red
24408	belt-40	Reversible Belt in Leather	Essential Mart	men	belts	5768.00	3692.00	36	https://i.pinimg.com/1200x/ba/5f/1c/ba5f1cab6a8777d8cba2785201e0356d.jpg	2026-04-14 12:10:54.21649	4.00	Georgette	Black
24409	sportsshoes-1	Running Shoes with Mesh Upper	Nike	men	sportsshoes	4729.00	3736.00	21	https://i.pinimg.com/1200x/d8/1d/e8/d81de8afad05332cff3472afd15541a5.jpg	2026-04-14 12:10:54.217919	3.90	Georgette	Beige
24410	sportsshoes-2	Training Shoes with Leather Upper	Adidas	men	sportsshoes	4284.00	2013.00	53	https://i.pinimg.com/1200x/06/6d/7c/066d7ca3ec8844d5ba6bde4b4792dfc4.jpg	2026-04-14 12:10:54.219511	3.90	Georgette	Gold
24411	sportsshoes-3	Basketball Shoes with Synthetic Upper	Puma	men	sportsshoes	1201.00	685.00	43	https://i.pinimg.com/1200x/ef/71/00/ef71005b04e59a74d1c9f8396d0b4895.jpg	2026-04-14 12:10:54.220698	4.20	Denim	Green
24412	sportsshoes-4	Soccer Cleats with Mesh Upper	Essential Mart	men	sportsshoes	5662.00	2548.00	55	https://i.pinimg.com/736x/6c/db/3b/6cdb3b313d0db56ebc52f5feb602e8f2.jpg	2026-04-14 12:10:54.221852	4.10	Denim	Grey
24413	sportsshoes-5	Running Shoes with Leather Upper	Nike	men	sportsshoes	4406.00	1895.00	57	https://i.pinimg.com/736x/bf/dd/c7/bfddc7598c022475ac19f976163195df.jpg	2026-04-14 12:10:54.223024	4.90	Georgette	Red
24414	sportsshoes-6	Training Shoes with Synthetic Upper	Adidas	men	sportsshoes	4395.00	2901.00	34	https://i.pinimg.com/736x/f3/c6/88/f3c6883a105fb06145e63a4e09c0d974.jpg	2026-04-14 12:10:54.224152	3.90	Leather	Grey
24415	sportsshoes-7	Basketball Shoes with Mesh Upper	Puma	men	sportsshoes	1839.00	1122.00	39	https://i.pinimg.com/736x/f1/94/2a/f1942ac7525b0ea732cb5bdf0f3cc2f6.jpg	2026-04-14 12:10:54.225203	4.60	Georgette	Red
24416	sportsshoes-8	Soccer Cleats with Leather Upper	Essential Mart	men	sportsshoes	6486.00	4410.00	32	https://i.pinimg.com/736x/9f/ac/d8/9facd898902d4d27f5c8c94fe45abe29.jpg	2026-04-14 12:10:54.226245	4.50	Cotton	Beige
24417	sportsshoes-9	Running Shoes with Synthetic Upper	Nike	men	sportsshoes	2115.00	994.00	53	https://i.pinimg.com/736x/6c/62/33/6c623319c3a469448c7900ddba697202.jpg	2026-04-14 12:10:54.227588	4.70	Silk	Red
24418	sportsshoes-10	Training Shoes with Mesh Upper	Adidas	men	sportsshoes	6029.00	4642.00	23	https://i.pinimg.com/736x/69/95/d4/6995d407677a61da55b724e2a8ac61e6.jpg	2026-04-14 12:10:54.229332	4.60	Leather	Green
24419	sportsshoes-11	Basketball Shoes with Leather Upper	Puma	men	sportsshoes	4008.00	2164.00	46	https://i.pinimg.com/736x/d3/5d/06/d35d06a1ced0d1c8f1e81c5bd1b5c05b.jpg	2026-04-14 12:10:54.232303	4.20	Georgette	Red
24420	sportsshoes-12	Soccer Cleats with Synthetic Upper	Essential Mart	men	sportsshoes	1856.00	835.00	55	https://i.pinimg.com/1200x/d8/1d/e8/d81de8afad05332cff3472afd15541a5.jpg	2026-04-14 12:10:54.234007	4.20	Leather	Pink
24421	sportsshoes-13	Running Shoes with Mesh Upper	Nike	men	sportsshoes	6287.00	5344.00	15	https://i.pinimg.com/1200x/06/6d/7c/066d7ca3ec8844d5ba6bde4b4792dfc4.jpg	2026-04-14 12:10:54.23565	4.10	Polyester	Black
24422	sportsshoes-14	Training Shoes with Leather Upper	Adidas	men	sportsshoes	5068.00	2483.00	51	https://i.pinimg.com/1200x/ef/71/00/ef71005b04e59a74d1c9f8396d0b4895.jpg	2026-04-14 12:10:54.237187	4.10	Cotton	Gold
24423	sportsshoes-15	Basketball Shoes with Synthetic Upper	Puma	men	sportsshoes	6010.00	3245.00	46	https://i.pinimg.com/736x/6c/db/3b/6cdb3b313d0db56ebc52f5feb602e8f2.jpg	2026-04-14 12:10:54.238341	4.80	Cotton	Green
24424	sportsshoes-16	Soccer Cleats with Mesh Upper	Essential Mart	men	sportsshoes	1810.00	1158.00	36	https://i.pinimg.com/736x/bf/dd/c7/bfddc7598c022475ac19f976163195df.jpg	2026-04-14 12:10:54.239408	4.40	Chiffon	Black
24425	sportsshoes-17	Running Shoes with Leather Upper	Nike	men	sportsshoes	4122.00	3380.00	18	https://i.pinimg.com/736x/f3/c6/88/f3c6883a105fb06145e63a4e09c0d974.jpg	2026-04-14 12:10:54.240452	4.40	Denim	Red
24426	sportsshoes-18	Training Shoes with Synthetic Upper	Adidas	men	sportsshoes	2000.00	1520.00	24	https://i.pinimg.com/736x/f1/94/2a/f1942ac7525b0ea732cb5bdf0f3cc2f6.jpg	2026-04-14 12:10:54.241515	4.10	Polyester	Gold
24427	sportsshoes-19	Basketball Shoes with Mesh Upper	Puma	men	sportsshoes	4385.00	2894.00	34	https://i.pinimg.com/736x/9f/ac/d8/9facd898902d4d27f5c8c94fe45abe29.jpg	2026-04-14 12:10:54.242572	4.80	Polyester	Black
24428	sportsshoes-20	Soccer Cleats with Leather Upper	Essential Mart	men	sportsshoes	1693.00	1151.00	32	https://i.pinimg.com/736x/6c/62/33/6c623319c3a469448c7900ddba697202.jpg	2026-04-14 12:10:54.244199	3.90	Linen	Blue
24429	sportsshoes-21	Running Shoes with Synthetic Upper	Nike	men	sportsshoes	3440.00	1858.00	46	https://i.pinimg.com/736x/69/95/d4/6995d407677a61da55b724e2a8ac61e6.jpg	2026-04-14 12:10:54.245417	4.10	Silk	Black
24430	sportsshoes-22	Training Shoes with Mesh Upper	Adidas	men	sportsshoes	6626.00	5500.00	17	https://i.pinimg.com/736x/d3/5d/06/d35d06a1ced0d1c8f1e81c5bd1b5c05b.jpg	2026-04-14 12:10:54.246917	4.50	Leather	Beige
24431	sportsshoes-23	Basketball Shoes with Leather Upper	Puma	men	sportsshoes	2967.00	1276.00	57	https://i.pinimg.com/1200x/d8/1d/e8/d81de8afad05332cff3472afd15541a5.jpg	2026-04-14 12:10:54.248225	4.40	Chiffon	White
24432	sportsshoes-24	Soccer Cleats with Synthetic Upper	Essential Mart	men	sportsshoes	3481.00	2089.00	40	https://i.pinimg.com/1200x/06/6d/7c/066d7ca3ec8844d5ba6bde4b4792dfc4.jpg	2026-04-14 12:10:54.249763	4.20	Silk	Grey
24433	sportsshoes-25	Running Shoes with Mesh Upper	Nike	men	sportsshoes	7180.00	3734.00	48	https://i.pinimg.com/1200x/ef/71/00/ef71005b04e59a74d1c9f8396d0b4895.jpg	2026-04-14 12:10:54.250852	5.00	Georgette	Green
24434	sportsshoes-26	Training Shoes with Leather Upper	Adidas	men	sportsshoes	1336.00	868.00	35	https://i.pinimg.com/736x/6c/db/3b/6cdb3b313d0db56ebc52f5feb602e8f2.jpg	2026-04-14 12:10:54.251901	3.90	Polyester	White
24435	sportsshoes-27	Basketball Shoes with Synthetic Upper	Puma	men	sportsshoes	2094.00	900.00	57	https://i.pinimg.com/736x/bf/dd/c7/bfddc7598c022475ac19f976163195df.jpg	2026-04-14 12:10:54.252954	4.80	Polyester	Blue
24436	sportsshoes-28	Soccer Cleats with Mesh Upper	Essential Mart	men	sportsshoes	1914.00	976.00	49	https://i.pinimg.com/736x/f3/c6/88/f3c6883a105fb06145e63a4e09c0d974.jpg	2026-04-14 12:10:54.253993	4.40	Silk	Beige
24437	sportsshoes-29	Running Shoes with Leather Upper	Nike	men	sportsshoes	3804.00	2168.00	43	https://i.pinimg.com/736x/f1/94/2a/f1942ac7525b0ea732cb5bdf0f3cc2f6.jpg	2026-04-14 12:10:54.255067	3.90	Cotton	Beige
24438	sportsshoes-30	Training Shoes with Synthetic Upper	Adidas	men	sportsshoes	5841.00	3680.00	37	https://i.pinimg.com/736x/9f/ac/d8/9facd898902d4d27f5c8c94fe45abe29.jpg	2026-04-14 12:10:54.256139	4.30	Chiffon	Pink
24439	sportsshoes-31	Basketball Shoes with Mesh Upper	Puma	men	sportsshoes	2191.00	1030.00	53	https://i.pinimg.com/736x/6c/62/33/6c623319c3a469448c7900ddba697202.jpg	2026-04-14 12:10:54.257195	4.40	Denim	White
24440	sportsshoes-32	Soccer Cleats with Leather Upper	Essential Mart	men	sportsshoes	7582.00	5232.00	31	https://i.pinimg.com/736x/69/95/d4/6995d407677a61da55b724e2a8ac61e6.jpg	2026-04-14 12:10:54.258478	4.90	Chiffon	Green
24441	sportsshoes-33	Running Shoes with Synthetic Upper	Nike	men	sportsshoes	3419.00	2222.00	35	https://i.pinimg.com/736x/d3/5d/06/d35d06a1ced0d1c8f1e81c5bd1b5c05b.jpg	2026-04-14 12:10:54.259959	4.80	Cotton	White
24442	sportsshoes-34	Training Shoes with Mesh Upper	Adidas	men	sportsshoes	3299.00	2441.00	26	https://i.pinimg.com/1200x/d8/1d/e8/d81de8afad05332cff3472afd15541a5.jpg	2026-04-14 12:10:54.261412	4.60	Leather	Grey
24443	sportsshoes-35	Basketball Shoes with Leather Upper	Puma	men	sportsshoes	7528.00	5194.00	31	https://i.pinimg.com/1200x/06/6d/7c/066d7ca3ec8844d5ba6bde4b4792dfc4.jpg	2026-04-14 12:10:54.262719	4.90	Polyester	Blue
24444	sportsshoes-36	Soccer Cleats with Synthetic Upper	Essential Mart	men	sportsshoes	7817.00	3439.00	56	https://i.pinimg.com/1200x/ef/71/00/ef71005b04e59a74d1c9f8396d0b4895.jpg	2026-04-14 12:10:54.264064	4.40	Silk	Pink
24445	sportsshoes-37	Running Shoes with Mesh Upper	Nike	men	sportsshoes	5874.00	2820.00	52	https://i.pinimg.com/736x/6c/db/3b/6cdb3b313d0db56ebc52f5feb602e8f2.jpg	2026-04-14 12:10:54.265512	4.00	Chiffon	Gold
24446	sportsshoes-38	Training Shoes with Leather Upper	Adidas	men	sportsshoes	1528.00	871.00	43	https://i.pinimg.com/736x/bf/dd/c7/bfddc7598c022475ac19f976163195df.jpg	2026-04-14 12:10:54.266758	5.00	Polyester	Black
24447	sportsshoes-39	Basketball Shoes with Synthetic Upper	Puma	men	sportsshoes	6724.00	4572.00	32	https://i.pinimg.com/736x/f3/c6/88/f3c6883a105fb06145e63a4e09c0d974.jpg	2026-04-14 12:10:54.268507	4.00	Polyester	Green
24448	sportsshoes-40	Soccer Cleats with Mesh Upper	Essential Mart	men	sportsshoes	3267.00	2352.00	28	https://i.pinimg.com/736x/f1/94/2a/f1942ac7525b0ea732cb5bdf0f3cc2f6.jpg	2026-04-14 12:10:54.269819	4.90	Georgette	Beige
24449	casualshoes-1	Loafers with Canvas Upper	Nike	men	casualshoes	2051.00	1292.00	37	https://i.pinimg.com/1200x/22/4f/30/224f30147751f925a1f34460da1541ea.jpg	2026-04-14 12:10:54.271774	4.80	Leather	Grey
24450	casualshoes-2	Slip-Ons with Leather Upper	Adidas	men	casualshoes	4428.00	2435.00	45	https://i.pinimg.com/736x/8c/6c/eb/8c6ceb62748479212899ed90da6ab7b2.jpg	2026-04-14 12:10:54.273305	4.40	Linen	Blue
24451	casualshoes-3	Boat Shoes with Synthetic Upper	Puma	men	casualshoes	7373.00	6193.00	16	https://i.pinimg.com/736x/cf/7e/6a/cf7e6acded8c859d5f2c8cf0493b94c1.jpg	2026-04-14 12:10:54.274711	3.90	Leather	Green
24452	casualshoes-4	Espadrilles with Canvas Upper	Essential Mart	men	casualshoes	7325.00	5714.00	22	https://img.fantaskycdn.com/02179cfa988877ab500318f1a0c82136_1024x.jpeg	2026-04-14 12:10:54.276015	4.50	Silk	Grey
24453	casualshoes-5	Loafers with Leather Upper	Nike	men	casualshoes	7833.00	3525.00	55	https://i.pinimg.com/736x/14/af/e7/14afe7c9e68bf4a6175d06d62e202422.jpg	2026-04-14 12:10:54.277668	4.10	Georgette	Red
24454	casualshoes-6	Slip-Ons with Synthetic Upper	Adidas	men	casualshoes	3121.00	2122.00	32	https://i.pinimg.com/736x/7b/da/36/7bda361609d72f1bc1bf0fc26ee66457.jpg	2026-04-14 12:10:54.279417	4.50	Georgette	Gold
24455	casualshoes-7	Boat Shoes with Canvas Upper	Puma	men	casualshoes	2864.00	2119.00	26	https://i.pinimg.com/1200x/59/5b/c7/595bc713888084f6667c4cf01e5bab32.jpg	2026-04-14 12:10:54.280731	4.50	Linen	Pink
24456	casualshoes-8	Espadrilles with Leather Upper	Essential Mart	men	casualshoes	7084.00	3400.00	52	https://i.pinimg.com/1200x/dd/c3/22/ddc322ff68c4ca9a0a38a15535888a7c.jpg	2026-04-14 12:10:54.282214	3.80	Chiffon	Green
24457	casualshoes-9	Loafers with Synthetic Upper	Nike	men	casualshoes	3701.00	1591.00	57	https://i.pinimg.com/1200x/47/aa/2e/47aa2efed6c26887236cac5362352254.jpg	2026-04-14 12:10:54.28366	4.10	Georgette	Green
24458	casualshoes-10	Slip-Ons with Canvas Upper	Adidas	men	casualshoes	6572.00	4600.00	30	https://i.pinimg.com/1200x/22/4f/30/224f30147751f925a1f34460da1541ea.jpg	2026-04-14 12:10:54.285226	4.60	Chiffon	White
24459	casualshoes-11	Boat Shoes with Leather Upper	Puma	men	casualshoes	5496.00	4122.00	25	https://i.pinimg.com/736x/8c/6c/eb/8c6ceb62748479212899ed90da6ab7b2.jpg	2026-04-14 12:10:54.286522	4.40	Cotton	Pink
24460	casualshoes-12	Espadrilles with Synthetic Upper	Essential Mart	men	casualshoes	1373.00	879.00	36	https://i.pinimg.com/736x/cf/7e/6a/cf7e6acded8c859d5f2c8cf0493b94c1.jpg	2026-04-14 12:10:54.28786	4.30	Denim	Black
24461	casualshoes-13	Loafers with Canvas Upper	Nike	men	casualshoes	2667.00	1307.00	51	https://img.fantaskycdn.com/02179cfa988877ab500318f1a0c82136_1024x.jpeg	2026-04-14 12:10:54.289304	4.40	Cotton	Beige
24462	casualshoes-14	Slip-Ons with Leather Upper	Adidas	men	casualshoes	1043.00	605.00	42	https://i.pinimg.com/736x/14/af/e7/14afe7c9e68bf4a6175d06d62e202422.jpg	2026-04-14 12:10:54.290918	4.40	Georgette	White
24463	casualshoes-15	Boat Shoes with Synthetic Upper	Puma	men	casualshoes	3680.00	3091.00	16	https://i.pinimg.com/736x/7b/da/36/7bda361609d72f1bc1bf0fc26ee66457.jpg	2026-04-14 12:10:54.292534	3.90	Denim	Red
24464	casualshoes-16	Espadrilles with Canvas Upper	Essential Mart	men	casualshoes	6431.00	2637.00	59	https://i.pinimg.com/1200x/59/5b/c7/595bc713888084f6667c4cf01e5bab32.jpg	2026-04-14 12:10:54.29389	4.40	Denim	Gold
24465	casualshoes-17	Loafers with Leather Upper	Nike	men	casualshoes	6856.00	5348.00	22	https://i.pinimg.com/1200x/dd/c3/22/ddc322ff68c4ca9a0a38a15535888a7c.jpg	2026-04-14 12:10:54.295367	4.30	Polyester	White
24466	casualshoes-18	Slip-Ons with Synthetic Upper	Adidas	men	casualshoes	1033.00	837.00	19	https://i.pinimg.com/1200x/47/aa/2e/47aa2efed6c26887236cac5362352254.jpg	2026-04-14 12:10:54.296847	3.90	Linen	Blue
24467	casualshoes-19	Boat Shoes with Canvas Upper	Puma	men	casualshoes	6023.00	3614.00	40	https://i.pinimg.com/1200x/22/4f/30/224f30147751f925a1f34460da1541ea.jpg	2026-04-14 12:10:54.298721	4.80	Cotton	Green
24468	casualshoes-20	Espadrilles with Leather Upper	Essential Mart	men	casualshoes	6990.00	3635.00	48	https://i.pinimg.com/736x/8c/6c/eb/8c6ceb62748479212899ed90da6ab7b2.jpg	2026-04-14 12:10:54.300255	4.10	Leather	Black
24469	casualshoes-21	Loafers with Synthetic Upper	Nike	men	casualshoes	4122.00	2226.00	46	https://i.pinimg.com/736x/cf/7e/6a/cf7e6acded8c859d5f2c8cf0493b94c1.jpg	2026-04-14 12:10:54.30189	4.90	Chiffon	Red
24470	casualshoes-22	Slip-Ons with Canvas Upper	Adidas	men	casualshoes	2134.00	1152.00	46	https://img.fantaskycdn.com/02179cfa988877ab500318f1a0c82136_1024x.jpeg	2026-04-14 12:10:54.303235	4.60	Cotton	Gold
24471	casualshoes-23	Boat Shoes with Leather Upper	Puma	men	casualshoes	2434.00	1022.00	58	https://i.pinimg.com/736x/14/af/e7/14afe7c9e68bf4a6175d06d62e202422.jpg	2026-04-14 12:10:54.304577	3.90	Cotton	Black
24472	casualshoes-24	Espadrilles with Synthetic Upper	Essential Mart	men	casualshoes	2840.00	1704.00	40	https://i.pinimg.com/736x/7b/da/36/7bda361609d72f1bc1bf0fc26ee66457.jpg	2026-04-14 12:10:54.30591	4.80	Silk	Pink
24473	casualshoes-25	Loafers with Canvas Upper	Nike	men	casualshoes	2351.00	1434.00	39	https://i.pinimg.com/1200x/59/5b/c7/595bc713888084f6667c4cf01e5bab32.jpg	2026-04-14 12:10:54.307731	4.80	Linen	Red
24474	casualshoes-26	Slip-Ons with Leather Upper	Adidas	men	casualshoes	2445.00	1027.00	58	https://i.pinimg.com/1200x/dd/c3/22/ddc322ff68c4ca9a0a38a15535888a7c.jpg	2026-04-14 12:10:54.309321	4.40	Silk	Red
24475	casualshoes-27	Boat Shoes with Synthetic Upper	Puma	men	casualshoes	3718.00	2119.00	43	https://i.pinimg.com/1200x/47/aa/2e/47aa2efed6c26887236cac5362352254.jpg	2026-04-14 12:10:54.31132	4.30	Leather	Grey
24476	casualshoes-28	Espadrilles with Canvas Upper	Essential Mart	men	casualshoes	4806.00	1922.00	60	https://i.pinimg.com/1200x/22/4f/30/224f30147751f925a1f34460da1541ea.jpg	2026-04-14 12:10:54.313419	4.10	Georgette	White
24477	casualshoes-29	Loafers with Leather Upper	Nike	men	casualshoes	7384.00	3470.00	53	https://i.pinimg.com/736x/8c/6c/eb/8c6ceb62748479212899ed90da6ab7b2.jpg	2026-04-14 12:10:54.315333	4.90	Chiffon	Beige
24478	casualshoes-30	Slip-Ons with Synthetic Upper	Adidas	men	casualshoes	6261.00	2880.00	54	https://i.pinimg.com/736x/cf/7e/6a/cf7e6acded8c859d5f2c8cf0493b94c1.jpg	2026-04-14 12:10:54.316835	5.00	Chiffon	Gold
24479	casualshoes-31	Boat Shoes with Canvas Upper	Puma	men	casualshoes	5337.00	3416.00	36	https://img.fantaskycdn.com/02179cfa988877ab500318f1a0c82136_1024x.jpeg	2026-04-14 12:10:54.318745	4.90	Cotton	Blue
24480	casualshoes-32	Espadrilles with Leather Upper	Essential Mart	men	casualshoes	5408.00	3623.00	33	https://i.pinimg.com/736x/14/af/e7/14afe7c9e68bf4a6175d06d62e202422.jpg	2026-04-14 12:10:54.321106	4.60	Chiffon	Black
24481	casualshoes-33	Loafers with Synthetic Upper	Nike	men	casualshoes	4972.00	3530.00	29	https://i.pinimg.com/736x/7b/da/36/7bda361609d72f1bc1bf0fc26ee66457.jpg	2026-04-14 12:10:54.322765	4.60	Polyester	Green
24482	casualshoes-34	Slip-Ons with Canvas Upper	Adidas	men	casualshoes	7602.00	5397.00	29	https://i.pinimg.com/1200x/59/5b/c7/595bc713888084f6667c4cf01e5bab32.jpg	2026-04-14 12:10:54.32466	4.40	Denim	Blue
24483	casualshoes-35	Boat Shoes with Leather Upper	Puma	men	casualshoes	4245.00	2887.00	32	https://i.pinimg.com/1200x/dd/c3/22/ddc322ff68c4ca9a0a38a15535888a7c.jpg	2026-04-14 12:10:54.326471	4.60	Georgette	White
24484	casualshoes-36	Espadrilles with Synthetic Upper	Essential Mart	men	casualshoes	5384.00	4469.00	17	https://i.pinimg.com/1200x/47/aa/2e/47aa2efed6c26887236cac5362352254.jpg	2026-04-14 12:10:54.32827	4.70	Leather	Red
24485	casualshoes-37	Loafers with Canvas Upper	Nike	men	casualshoes	7330.00	6231.00	15	https://i.pinimg.com/1200x/22/4f/30/224f30147751f925a1f34460da1541ea.jpg	2026-04-14 12:10:54.329626	4.50	Denim	White
24486	casualshoes-38	Slip-Ons with Leather Upper	Adidas	men	casualshoes	2157.00	949.00	56	https://i.pinimg.com/736x/8c/6c/eb/8c6ceb62748479212899ed90da6ab7b2.jpg	2026-04-14 12:10:54.330953	4.40	Denim	Pink
24487	casualshoes-39	Boat Shoes with Synthetic Upper	Puma	men	casualshoes	6158.00	2648.00	57	https://i.pinimg.com/736x/cf/7e/6a/cf7e6acded8c859d5f2c8cf0493b94c1.jpg	2026-04-14 12:10:54.332294	4.00	Polyester	Blue
24488	casualshoes-40	Espadrilles with Canvas Upper	Essential Mart	men	casualshoes	2692.00	1642.00	39	https://img.fantaskycdn.com/02179cfa988877ab500318f1a0c82136_1024x.jpeg	2026-04-14 12:10:54.333788	4.80	Georgette	Black
24489	wom-sar-1	Premium Banarasi Silk Designer Saree	Varkala	women	sarees	6674.00	3938.00	41	https://i.pinimg.com/736x/31/5b/54/315b5469733fefa7420f6d70c0d1de36.jpgc	2026-04-14 12:10:54.335668	4.50	Leather	Blue
24490	wom-sar-2	Premium Chiffon Designer Saree	Meena Bazaar	women	sarees	1550.00	1132.00	27	https://i.pinimg.com/736x/45/d8/ca/45d8ca3f740dd66793b86e9fbdaec7a0.jpg	2026-04-14 12:10:54.337433	4.20	Georgette	White
24491	wom-sar-3	Premium Georgette Designer Saree	FabIndia	women	sarees	4399.00	2068.00	53	https://i.pinimg.com/736x/7e/4d/64/7e4d64b14e7098ccf1165e5d53b390e2.jpg	2026-04-14 12:10:54.338589	4.00	Georgette	Blue
24492	wom-sar-4	Premium Kanjivaram Designer Saree	Kalamandir	women	sarees	6494.00	5390.00	17	https://i.pinimg.com/736x/3f/20/e1/3f20e1059bed83f5dfff6918042a441c.jpg	2026-04-14 12:10:54.33969	4.80	Cotton	Grey
24493	wom-sar-5	Premium Organza Designer Saree	Varkala	women	sarees	6791.00	4075.00	40	https://i.pinimg.com/736x/de/e5/e0/dee5e031314cb4f2897eac27500c1262.jpg	2026-04-14 12:10:54.340843	4.20	Denim	Grey
24494	wom-sar-6	Premium Banarasi Silk Designer Saree	Meena Bazaar	women	sarees	3871.00	2865.00	26	https://i.pinimg.com/736x/18/53/2c/18532cf0b400ba6881bc95b742b8b1ee.jpg	2026-04-14 12:10:54.341891	4.50	Georgette	White
24495	wom-sar-7	Premium Chiffon Designer Saree	FabIndia	women	sarees	2671.00	1736.00	35	https://i.pinimg.com/736x/cc/1c/a0/cc1ca01d6f69cb6c2c37d5ea9e900c57.jpg	2026-04-14 12:10:54.342924	3.80	Cotton	Gold
24496	wom-sar-8	Premium Georgette Designer Saree	Kalamandir	women	sarees	7390.00	4212.00	43	https://i.pinimg.com/1200x/d3/b7/b1/d3b7b1859552b88ede66c590078e4f9a.jpg	2026-04-14 12:10:54.343943	3.90	Chiffon	Green
24497	wom-sar-9	Premium Kanjivaram Designer Saree	Varkala	women	sarees	4024.00	2374.00	41	https://i.pinimg.com/1200x/b2/24/73/b22473b2bc74528ea1eb2387fd8e96cb.jpg	2026-04-14 12:10:54.345303	4.90	Chiffon	Grey
24498	wom-sar-10	Premium Organza Designer Saree	Meena Bazaar	women	sarees	7636.00	4887.00	36	https://i.pinimg.com/736x/d3/01/ff/d301ffab2f38887d595d465cca19a3b1.jpg	2026-04-14 12:10:54.346543	4.50	Linen	White
24499	wom-sar-11	Premium Banarasi Silk Designer Saree	FabIndia	women	sarees	1037.00	601.00	42	https://i.pinimg.com/736x/f5/5f/f6/f55ff645fa8980e923337bd65b4fd573.jpg	2026-04-14 12:10:54.347593	4.00	Silk	Grey
24500	wom-sar-12	Premium Chiffon Designer Saree	Kalamandir	women	sarees	5111.00	3680.00	28	https://i.pinimg.com/736x/17/1f/bc/171fbc755c9c67c09567593e55aa5a12.jpg	2026-04-14 12:10:54.348719	4.40	Cotton	Red
24501	wom-sar-13	Premium Georgette Designer Saree	Varkala	women	sarees	3538.00	1840.00	48	https://i.pinimg.com/736x/78/15/bf/7815bf70acd259b9a6526844a60d310e.jpg	2026-04-14 12:10:54.349728	4.80	Polyester	Black
24502	wom-sar-14	Premium Kanjivaram Designer Saree	Meena Bazaar	women	sarees	3866.00	1894.00	51	https://i.pinimg.com/736x/78/19/36/7819366649bd8457f8e125719d3b793c.jpg	2026-04-14 12:10:54.350755	3.80	Georgette	Black
24503	wom-sar-15	Premium Organza Designer Saree	FabIndia	women	sarees	3765.00	2861.00	24	https://i.pinimg.com/736x/2f/64/d6/2f64d63012fc5c83050e7564c965c3a0.jpg	2026-04-14 12:10:54.3518	3.90	Polyester	Grey
24504	wom-sar-16	Premium Banarasi Silk Designer Saree	Kalamandir	women	sarees	2497.00	1798.00	28	https://i.pinimg.com/736x/8e/0e/02/8e0e021f0b2de117c661721c1ec4b5e2.jpg	2026-04-14 12:10:54.352905	4.50	Leather	Gold
24505	wom-sar-17	Premium Chiffon Designer Saree	Varkala	women	sarees	3525.00	2714.00	23	https://i.pinimg.com/736x/61/01/cc/6101ccb5ba419cff2ecbd1028593d24f.jpg	2026-04-14 12:10:54.354041	4.00	Silk	White
24506	wom-sar-18	Premium Georgette Designer Saree	Meena Bazaar	women	sarees	6483.00	3177.00	51	https://i.pinimg.com/736x/31/5b/54/315b5469733fefa7420f6d70c0d1de36.jpgc	2026-04-14 12:10:54.355734	3.80	Polyester	Grey
24507	wom-sar-19	Premium Kanjivaram Designer Saree	FabIndia	women	sarees	6030.00	3678.00	39	https://i.pinimg.com/736x/45/d8/ca/45d8ca3f740dd66793b86e9fbdaec7a0.jpg	2026-04-14 12:10:54.35711	4.20	Georgette	Pink
24508	wom-sar-20	Premium Organza Designer Saree	Kalamandir	women	sarees	2017.00	1351.00	33	https://i.pinimg.com/736x/7e/4d/64/7e4d64b14e7098ccf1165e5d53b390e2.jpg	2026-04-14 12:10:54.358374	4.00	Denim	Gold
24509	wom-sar-21	Premium Banarasi Silk Designer Saree	Varkala	women	sarees	7811.00	3359.00	57	https://i.pinimg.com/736x/3f/20/e1/3f20e1059bed83f5dfff6918042a441c.jpg	2026-04-14 12:10:54.359581	4.40	Georgette	Beige
24510	wom-sar-22	Premium Chiffon Designer Saree	Meena Bazaar	women	sarees	5475.00	3230.00	41	https://i.pinimg.com/736x/de/e5/e0/dee5e031314cb4f2897eac27500c1262.jpg	2026-04-14 12:10:54.36138	4.90	Silk	Black
24511	wom-sar-23	Premium Georgette Designer Saree	FabIndia	women	sarees	2047.00	819.00	60	https://i.pinimg.com/736x/18/53/2c/18532cf0b400ba6881bc95b742b8b1ee.jpg	2026-04-14 12:10:54.362714	4.70	Denim	Green
24512	wom-sar-24	Premium Kanjivaram Designer Saree	Kalamandir	women	sarees	4764.00	3335.00	30	https://i.pinimg.com/736x/cc/1c/a0/cc1ca01d6f69cb6c2c37d5ea9e900c57.jpg	2026-04-14 12:10:54.364395	4.50	Polyester	Black
24513	wom-sar-25	Premium Organza Designer Saree	Varkala	women	sarees	4328.00	3636.00	16	https://i.pinimg.com/1200x/d3/b7/b1/d3b7b1859552b88ede66c590078e4f9a.jpg	2026-04-14 12:10:54.366181	4.00	Polyester	Black
24514	wom-sar-26	Premium Banarasi Silk Designer Saree	Meena Bazaar	women	sarees	5889.00	3239.00	45	https://i.pinimg.com/1200x/b2/24/73/b22473b2bc74528ea1eb2387fd8e96cb.jpg	2026-04-14 12:10:54.367514	4.10	Polyester	Red
24515	wom-sar-27	Premium Chiffon Designer Saree	FabIndia	women	sarees	4008.00	1964.00	51	https://i.pinimg.com/736x/d3/01/ff/d301ffab2f38887d595d465cca19a3b1.jpg	2026-04-14 12:10:54.369096	4.40	Denim	Beige
24516	wom-sar-28	Premium Georgette Designer Saree	Kalamandir	women	sarees	4875.00	3998.00	18	https://i.pinimg.com/736x/f5/5f/f6/f55ff645fa8980e923337bd65b4fd573.jpg	2026-04-14 12:10:54.370319	4.20	Leather	Beige
24517	wom-sar-29	Premium Kanjivaram Designer Saree	Varkala	women	sarees	5835.00	2976.00	49	https://i.pinimg.com/736x/17/1f/bc/171fbc755c9c67c09567593e55aa5a12.jpg	2026-04-14 12:10:54.371585	5.00	Georgette	Black
24518	wom-sar-30	Premium Organza Designer Saree	Meena Bazaar	women	sarees	5908.00	4372.00	26	https://i.pinimg.com/736x/78/15/bf/7815bf70acd259b9a6526844a60d310e.jpg	2026-04-14 12:10:54.372839	3.90	Georgette	Beige
24519	wom-sar-31	Premium Banarasi Silk Designer Saree	FabIndia	women	sarees	2169.00	1670.00	23	https://i.pinimg.com/736x/78/19/36/7819366649bd8457f8e125719d3b793c.jpg	2026-04-14 12:10:54.374101	4.80	Cotton	Grey
24520	wom-sar-32	Premium Chiffon Designer Saree	Kalamandir	women	sarees	6852.00	5070.00	26	https://i.pinimg.com/736x/2f/64/d6/2f64d63012fc5c83050e7564c965c3a0.jpg	2026-04-14 12:10:54.375284	5.00	Silk	Blue
24521	wom-sar-33	Premium Georgette Designer Saree	Varkala	women	sarees	3072.00	2519.00	18	https://i.pinimg.com/736x/8e/0e/02/8e0e021f0b2de117c661721c1ec4b5e2.jpg	2026-04-14 12:10:54.376431	4.20	Georgette	Grey
24522	wom-sar-34	Premium Kanjivaram Designer Saree	Meena Bazaar	women	sarees	3243.00	2367.00	27	https://i.pinimg.com/736x/61/01/cc/6101ccb5ba419cff2ecbd1028593d24f.jpg	2026-04-14 12:10:54.377802	3.90	Georgette	Green
24523	wom-sar-35	Premium Organza Designer Saree	FabIndia	women	sarees	4652.00	2605.00	44	https://i.pinimg.com/736x/31/5b/54/315b5469733fefa7420f6d70c0d1de36.jpgc	2026-04-14 12:10:54.379507	4.90	Denim	Red
25186	kid-feed-18	Baby Bowl Kids Wear	Essential Kids	kids	feeding	7571.00	4694.00	38	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.187263	5.00	Denim	Green
24524	wom-sar-36	Premium Banarasi Silk Designer Saree	Kalamandir	women	sarees	7208.00	4325.00	40	https://i.pinimg.com/736x/45/d8/ca/45d8ca3f740dd66793b86e9fbdaec7a0.jpg	2026-04-14 12:10:54.38091	4.60	Chiffon	Blue
24525	wom-sar-37	Premium Chiffon Designer Saree	Varkala	women	sarees	3020.00	1721.00	43	https://i.pinimg.com/736x/7e/4d/64/7e4d64b14e7098ccf1165e5d53b390e2.jpg	2026-04-14 12:10:54.382106	4.00	Silk	Beige
24526	wom-sar-38	Premium Georgette Designer Saree	Meena Bazaar	women	sarees	5974.00	2688.00	55	https://i.pinimg.com/736x/3f/20/e1/3f20e1059bed83f5dfff6918042a441c.jpg	2026-04-14 12:10:54.38308	4.90	Polyester	Grey
24527	wom-sar-39	Premium Kanjivaram Designer Saree	FabIndia	women	sarees	5297.00	3443.00	35	https://i.pinimg.com/736x/de/e5/e0/dee5e031314cb4f2897eac27500c1262.jpg	2026-04-14 12:10:54.383954	4.70	Linen	Gold
24528	wom-sar-40	Premium Organza Designer Saree	Kalamandir	women	sarees	5730.00	3954.00	31	https://i.pinimg.com/736x/18/53/2c/18532cf0b400ba6881bc95b742b8b1ee.jpg	2026-04-14 12:10:54.384813	4.90	Silk	Gold
24529	wom-sar-41	Premium Banarasi Silk Designer Saree	Varkala	women	sarees	5012.00	2857.00	43	https://i.pinimg.com/736x/cc/1c/a0/cc1ca01d6f69cb6c2c37d5ea9e900c57.jpg	2026-04-14 12:10:54.385746	4.40	Silk	Beige
24530	wom-sar-42	Premium Chiffon Designer Saree	Meena Bazaar	women	sarees	7867.00	3855.00	51	https://i.pinimg.com/1200x/d3/b7/b1/d3b7b1859552b88ede66c590078e4f9a.jpg	2026-04-14 12:10:54.386678	4.00	Georgette	White
24531	wom-sar-43	Premium Georgette Designer Saree	FabIndia	women	sarees	5980.00	4425.00	26	https://i.pinimg.com/1200x/b2/24/73/b22473b2bc74528ea1eb2387fd8e96cb.jpg	2026-04-14 12:10:54.387547	4.90	Denim	Blue
24532	wom-sar-44	Premium Kanjivaram Designer Saree	Kalamandir	women	sarees	2429.00	1117.00	54	https://i.pinimg.com/736x/d3/01/ff/d301ffab2f38887d595d465cca19a3b1.jpg	2026-04-14 12:10:54.388428	3.90	Silk	Gold
24533	wom-sar-45	Premium Organza Designer Saree	Varkala	women	sarees	1050.00	662.00	37	https://i.pinimg.com/736x/f5/5f/f6/f55ff645fa8980e923337bd65b4fd573.jpg	2026-04-14 12:10:54.389288	4.90	Chiffon	Green
24534	wom-sar-46	Premium Banarasi Silk Designer Saree	Meena Bazaar	women	sarees	1468.00	881.00	40	https://i.pinimg.com/736x/17/1f/bc/171fbc755c9c67c09567593e55aa5a12.jpg	2026-04-14 12:10:54.39014	4.90	Georgette	White
24535	wom-sar-47	Premium Chiffon Designer Saree	FabIndia	women	sarees	3759.00	1729.00	54	https://i.pinimg.com/736x/78/15/bf/7815bf70acd259b9a6526844a60d310e.jpg	2026-04-14 12:10:54.390986	4.20	Chiffon	Black
24536	wom-sar-48	Premium Georgette Designer Saree	Kalamandir	women	sarees	1714.00	874.00	49	https://i.pinimg.com/736x/78/19/36/7819366649bd8457f8e125719d3b793c.jpg	2026-04-14 12:10:54.391852	3.80	Linen	Pink
24537	wom-sar-49	Premium Kanjivaram Designer Saree	Varkala	women	sarees	7017.00	4070.00	42	https://i.pinimg.com/736x/2f/64/d6/2f64d63012fc5c83050e7564c965c3a0.jpg	2026-04-14 12:10:54.39272	3.90	Silk	Black
24538	wom-sar-50	Premium Organza Designer Saree	Meena Bazaar	women	sarees	1771.00	1169.00	34	https://i.pinimg.com/736x/8e/0e/02/8e0e021f0b2de117c661721c1ec4b5e2.jpg	2026-04-14 12:10:54.393547	4.20	Silk	Green
24539	wom-kur-1	Anarkali Cotton Embroidered Kurti	Biba	women	kurtis	4205.00	1850.00	56	https://i.pinimg.com/736x/39/fa/bd/39fabde536d0176b2f846c8576ede5db.jpg	2026-04-14 12:10:54.394895	5.00	Silk	Green
24540	wom-kur-2	Straight Fit Rayon Embroidered Kurti	Libas	women	kurtis	3629.00	2685.00	26	https://i.pinimg.com/736x/4d/f7/08/4df7088eb52e26477e5123149a477685.jpg	2026-04-14 12:10:54.39609	3.90	Denim	Grey
24541	wom-kur-3	A-Line Silk Blend Embroidered Kurti	W for Woman	women	kurtis	4619.00	3464.00	25	https://i.pinimg.com/736x/85/70/38/8570385e1ce667b082ed503e7921c834.jpg	2026-04-14 12:10:54.396972	4.30	Silk	Black
24542	wom-kur-4	Short Kurti Cotton Embroidered Kurti	Aurelia	women	kurtis	5946.00	3151.00	47	https://i.pinimg.com/736x/48/56/4c/48564cf4d42453ddf5a5466bef16fbcf.jpg	2026-04-14 12:10:54.397853	4.00	Polyester	Red
24543	wom-kur-5	Anarkali Rayon Embroidered Kurti	Biba	women	kurtis	1786.00	750.00	58	https://i.pinimg.com/736x/16/49/42/164942189c45ff1b1711edfcc1d930c4.jpg	2026-04-14 12:10:54.398775	4.40	Linen	Blue
24544	wom-kur-6	Straight Fit Silk Blend Embroidered Kurti	Libas	women	kurtis	1339.00	884.00	34	https://i.pinimg.com/736x/f6/b7/85/f6b78573665dedfe6bee11ab9d1691c6.jpg	2026-04-14 12:10:54.399747	4.00	Chiffon	Beige
24545	wom-kur-7	A-Line Cotton Embroidered Kurti	W for Woman	women	kurtis	6949.00	4169.00	40	https://i.pinimg.com/736x/18/34/e8/1834e81d16fefd8fc50871b0d8724b96.jpg	2026-04-14 12:10:54.400729	4.40	Silk	Pink
24546	wom-kur-8	Short Kurti Rayon Embroidered Kurti	Aurelia	women	kurtis	4594.00	2159.00	53	https://i.pinimg.com/736x/f3/2b/5c/f32b5ccc1fd0107e9951b5305c59f32f.jpg	2026-04-14 12:10:54.402222	4.70	Chiffon	Gold
24547	wom-kur-9	Anarkali Silk Blend Embroidered Kurti	Biba	women	kurtis	6801.00	2788.00	59	https://i.pinimg.com/736x/39/fa/bd/39fabde536d0176b2f846c8576ede5db.jpg	2026-04-14 12:10:54.403557	4.70	Leather	Pink
24548	wom-kur-10	Straight Fit Cotton Embroidered Kurti	Libas	women	kurtis	6577.00	4933.00	25	https://i.pinimg.com/736x/4d/f7/08/4df7088eb52e26477e5123149a477685.jpg	2026-04-14 12:10:54.405019	4.10	Linen	White
24549	wom-kur-11	A-Line Rayon Embroidered Kurti	W for Woman	women	kurtis	1103.00	607.00	45	https://i.pinimg.com/736x/85/70/38/8570385e1ce667b082ed503e7921c834.jpg	2026-04-14 12:10:54.40666	3.80	Silk	Green
24550	wom-kur-12	Short Kurti Silk Blend Embroidered Kurti	Aurelia	women	kurtis	4541.00	3042.00	33	https://i.pinimg.com/736x/48/56/4c/48564cf4d42453ddf5a5466bef16fbcf.jpg	2026-04-14 12:10:54.407955	4.90	Linen	White
24551	wom-kur-13	Anarkali Cotton Embroidered Kurti	Biba	women	kurtis	5075.00	4060.00	20	https://i.pinimg.com/736x/16/49/42/164942189c45ff1b1711edfcc1d930c4.jpg	2026-04-14 12:10:54.409748	4.80	Denim	White
24552	wom-kur-14	Straight Fit Rayon Embroidered Kurti	Libas	women	kurtis	7580.00	4548.00	40	https://i.pinimg.com/736x/f6/b7/85/f6b78573665dedfe6bee11ab9d1691c6.jpg	2026-04-14 12:10:54.411163	4.70	Silk	Blue
24553	wom-kur-15	A-Line Silk Blend Embroidered Kurti	W for Woman	women	kurtis	3684.00	1805.00	51	https://i.pinimg.com/736x/18/34/e8/1834e81d16fefd8fc50871b0d8724b96.jpg	2026-04-14 12:10:54.412731	4.10	Georgette	Beige
24554	wom-kur-16	Short Kurti Cotton Embroidered Kurti	Aurelia	women	kurtis	3830.00	2528.00	34	https://i.pinimg.com/736x/f3/2b/5c/f32b5ccc1fd0107e9951b5305c59f32f.jpg	2026-04-14 12:10:54.414211	4.60	Denim	Green
24555	wom-kur-17	Anarkali Rayon Embroidered Kurti	Biba	women	kurtis	4436.00	2795.00	37	https://i.pinimg.com/736x/39/fa/bd/39fabde536d0176b2f846c8576ede5db.jpg	2026-04-14 12:10:54.415537	4.90	Chiffon	Red
24556	wom-kur-18	Straight Fit Silk Blend Embroidered Kurti	Libas	women	kurtis	6870.00	5290.00	23	https://i.pinimg.com/736x/4d/f7/08/4df7088eb52e26477e5123149a477685.jpg	2026-04-14 12:10:54.416711	4.40	Georgette	Red
24557	wom-kur-19	A-Line Cotton Embroidered Kurti	W for Woman	women	kurtis	5571.00	3343.00	40	https://i.pinimg.com/736x/85/70/38/8570385e1ce667b082ed503e7921c834.jpg	2026-04-14 12:10:54.417955	4.80	Denim	Gold
24558	wom-kur-20	Short Kurti Rayon Embroidered Kurti	Aurelia	women	kurtis	5905.00	3189.00	46	https://i.pinimg.com/736x/48/56/4c/48564cf4d42453ddf5a5466bef16fbcf.jpg	2026-04-14 12:10:54.419165	3.90	Georgette	Pink
24559	wom-kur-21	Anarkali Silk Blend Embroidered Kurti	Biba	women	kurtis	2490.00	996.00	60	https://i.pinimg.com/736x/16/49/42/164942189c45ff1b1711edfcc1d930c4.jpg	2026-04-14 12:10:54.420296	5.00	Leather	Red
24560	wom-kur-22	Straight Fit Cotton Embroidered Kurti	Libas	women	kurtis	3488.00	2267.00	35	https://i.pinimg.com/736x/f6/b7/85/f6b78573665dedfe6bee11ab9d1691c6.jpg	2026-04-14 12:10:54.421455	4.90	Leather	Green
24561	wom-kur-23	A-Line Rayon Embroidered Kurti	W for Woman	women	kurtis	5218.00	4122.00	21	https://i.pinimg.com/736x/18/34/e8/1834e81d16fefd8fc50871b0d8724b96.jpg	2026-04-14 12:10:54.422651	4.30	Polyester	Red
24562	wom-kur-24	Short Kurti Silk Blend Embroidered Kurti	Aurelia	women	kurtis	7252.00	4061.00	44	https://i.pinimg.com/736x/f3/2b/5c/f32b5ccc1fd0107e9951b5305c59f32f.jpg	2026-04-14 12:10:54.423823	4.00	Cotton	Gold
24563	wom-kur-25	Anarkali Cotton Embroidered Kurti	Biba	women	kurtis	3428.00	2331.00	32	https://i.pinimg.com/736x/39/fa/bd/39fabde536d0176b2f846c8576ede5db.jpg	2026-04-14 12:10:54.425037	3.80	Cotton	Blue
24564	wom-kur-26	Straight Fit Rayon Embroidered Kurti	Libas	women	kurtis	4008.00	1964.00	51	https://i.pinimg.com/736x/4d/f7/08/4df7088eb52e26477e5123149a477685.jpg	2026-04-14 12:10:54.426109	4.10	Linen	Beige
24565	wom-kur-27	A-Line Silk Blend Embroidered Kurti	W for Woman	women	kurtis	5242.00	3827.00	27	https://i.pinimg.com/736x/85/70/38/8570385e1ce667b082ed503e7921c834.jpg	2026-04-14 12:10:54.427081	4.40	Georgette	Blue
24566	wom-kur-28	Short Kurti Cotton Embroidered Kurti	Aurelia	women	kurtis	6179.00	3769.00	39	https://i.pinimg.com/736x/48/56/4c/48564cf4d42453ddf5a5466bef16fbcf.jpg	2026-04-14 12:10:54.428201	4.10	Leather	Gold
24567	wom-kur-29	Anarkali Rayon Embroidered Kurti	Biba	women	kurtis	4647.00	3532.00	24	https://i.pinimg.com/736x/16/49/42/164942189c45ff1b1711edfcc1d930c4.jpg	2026-04-14 12:10:54.429205	4.60	Cotton	Beige
24568	wom-kur-30	Straight Fit Silk Blend Embroidered Kurti	Libas	women	kurtis	1923.00	1019.00	47	https://i.pinimg.com/736x/f6/b7/85/f6b78573665dedfe6bee11ab9d1691c6.jpg	2026-04-14 12:10:54.430539	4.30	Cotton	Red
24569	wom-kur-31	A-Line Cotton Embroidered Kurti	W for Woman	women	kurtis	7318.00	4171.00	43	https://i.pinimg.com/736x/18/34/e8/1834e81d16fefd8fc50871b0d8724b96.jpg	2026-04-14 12:10:54.431558	4.60	Denim	Black
24570	wom-kur-32	Short Kurti Rayon Embroidered Kurti	Aurelia	women	kurtis	1987.00	795.00	60	https://i.pinimg.com/736x/f3/2b/5c/f32b5ccc1fd0107e9951b5305c59f32f.jpg	2026-04-14 12:10:54.432427	4.90	Polyester	Red
24571	wom-kur-33	Anarkali Silk Blend Embroidered Kurti	Biba	women	kurtis	1738.00	799.00	54	https://i.pinimg.com/736x/39/fa/bd/39fabde536d0176b2f846c8576ede5db.jpg	2026-04-14 12:10:54.433435	4.00	Cotton	Beige
24572	wom-kur-34	Straight Fit Cotton Embroidered Kurti	Libas	women	kurtis	6650.00	3924.00	41	https://i.pinimg.com/736x/4d/f7/08/4df7088eb52e26477e5123149a477685.jpg	2026-04-14 12:10:54.434408	3.90	Leather	Beige
24573	wom-kur-35	A-Line Rayon Embroidered Kurti	W for Woman	women	kurtis	3393.00	2002.00	41	https://i.pinimg.com/736x/85/70/38/8570385e1ce667b082ed503e7921c834.jpg	2026-04-14 12:10:54.435268	3.80	Denim	Green
24574	wom-kur-36	Short Kurti Silk Blend Embroidered Kurti	Aurelia	women	kurtis	3568.00	2105.00	41	https://i.pinimg.com/736x/48/56/4c/48564cf4d42453ddf5a5466bef16fbcf.jpg	2026-04-14 12:10:54.436132	4.80	Silk	Gold
24575	wom-kur-37	Anarkali Cotton Embroidered Kurti	Biba	women	kurtis	4778.00	2962.00	38	https://i.pinimg.com/736x/16/49/42/164942189c45ff1b1711edfcc1d930c4.jpg	2026-04-14 12:10:54.43699	4.50	Cotton	Pink
24576	wom-kur-38	Straight Fit Rayon Embroidered Kurti	Libas	women	kurtis	5810.00	4822.00	17	https://i.pinimg.com/736x/f6/b7/85/f6b78573665dedfe6bee11ab9d1691c6.jpg	2026-04-14 12:10:54.437848	4.20	Silk	Red
24577	wom-kur-39	A-Line Silk Blend Embroidered Kurti	W for Woman	women	kurtis	1178.00	919.00	22	https://i.pinimg.com/736x/18/34/e8/1834e81d16fefd8fc50871b0d8724b96.jpg	2026-04-14 12:10:54.438818	4.30	Linen	Green
24578	wom-kur-40	Short Kurti Cotton Embroidered Kurti	Aurelia	women	kurtis	7568.00	4465.00	41	https://i.pinimg.com/736x/f3/2b/5c/f32b5ccc1fd0107e9951b5305c59f32f.jpg	2026-04-14 12:10:54.439689	3.80	Georgette	Black
24579	wom-top-1	Crop Top Cotton Casual Top	H&M	women	tops	1306.00	810.00	38	https://i.pinimg.com/736x/b0/67/04/b0670456c73dd75bca28a1ebae946464.jpg	2026-04-14 12:10:54.440821	4.50	Linen	Pink
24580	wom-top-2	Peplum Top Polyester Casual Top	Zara	women	tops	7115.00	2988.00	58	https://i.pinimg.com/736x/bf/b6/d6/bfb6d68dbc29e36f95755deab44a0f95.jpg	2026-04-14 12:10:54.441861	4.40	Denim	Black
24581	wom-top-3	Off-Shoulder Silk Blend Casual Top	Forever 21	women	tops	7686.00	6533.00	15	https://i.pinimg.com/1200x/e1/1a/d6/e11ad623f494e27924d33917fc6f982e.jpg	2026-04-14 12:10:54.442944	4.50	Georgette	Blue
24582	wom-top-4	Tank Top Cotton Casual Top	Essential Mart	women	tops	6935.00	3051.00	56	https://i.pinimg.com/736x/d8/19/47/d81947d8436bcda8b2d2a115ae722512.jpg	2026-04-14 12:10:54.443802	4.70	Linen	White
24583	wom-top-5	Crop Top Polyester Casual Top	H&M	women	tops	6909.00	2971.00	57	https://i.pinimg.com/736x/6c/e6/98/6ce698730258f74135f1c7339f0a00ed.jpg	2026-04-14 12:10:54.444929	4.60	Cotton	White
24584	wom-top-6	Peplum Top Silk Blend Casual Top	Zara	women	tops	3209.00	2599.00	19	https://i.pinimg.com/736x/92/02/57/9202576b6ed6742499cc7ea7de84b2a1.jpg	2026-04-14 12:10:54.446025	4.70	Denim	Pink
24585	wom-top-7	Off-Shoulder Cotton Casual Top	Forever 21	women	tops	5523.00	2209.00	60	https://i.pinimg.com/1200x/db/c6/38/dbc6386d5fca2e9a82a3d4ac0c78f63d.jpg	2026-04-14 12:10:54.446915	4.90	Denim	Pink
24586	wom-top-8	Tank Top Polyester Casual Top	Essential Mart	women	tops	1091.00	546.00	50	https://i.pinimg.com/736x/7b/bd/53/7bbd538f37332c17f174f94c20cab7b3.jpg	2026-04-14 12:10:54.447804	3.90	Cotton	Pink
24587	wom-top-9	Crop Top Silk Blend Casual Top	H&M	women	tops	5249.00	4357.00	17	https://i.pinimg.com/736x/90/2e/5e/902e5e1ee9519a93efbc9e3966b34b40.jpg	2026-04-14 12:10:54.448858	4.60	Cotton	Beige
24588	wom-top-10	Peplum Top Cotton Casual Top	Zara	women	tops	3533.00	2791.00	21	https://i.pinimg.com/736x/4b/f5/e4/4bf5e481508b58e8156564444b01368d.jpg	2026-04-14 12:10:54.450565	4.00	Leather	Pink
24589	wom-top-11	Off-Shoulder Polyester Casual Top	Forever 21	women	tops	6863.00	4735.00	31	https://i.pinimg.com/736x/7a/1e/a1/7a1ea1c302c1bed475e36b5bf9a1d430.jpg	2026-04-14 12:10:54.4518	4.60	Denim	White
24590	wom-top-12	Tank Top Silk Blend Casual Top	Essential Mart	women	tops	3937.00	2953.00	25	https://i.pinimg.com/1200x/fc/71/14/fc71147a5090871de62fcc02b9e71ee2.jpg	2026-04-14 12:10:54.452922	4.80	Cotton	Blue
24591	wom-top-13	Crop Top Cotton Casual Top	H&M	women	tops	5143.00	3034.00	41	https://i.pinimg.com/736x/b0/67/04/b0670456c73dd75bca28a1ebae946464.jpg	2026-04-14 12:10:54.454139	3.90	Silk	Gold
24592	wom-top-14	Peplum Top Polyester Casual Top	Zara	women	tops	7066.00	5582.00	21	https://i.pinimg.com/736x/bf/b6/d6/bfb6d68dbc29e36f95755deab44a0f95.jpg	2026-04-14 12:10:54.455317	5.00	Linen	Beige
24593	wom-top-15	Off-Shoulder Silk Blend Casual Top	Forever 21	women	tops	4824.00	2846.00	41	https://i.pinimg.com/1200x/e1/1a/d6/e11ad623f494e27924d33917fc6f982e.jpg	2026-04-14 12:10:54.456596	4.50	Chiffon	Black
24594	wom-top-16	Tank Top Cotton Casual Top	Essential Mart	women	tops	3712.00	1633.00	56	https://i.pinimg.com/736x/d8/19/47/d81947d8436bcda8b2d2a115ae722512.jpg	2026-04-14 12:10:54.458031	5.00	Leather	White
24595	wom-top-17	Crop Top Polyester Casual Top	H&M	women	tops	4553.00	3642.00	20	https://i.pinimg.com/736x/6c/e6/98/6ce698730258f74135f1c7339f0a00ed.jpg	2026-04-14 12:10:54.459357	4.50	Linen	Pink
24596	wom-top-18	Peplum Top Silk Blend Casual Top	Zara	women	tops	1692.00	728.00	57	https://i.pinimg.com/736x/92/02/57/9202576b6ed6742499cc7ea7de84b2a1.jpg	2026-04-14 12:10:54.460649	4.60	Denim	Beige
24597	wom-top-19	Off-Shoulder Cotton Casual Top	Forever 21	women	tops	6494.00	4481.00	31	https://i.pinimg.com/1200x/db/c6/38/dbc6386d5fca2e9a82a3d4ac0c78f63d.jpg	2026-04-14 12:10:54.46204	4.60	Leather	Pink
24598	wom-top-20	Tank Top Polyester Casual Top	Essential Mart	women	tops	3480.00	2053.00	41	https://i.pinimg.com/736x/7b/bd/53/7bbd538f37332c17f174f94c20cab7b3.jpg	2026-04-14 12:10:54.463534	3.90	Cotton	Green
24599	wom-top-21	Crop Top Silk Blend Casual Top	H&M	women	tops	6177.00	3459.00	44	https://i.pinimg.com/736x/90/2e/5e/902e5e1ee9519a93efbc9e3966b34b40.jpg	2026-04-14 12:10:54.465387	3.90	Silk	Beige
24600	wom-top-22	Peplum Top Cotton Casual Top	Zara	women	tops	1919.00	1420.00	26	https://i.pinimg.com/736x/4b/f5/e4/4bf5e481508b58e8156564444b01368d.jpg	2026-04-14 12:10:54.466756	4.70	Georgette	Gold
24601	wom-top-23	Off-Shoulder Polyester Casual Top	Forever 21	women	tops	7630.00	6333.00	17	https://i.pinimg.com/736x/7a/1e/a1/7a1ea1c302c1bed475e36b5bf9a1d430.jpg	2026-04-14 12:10:54.468194	4.90	Georgette	Gold
24602	wom-top-24	Tank Top Silk Blend Casual Top	Essential Mart	women	tops	1680.00	1243.00	26	https://i.pinimg.com/1200x/fc/71/14/fc71147a5090871de62fcc02b9e71ee2.jpg	2026-04-14 12:10:54.469662	4.60	Georgette	Red
24603	wom-top-25	Crop Top Cotton Casual Top	H&M	women	tops	4136.00	3267.00	21	https://i.pinimg.com/736x/b0/67/04/b0670456c73dd75bca28a1ebae946464.jpg	2026-04-14 12:10:54.471016	3.90	Denim	Grey
24604	wom-top-26	Peplum Top Polyester Casual Top	Zara	women	tops	7769.00	4118.00	47	https://i.pinimg.com/736x/bf/b6/d6/bfb6d68dbc29e36f95755deab44a0f95.jpg	2026-04-14 12:10:54.472326	4.50	Polyester	Green
24605	wom-top-27	Off-Shoulder Silk Blend Casual Top	Forever 21	women	tops	2369.00	1492.00	37	https://i.pinimg.com/1200x/e1/1a/d6/e11ad623f494e27924d33917fc6f982e.jpg	2026-04-14 12:10:54.473611	4.20	Georgette	Red
24606	wom-top-28	Tank Top Cotton Casual Top	Essential Mart	women	tops	7660.00	3983.00	48	https://i.pinimg.com/736x/d8/19/47/d81947d8436bcda8b2d2a115ae722512.jpg	2026-04-14 12:10:54.474789	4.20	Denim	White
24607	wom-top-29	Crop Top Polyester Casual Top	H&M	women	tops	1362.00	586.00	57	https://i.pinimg.com/736x/6c/e6/98/6ce698730258f74135f1c7339f0a00ed.jpg	2026-04-14 12:10:54.476096	5.00	Chiffon	Red
24608	wom-top-30	Peplum Top Silk Blend Casual Top	Zara	women	tops	6542.00	3991.00	39	https://i.pinimg.com/736x/92/02/57/9202576b6ed6742499cc7ea7de84b2a1.jpg	2026-04-14 12:10:54.477335	4.00	Linen	White
24609	wom-top-31	Off-Shoulder Cotton Casual Top	Forever 21	women	tops	5425.00	3418.00	37	https://i.pinimg.com/1200x/db/c6/38/dbc6386d5fca2e9a82a3d4ac0c78f63d.jpg	2026-04-14 12:10:54.478736	4.80	Cotton	Pink
24610	wom-top-32	Tank Top Polyester Casual Top	Essential Mart	women	tops	3389.00	1423.00	58	https://i.pinimg.com/736x/7b/bd/53/7bbd538f37332c17f174f94c20cab7b3.jpg	2026-04-14 12:10:54.480314	4.60	Linen	White
24611	wom-top-33	Crop Top Silk Blend Casual Top	H&M	women	tops	1998.00	1299.00	35	https://i.pinimg.com/736x/90/2e/5e/902e5e1ee9519a93efbc9e3966b34b40.jpg	2026-04-14 12:10:54.481782	3.90	Georgette	Grey
24612	wom-top-34	Peplum Top Cotton Casual Top	Zara	women	tops	4841.00	2905.00	40	https://i.pinimg.com/736x/4b/f5/e4/4bf5e481508b58e8156564444b01368d.jpg	2026-04-14 12:10:54.482953	4.50	Polyester	Beige
24613	wom-top-35	Off-Shoulder Polyester Casual Top	Forever 21	women	tops	5024.00	2914.00	42	https://i.pinimg.com/736x/7a/1e/a1/7a1ea1c302c1bed475e36b5bf9a1d430.jpg	2026-04-14 12:10:54.48419	4.10	Leather	Red
24614	wom-top-36	Tank Top Silk Blend Casual Top	Essential Mart	women	tops	2908.00	1425.00	51	https://i.pinimg.com/1200x/fc/71/14/fc71147a5090871de62fcc02b9e71ee2.jpg	2026-04-14 12:10:54.485409	5.00	Georgette	Gold
24615	wom-top-37	Crop Top Cotton Casual Top	H&M	women	tops	5007.00	4056.00	19	https://i.pinimg.com/736x/b0/67/04/b0670456c73dd75bca28a1ebae946464.jpg	2026-04-14 12:10:54.486668	4.00	Linen	Blue
24616	wom-top-38	Peplum Top Polyester Casual Top	Zara	women	tops	1884.00	1017.00	46	https://i.pinimg.com/736x/bf/b6/d6/bfb6d68dbc29e36f95755deab44a0f95.jpg	2026-04-14 12:10:54.487843	3.80	Linen	Green
24617	wom-top-39	Off-Shoulder Silk Blend Casual Top	Forever 21	women	tops	7845.00	4472.00	43	https://i.pinimg.com/1200x/e1/1a/d6/e11ad623f494e27924d33917fc6f982e.jpg	2026-04-14 12:10:54.489114	4.80	Silk	Red
24618	wom-top-40	Tank Top Cotton Casual Top	Essential Mart	women	tops	6078.00	3343.00	45	https://i.pinimg.com/736x/d8/19/47/d81947d8436bcda8b2d2a115ae722512.jpg	2026-04-14 12:10:54.490236	4.60	Denim	Gold
24619	wom-leh-1	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	4426.00	3629.00	18	https://i.pinimg.com/1200x/c7/5b/7b/c75b7b14e8e309549f0f752210ccea17.jpg	2026-04-14 12:10:54.49187	4.70	Georgette	White
24620	wom-leh-2	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	4293.00	2619.00	39	https://i.pinimg.com/736x/51/b7/70/51b770caf43d89ca0c3f8ad0b52846ee.jpg	2026-04-14 12:10:54.493147	4.70	Chiffon	Green
24621	wom-leh-3	Opulent Net Lehenga with Mirror Work	Ritu Kumar	women	lehengas	7273.00	4437.00	39	https://i.pinimg.com/736x/76/04/8c/76048cb50986de782f4aa254536fdd64.jpg	2026-04-14 12:10:54.494541	4.10	Silk	Red
24622	wom-leh-4	Opulent Georgette Lehenga with Resham Embroidery	Anita Dongre	women	lehengas	4782.00	3491.00	27	https://i.pinimg.com/736x/36/35/c6/3635c6be26a901c2b8b6d5b174b9de25.jpg	2026-04-14 12:10:54.49604	4.40	Cotton	Grey
24623	wom-leh-5	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	6261.00	5009.00	20	https://i.pinimg.com/736x/91/41/da/9141da71db6df4508b2a41f53957969a.jpg	2026-04-14 12:10:54.497601	4.70	Georgette	Blue
24624	wom-leh-6	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	7446.00	4021.00	46	https://i.pinimg.com/736x/06/e4/47/06e447550bc57e1226507591a9b847e5.jpg	2026-04-14 12:10:54.498956	4.90	Leather	Green
24625	wom-leh-7	Opulent Net Lehenga with Mirror Work	Ritu Kumar	women	lehengas	2533.00	1418.00	44	https://i.pinimg.com/736x/bd/4d/bb/bd4dbbbe95393d7417caed678d74b24c.jpg	2026-04-14 12:10:54.49992	4.10	Chiffon	Green
24626	wom-leh-8	Opulent Georgette Lehenga with Resham Embroidery	Anita Dongre	women	lehengas	4904.00	2697.00	45	https://i.pinimg.com/736x/69/fc/53/69fc535b38dec07235f6d33cc5b7f7c4.jpg	2026-04-14 12:10:54.500994	4.00	Chiffon	Black
24627	wom-leh-9	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	5767.00	3172.00	45	https://i.pinimg.com/1200x/85/ce/35/85ce35cfce366055078fa61caf8cf3c1.jpg	2026-04-14 12:10:54.50219	3.80	Denim	Green
24628	wom-leh-10	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	5748.00	4081.00	29	https://i.pinimg.com/1200x/43/26/4c/43264c89a215b9b298fd0d4abcaddcb7.jpg	2026-04-14 12:10:54.503641	4.10	Silk	Beige
24629	wom-leh-11	Opulent Net Lehenga with Mirror Work	Ritu Kumar	women	lehengas	6373.00	2549.00	60	https://i.pinimg.com/736x/06/99/4f/06994f54ae4000498b186ccf09e98f36.jpg	2026-04-14 12:10:54.504729	5.00	Georgette	Beige
24630	wom-leh-12	Opulent Georgette Lehenga with Resham Embroidery	Anita Dongre	women	lehengas	1230.00	738.00	40	https://i.pinimg.com/736x/98/65/da/9865da5583260c5f24d160bbf7982383.jpg	2026-04-14 12:10:54.505837	4.40	Cotton	Grey
24631	wom-leh-13	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	6652.00	2794.00	58	https://i.pinimg.com/736x/64/4d/ad/644dada7a4300ff468edc48628985f49.jpg	2026-04-14 12:10:54.506947	3.90	Silk	Beige
24632	wom-leh-14	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	4877.00	1951.00	60	https://i.pinimg.com/736x/1b/5b/f8/1b5bf84fd0be673ebb5834d05d306018.jpg	2026-04-14 12:10:54.507979	4.50	Leather	Green
24633	wom-leh-15	Opulent Net Lehenga with Mirror Work	Ritu Kumar	women	lehengas	1684.00	960.00	43	https://i.pinimg.com/736x/43/6e/ae/436eaeda880f68ddc7913ee3d884b6e5.jpg	2026-04-14 12:10:54.50898	4.50	Georgette	Black
24634	wom-leh-16	Opulent Georgette Lehenga with Resham Embroidery	Anita Dongre	women	lehengas	2766.00	1494.00	46	https://i.pinimg.com/1200x/c7/5b/7b/c75b7b14e8e309549f0f752210ccea17.jpg	2026-04-14 12:10:54.509885	4.20	Chiffon	Gold
24635	wom-leh-17	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	6127.00	5208.00	15	https://i.pinimg.com/736x/51/b7/70/51b770caf43d89ca0c3f8ad0b52846ee.jpg	2026-04-14 12:10:54.510875	4.20	Chiffon	Red
24636	wom-leh-18	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	2186.00	1421.00	35	https://i.pinimg.com/736x/76/04/8c/76048cb50986de782f4aa254536fdd64.jpg	2026-04-14 12:10:54.512057	4.60	Chiffon	Pink
24637	wom-leh-19	Opulent Net Lehenga with Mirror Work	Ritu Kumar	women	lehengas	2825.00	2204.00	22	https://i.pinimg.com/736x/36/35/c6/3635c6be26a901c2b8b6d5b174b9de25.jpg	2026-04-14 12:10:54.513429	3.80	Chiffon	Red
24638	wom-leh-20	Opulent Georgette Lehenga with Resham Embroidery	Anita Dongre	women	lehengas	7981.00	5347.00	33	https://i.pinimg.com/736x/91/41/da/9141da71db6df4508b2a41f53957969a.jpg	2026-04-14 12:10:54.51466	5.00	Polyester	Blue
24639	wom-leh-21	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	5871.00	4168.00	29	https://i.pinimg.com/736x/06/e4/47/06e447550bc57e1226507591a9b847e5.jpg	2026-04-14 12:10:54.515846	4.20	Chiffon	Gold
24640	wom-leh-22	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	6912.00	4908.00	29	https://i.pinimg.com/736x/bd/4d/bb/bd4dbbbe95393d7417caed678d74b24c.jpg	2026-04-14 12:10:54.517118	4.70	Cotton	Red
24641	wom-leh-23	Opulent Net Lehenga with Mirror Work	Ritu Kumar	women	lehengas	4885.00	3713.00	24	https://i.pinimg.com/736x/69/fc/53/69fc535b38dec07235f6d33cc5b7f7c4.jpg	2026-04-14 12:10:54.518334	4.60	Georgette	Blue
24642	wom-leh-24	Opulent Georgette Lehenga with Resham Embroidery	Anita Dongre	women	lehengas	4070.00	3419.00	16	https://i.pinimg.com/1200x/85/ce/35/85ce35cfce366055078fa61caf8cf3c1.jpg	2026-04-14 12:10:54.519505	3.90	Silk	White
24643	wom-leh-25	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	4346.00	2738.00	37	https://i.pinimg.com/1200x/43/26/4c/43264c89a215b9b298fd0d4abcaddcb7.jpg	2026-04-14 12:10:54.521162	4.20	Cotton	Blue
24644	wom-leh-26	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	1730.00	1176.00	32	https://i.pinimg.com/736x/06/99/4f/06994f54ae4000498b186ccf09e98f36.jpg	2026-04-14 12:10:54.522088	4.60	Georgette	Gold
24645	wom-leh-27	Opulent Net Lehenga with Mirror Work	Ritu Kumar	women	lehengas	2127.00	1638.00	23	https://i.pinimg.com/736x/98/65/da/9865da5583260c5f24d160bbf7982383.jpg	2026-04-14 12:10:54.522965	4.60	Chiffon	Beige
24646	wom-leh-28	Opulent Georgette Lehenga with Resham Embroidery	Anita Dongre	women	lehengas	4314.00	3279.00	24	https://i.pinimg.com/736x/64/4d/ad/644dada7a4300ff468edc48628985f49.jpg	2026-04-14 12:10:54.523849	4.90	Polyester	Gold
24647	wom-leh-29	Opulent Silk Lehenga with Zari Work	Sabyasachi	women	lehengas	5638.00	2763.00	51	https://i.pinimg.com/736x/1b/5b/f8/1b5bf84fd0be673ebb5834d05d306018.jpg	2026-04-14 12:10:54.524706	4.30	Linen	Grey
24648	wom-leh-30	Opulent Velvet Lehenga with Sequins	Manish Malhotra	women	lehengas	6301.00	5293.00	16	https://i.pinimg.com/736x/43/6e/ae/436eaeda880f68ddc7913ee3d884b6e5.jpg	2026-04-14 12:10:54.525562	4.00	Polyester	Green
24649	wom-dress-1	Maxi Dress Cotton Party Dress	Zara	women	dresses	1105.00	906.00	18	https://i.pinimg.com/736x/f6/4a/1e/f64a1e2ae954bba12e6e5fca79b5e0af.jpg	2026-04-14 12:10:54.526761	4.20	Georgette	White
24650	wom-dress-2	Midi Dress Polyester Party Dress	H&M	women	dresses	4743.00	2798.00	41	https://i.pinimg.com/736x/13/72/1f/13721ffbd0b8a66e6cd8e91d25814f47.jpg	2026-04-14 12:10:54.527945	4.80	Linen	Gold
24651	wom-dress-3	Bodycon Dress Silk Blend Party Dress	Forever 21	women	dresses	4704.00	2164.00	54	https://i.pinimg.com/736x/d0/ae/f9/d0aef91914db59c31e6411282419e07e.jpg	2026-04-14 12:10:54.529035	4.90	Leather	Black
24652	wom-dress-4	A-Line Dress Chiffon Party Dress	Essential Mart	women	dresses	7345.00	4554.00	38	https://www.nightbubo.com/cdn/shop/files/BellaPrincessCouture_PQ1060_Sage_20_11_20of_204_-1000x1500.jpg?v=1755967260	2026-04-14 12:10:54.530135	4.40	Silk	Blue
24653	wom-dress-5	Maxi Dress Cotton Party Dress	Zara	women	dresses	3244.00	2693.00	17	https://www.zapdress.com/cdn/shop/files/1BBRM_RLF4MUL__6_T6X7FT.png?v=1772548134&width=900	2026-04-14 12:10:54.531404	4.60	Cotton	Green
24654	wom-dress-6	Midi Dress Polyester Party Dress	H&M	women	dresses	4446.00	3468.00	22	https://89ae7b86f372da86ceb9-cfe85c6a916fb2c9c51caa04bbe64c7d.ssl.cf2.rackcdn.com/product-hugerect-3482966-381865-1764795811-e285b98e6aca2a6a05563b192916a462.jpg	2026-04-14 12:10:54.532731	4.00	Leather	Blue
24655	wom-dress-7	Bodycon Dress Silk Blend Party Dress	Forever 21	women	dresses	7711.00	3701.00	52	https://www.zapdress.com/cdn/shop/files/W1H_W_D_JQ1_OD61_KG1A3O.png?v=1772549034&width=900	2026-04-14 12:10:54.533817	4.70	Polyester	Beige
24656	wom-dress-8	A-Line Dress Chiffon Party Dress	Essential Mart	women	dresses	1661.00	1362.00	18	https://02442d4b76552884d12e-7d516af45c10cd65b238d9c98ad05989.ssl.cf2.rackcdn.com/product-hugerect-3375013-172800-1714286412-332af06b98194b81083bf6c0f8a61de6.jpg	2026-04-14 12:10:54.534786	4.30	Chiffon	Green
24657	wom-dress-9	Maxi Dress Cotton Party Dress	Zara	women	dresses	1491.00	1252.00	16	https://i.pinimg.com/736x/a3/27/4a/a3274a29c58a02cbae541e6b8000662b.jpg	2026-04-14 12:10:54.535785	4.50	Leather	Red
24658	wom-dress-10	Midi Dress Polyester Party Dress	H&M	women	dresses	5247.00	3148.00	40	https://i.pinimg.com/1200x/26/5f/5b/265f5bc4e8bf1f7df5992c80b161db05.jpg	2026-04-14 12:10:54.536669	4.40	Georgette	White
24659	wom-dress-11	Bodycon Dress Silk Blend Party Dress	Forever 21	women	dresses	6305.00	4855.00	23	https://i.pinimg.com/736x/77/54/15/775415aa8c9ef240a2775c9ca5a72fc4.jpg	2026-04-14 12:10:54.537538	4.50	Silk	Blue
24660	wom-dress-12	A-Line Dress Chiffon Party Dress	Essential Mart	women	dresses	3158.00	1390.00	56	https://www.nightbubo.com/cdn/shop/files/11Brown.webp?v=1756878850&width=832	2026-04-14 12:10:54.538706	3.90	Denim	Red
24661	wom-dress-13	Maxi Dress Cotton Party Dress	Zara	women	dresses	1362.00	1158.00	15	https://i.pinimg.com/736x/f6/4a/1e/f64a1e2ae954bba12e6e5fca79b5e0af.jpg	2026-04-14 12:10:54.539897	3.90	Polyester	Grey
24662	wom-dress-14	Midi Dress Polyester Party Dress	H&M	women	dresses	3923.00	2511.00	36	https://i.pinimg.com/736x/13/72/1f/13721ffbd0b8a66e6cd8e91d25814f47.jpg	2026-04-14 12:10:54.541174	4.00	Polyester	Black
24663	wom-dress-15	Bodycon Dress Silk Blend Party Dress	Forever 21	women	dresses	3898.00	3313.00	15	https://i.pinimg.com/736x/d0/ae/f9/d0aef91914db59c31e6411282419e07e.jpg	2026-04-14 12:10:54.542737	4.50	Chiffon	Pink
24664	wom-dress-16	A-Line Dress Chiffon Party Dress	Essential Mart	women	dresses	7532.00	4067.00	46	https://www.nightbubo.com/cdn/shop/files/BellaPrincessCouture_PQ1060_Sage_20_11_20of_204_-1000x1500.jpg?v=1755967260	2026-04-14 12:10:54.544413	4.70	Silk	Pink
24665	wom-dress-17	Maxi Dress Cotton Party Dress	Zara	women	dresses	7469.00	5751.00	23	https://www.zapdress.com/cdn/shop/files/1BBRM_RLF4MUL__6_T6X7FT.png?v=1772548134&width=900	2026-04-14 12:10:54.545873	4.20	Linen	Grey
24666	wom-dress-18	Midi Dress Polyester Party Dress	H&M	women	dresses	3496.00	2972.00	15	https://89ae7b86f372da86ceb9-cfe85c6a916fb2c9c51caa04bbe64c7d.ssl.cf2.rackcdn.com/product-hugerect-3482966-381865-1764795811-e285b98e6aca2a6a05563b192916a462.jpg	2026-04-14 12:10:54.547509	4.70	Denim	Blue
25187	kid-feed-19	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	6724.00	4909.00	27	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.188132	4.40	Polyester	Red
24667	wom-dress-19	Bodycon Dress Silk Blend Party Dress	Forever 21	women	dresses	4131.00	3305.00	20	https://www.zapdress.com/cdn/shop/files/W1H_W_D_JQ1_OD61_KG1A3O.png?v=1772549034&width=900	2026-04-14 12:10:54.54918	4.20	Chiffon	Black
24668	wom-dress-20	A-Line Dress Chiffon Party Dress	Essential Mart	women	dresses	1608.00	788.00	51	https://02442d4b76552884d12e-7d516af45c10cd65b238d9c98ad05989.ssl.cf2.rackcdn.com/product-hugerect-3375013-172800-1714286412-332af06b98194b81083bf6c0f8a61de6.jpg	2026-04-14 12:10:54.550804	4.00	Polyester	Pink
24669	wom-dress-21	Maxi Dress Cotton Party Dress	Zara	women	dresses	3140.00	2041.00	35	https://i.pinimg.com/736x/a3/27/4a/a3274a29c58a02cbae541e6b8000662b.jpg	2026-04-14 12:10:54.552038	4.40	Polyester	Red
24670	wom-dress-22	Midi Dress Polyester Party Dress	H&M	women	dresses	5370.00	3652.00	32	https://i.pinimg.com/1200x/26/5f/5b/265f5bc4e8bf1f7df5992c80b161db05.jpg	2026-04-14 12:10:54.55323	4.30	Leather	Pink
24671	wom-dress-23	Bodycon Dress Silk Blend Party Dress	Forever 21	women	dresses	7175.00	3444.00	52	https://i.pinimg.com/736x/77/54/15/775415aa8c9ef240a2775c9ca5a72fc4.jpg	2026-04-14 12:10:54.554509	4.10	Cotton	Beige
24672	wom-dress-24	A-Line Dress Chiffon Party Dress	Essential Mart	women	dresses	5700.00	4674.00	18	https://www.nightbubo.com/cdn/shop/files/11Brown.webp?v=1756878850&width=832	2026-04-14 12:10:54.55571	4.50	Silk	Green
24673	wom-dress-25	Maxi Dress Cotton Party Dress	Zara	women	dresses	1960.00	902.00	54	https://i.pinimg.com/736x/f6/4a/1e/f64a1e2ae954bba12e6e5fca79b5e0af.jpg	2026-04-14 12:10:54.557067	4.30	Georgette	Red
24674	wom-dress-26	Midi Dress Polyester Party Dress	H&M	women	dresses	7910.00	4904.00	38	https://i.pinimg.com/736x/13/72/1f/13721ffbd0b8a66e6cd8e91d25814f47.jpg	2026-04-14 12:10:54.55849	4.80	Leather	Gold
24675	wom-dress-27	Bodycon Dress Silk Blend Party Dress	Forever 21	women	dresses	3795.00	1973.00	48	https://i.pinimg.com/736x/d0/ae/f9/d0aef91914db59c31e6411282419e07e.jpg	2026-04-14 12:10:54.560189	4.60	Leather	Red
24676	wom-dress-28	A-Line Dress Chiffon Party Dress	Essential Mart	women	dresses	6109.00	3238.00	47	https://www.nightbubo.com/cdn/shop/files/BellaPrincessCouture_PQ1060_Sage_20_11_20of_204_-1000x1500.jpg?v=1755967260	2026-04-14 12:10:54.561676	4.40	Silk	Red
24677	wom-dress-29	Maxi Dress Cotton Party Dress	Zara	women	dresses	5523.00	3148.00	43	https://www.zapdress.com/cdn/shop/files/1BBRM_RLF4MUL__6_T6X7FT.png?v=1772548134&width=900	2026-04-14 12:10:54.563031	3.90	Denim	Gold
24678	wom-dress-30	Midi Dress Polyester Party Dress	H&M	women	dresses	5841.00	2512.00	57	https://89ae7b86f372da86ceb9-cfe85c6a916fb2c9c51caa04bbe64c7d.ssl.cf2.rackcdn.com/product-hugerect-3482966-381865-1764795811-e285b98e6aca2a6a05563b192916a462.jpg	2026-04-14 12:10:54.564285	4.90	Chiffon	Black
24679	wom-heel-1	Stiletto Heels Leather Upper Heels	Louboutin	women	heels	7751.00	5581.00	28	https://i.pinimg.com/736x/5f/66/04/5f660448e6513f9921a02ae09c05ef3b.jpg	2026-04-14 12:10:54.565614	4.40	Silk	Grey
24680	wom-heel-2	Block Heels Suede Upper Heels	Jimmy Choo	women	heels	6797.00	5777.00	15	https://i.pinimg.com/736x/cd/71/dc/cd71dc37f4b6882d178e736769a0a071.jpg	2026-04-14 12:10:54.566701	4.60	Polyester	Green
24681	wom-heel-3	Wedge Heels Synthetic Upper Heels	Manolo Blahnik	women	heels	5881.00	4940.00	16	https://i.pinimg.com/736x/f9/6f/9c/f96f9c2f8b859375557ad66727045ddf.jpg	2026-04-14 12:10:54.567598	3.90	Linen	Gold
24682	wom-heel-4	Kitten Heels Leather Upper Heels	Essential Mart	women	heels	7272.00	3854.00	47	https://i.pinimg.com/736x/d0/40/59/d04059f1614b578f78a7e5406daa5aac.jpg	2026-04-14 12:10:54.568478	4.40	Leather	Blue
24683	wom-heel-5	Stiletto Heels Suede Upper Heels	Louboutin	women	heels	1148.00	804.00	30	https://i.pinimg.com/1200x/55/b6/ce/55b6ce80aa637ac38a44ce93d3ad3177.jpg	2026-04-14 12:10:54.569335	4.60	Silk	Pink
24684	wom-heel-6	Block Heels Synthetic Upper Heels	Jimmy Choo	women	heels	6377.00	2615.00	59	https://i.pinimg.com/1200x/81/9c/b9/819cb9611b51cec80c002bfd330a83f3.jpg	2026-04-14 12:10:54.57018	4.30	Linen	Red
24685	wom-heel-7	Wedge Heels Leather Upper Heels	Manolo Blahnik	women	heels	4783.00	3779.00	21	https://i.pinimg.com/736x/1b/56/a1/1b56a194a34292ecf9c0d648ddf59ca6.jpg	2026-04-14 12:10:54.571025	3.90	Polyester	Gold
24686	wom-heel-8	Kitten Heels Suede Upper Heels	Essential Mart	women	heels	2177.00	1437.00	34	https://i.pinimg.com/736x/9e/e4/08/9ee4080d8071f990f2b581625e3f07aa.jpg	2026-04-14 12:10:54.571886	4.30	Georgette	Black
24687	wom-heel-9	Stiletto Heels Synthetic Upper Heels	Louboutin	women	heels	5488.00	3018.00	45	https://i.pinimg.com/736x/aa/43/cc/aa43cc6929227c140165ac07630587ec.jpg	2026-04-14 12:10:54.57274	4.20	Polyester	Blue
24688	wom-heel-10	Block Heels Leather Upper Heels	Jimmy Choo	women	heels	4880.00	1952.00	60	https://i.pinimg.com/736x/4f/b8/af/4fb8afbd347f71f269fcbbbf20027a30.jpg	2026-04-14 12:10:54.573606	4.10	Chiffon	Green
24689	wom-heel-11	Wedge Heels Suede Upper Heels	Manolo Blahnik	women	heels	1451.00	769.00	47	https://i.pinimg.com/736x/2f/4e/3a/2f4e3a55d4c091bad516e57ee507be4a.jpg	2026-04-14 12:10:54.575017	4.10	Cotton	Gold
24690	wom-heel-12	Kitten Heels Synthetic Upper Heels	Essential Mart	women	heels	2119.00	1695.00	20	https://i.pinimg.com/736x/5f/66/04/5f660448e6513f9921a02ae09c05ef3b.jpg	2026-04-14 12:10:54.576505	5.00	Chiffon	Red
24691	wom-heel-13	Stiletto Heels Leather Upper Heels	Louboutin	women	heels	3993.00	3394.00	15	https://i.pinimg.com/736x/cd/71/dc/cd71dc37f4b6882d178e736769a0a071.jpg	2026-04-14 12:10:54.577612	4.30	Linen	Green
24692	wom-heel-14	Block Heels Suede Upper Heels	Jimmy Choo	women	heels	7488.00	3444.00	54	https://i.pinimg.com/736x/f9/6f/9c/f96f9c2f8b859375557ad66727045ddf.jpg	2026-04-14 12:10:54.578804	4.80	Cotton	Grey
24693	wom-heel-15	Wedge Heels Synthetic Upper Heels	Manolo Blahnik	women	heels	6572.00	4732.00	28	https://i.pinimg.com/736x/d0/40/59/d04059f1614b578f78a7e5406daa5aac.jpg	2026-04-14 12:10:54.580019	4.80	Georgette	Black
24694	wom-heel-16	Kitten Heels Leather Upper Heels	Essential Mart	women	heels	6303.00	4790.00	24	https://i.pinimg.com/1200x/55/b6/ce/55b6ce80aa637ac38a44ce93d3ad3177.jpg	2026-04-14 12:10:54.581553	4.50	Linen	Black
24695	wom-heel-17	Stiletto Heels Suede Upper Heels	Louboutin	women	heels	5910.00	3605.00	39	https://i.pinimg.com/1200x/81/9c/b9/819cb9611b51cec80c002bfd330a83f3.jpg	2026-04-14 12:10:54.582871	4.90	Chiffon	Pink
24696	wom-heel-18	Block Heels Synthetic Upper Heels	Jimmy Choo	women	heels	3002.00	1831.00	39	https://i.pinimg.com/736x/1b/56/a1/1b56a194a34292ecf9c0d648ddf59ca6.jpg	2026-04-14 12:10:54.583927	4.90	Georgette	White
24697	wom-heel-19	Wedge Heels Leather Upper Heels	Manolo Blahnik	women	heels	3506.00	2840.00	19	https://i.pinimg.com/736x/9e/e4/08/9ee4080d8071f990f2b581625e3f07aa.jpg	2026-04-14 12:10:54.584853	4.20	Linen	Black
24698	wom-heel-20	Kitten Heels Suede Upper Heels	Essential Mart	women	heels	4203.00	2984.00	29	https://i.pinimg.com/736x/aa/43/cc/aa43cc6929227c140165ac07630587ec.jpg	2026-04-14 12:10:54.585708	3.90	Linen	Pink
24699	wom-heel-21	Stiletto Heels Synthetic Upper Heels	Louboutin	women	heels	1135.00	953.00	16	https://i.pinimg.com/736x/4f/b8/af/4fb8afbd347f71f269fcbbbf20027a30.jpg	2026-04-14 12:10:54.586567	4.10	Georgette	Red
24700	wom-heel-22	Block Heels Leather Upper Heels	Jimmy Choo	women	heels	4692.00	2815.00	40	https://i.pinimg.com/736x/2f/4e/3a/2f4e3a55d4c091bad516e57ee507be4a.jpg	2026-04-14 12:10:54.587427	4.00	Linen	Black
24701	wom-heel-23	Wedge Heels Suede Upper Heels	Manolo Blahnik	women	heels	6167.00	3515.00	43	https://i.pinimg.com/736x/5f/66/04/5f660448e6513f9921a02ae09c05ef3b.jpg	2026-04-14 12:10:54.588281	4.20	Georgette	White
24702	wom-heel-24	Kitten Heels Synthetic Upper Heels	Essential Mart	women	heels	4739.00	2749.00	42	https://i.pinimg.com/736x/cd/71/dc/cd71dc37f4b6882d178e736769a0a071.jpg	2026-04-14 12:10:54.589201	4.40	Georgette	Green
24703	wom-heel-25	Stiletto Heels Leather Upper Heels	Louboutin	women	heels	3355.00	1577.00	53	https://i.pinimg.com/736x/f9/6f/9c/f96f9c2f8b859375557ad66727045ddf.jpg	2026-04-14 12:10:54.590159	3.90	Linen	Green
24704	wom-heel-26	Block Heels Suede Upper Heels	Jimmy Choo	women	heels	3814.00	1564.00	59	https://i.pinimg.com/736x/d0/40/59/d04059f1614b578f78a7e5406daa5aac.jpg	2026-04-14 12:10:54.591316	4.30	Chiffon	Red
24705	wom-heel-27	Wedge Heels Synthetic Upper Heels	Manolo Blahnik	women	heels	4183.00	1757.00	58	https://i.pinimg.com/1200x/55/b6/ce/55b6ce80aa637ac38a44ce93d3ad3177.jpg	2026-04-14 12:10:54.592599	4.60	Georgette	Beige
24706	wom-heel-28	Kitten Heels Leather Upper Heels	Essential Mart	women	heels	6028.00	4702.00	22	https://i.pinimg.com/1200x/81/9c/b9/819cb9611b51cec80c002bfd330a83f3.jpg	2026-04-14 12:10:54.593803	4.40	Linen	Grey
24707	wom-heel-29	Stiletto Heels Suede Upper Heels	Louboutin	women	heels	5072.00	2130.00	58	https://i.pinimg.com/736x/1b/56/a1/1b56a194a34292ecf9c0d648ddf59ca6.jpg	2026-04-14 12:10:54.595266	4.00	Denim	Green
24708	wom-heel-30	Block Heels Synthetic Upper Heels	Jimmy Choo	women	heels	6558.00	3410.00	48	https://i.pinimg.com/736x/9e/e4/08/9ee4080d8071f990f2b581625e3f07aa.jpg	2026-04-14 12:10:54.596762	4.30	Cotton	Grey
24709	wom-kset-1	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	1455.00	1062.00	27	https://i.pinimg.com/736x/94/61/58/94615846980a539fd020d64a90b6e334.jpg	2026-04-14 12:10:54.598731	4.60	Linen	Beige
24710	wom-kset-2	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	4495.00	2472.00	45	https://i.pinimg.com/736x/51/d5/50/51d5508c351f44be10f8ff0050ad009c.jpg	2026-04-14 12:10:54.59995	4.00	Chiffon	Red
24711	wom-kset-3	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	3177.00	2287.00	28	https://i.pinimg.com/736x/e9/b8/b3/e9b8b3123fec01b591f5f81135e8a363.jpg	2026-04-14 12:10:54.601191	4.40	Georgette	Gold
24712	wom-kset-4	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	5981.00	3888.00	35	https://i.pinimg.com/736x/4a/e9/4c/4ae94c09c75fc9319c947bf0474dcee3.jpg	2026-04-14 12:10:54.602494	4.60	Georgette	Green
24713	wom-kset-5	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	7015.00	3858.00	45	https://www.neerus.com/cdn/shop/files/42846390RED_1.jpg?v=1760515519&width=1080	2026-04-14 12:10:54.603661	4.10	Silk	Green
24714	wom-kset-6	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	5049.00	2928.00	42	https://i.pinimg.com/736x/bd/ac/30/bdac30aad4253984ef550e5f9145285b.jpg	2026-04-14 12:10:54.604549	4.40	Polyester	Beige
24715	wom-kset-7	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	7959.00	5730.00	28	https://i.pinimg.com/736x/55/37/f0/5537f017ef67f1b69eab922edfdd3a6f.jpg	2026-04-14 12:10:54.60573	4.30	Silk	Gold
24716	wom-kset-8	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	6983.00	4958.00	29	https://i.pinimg.com/736x/a2/d6/da/a2d6da0b7d5728ea8fca2576de3e37f6.jpg	2026-04-14 12:10:54.607358	4.10	Silk	Black
24717	wom-kset-9	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	5530.00	2488.00	55	https://i.pinimg.com/736x/74/2d/85/742d859613e74fee8d34fee9c24146db.jpg	2026-04-14 12:10:54.608395	5.00	Silk	Gold
24718	wom-kset-10	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	4687.00	2484.00	47	https://i.pinimg.com/736x/ec/9a/61/ec9a617c177eeb79fdd6cb35a65b4409.jpg	2026-04-14 12:10:54.60938	4.20	Georgette	Green
24719	wom-kset-11	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	2412.00	1905.00	21	https://i.pinimg.com/736x/94/61/58/94615846980a539fd020d64a90b6e334.jpg	2026-04-14 12:10:54.610275	3.90	Cotton	Blue
24720	wom-kset-12	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	2014.00	1108.00	45	https://i.pinimg.com/736x/51/d5/50/51d5508c351f44be10f8ff0050ad009c.jpg	2026-04-14 12:10:54.611239	5.00	Leather	Black
24721	wom-kset-13	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	3570.00	2606.00	27	https://i.pinimg.com/736x/e9/b8/b3/e9b8b3123fec01b591f5f81135e8a363.jpg	2026-04-14 12:10:54.612361	4.10	Denim	Red
24722	wom-kset-14	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	1025.00	697.00	32	https://i.pinimg.com/736x/4a/e9/4c/4ae94c09c75fc9319c947bf0474dcee3.jpg	2026-04-14 12:10:54.613537	4.40	Silk	Blue
24723	wom-kset-15	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	6644.00	4717.00	29	https://www.neerus.com/cdn/shop/files/42846390RED_1.jpg?v=1760515519&width=1080	2026-04-14 12:10:54.615094	3.90	Cotton	Blue
24724	wom-kset-16	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	6976.00	3976.00	43	https://i.pinimg.com/736x/bd/ac/30/bdac30aad4253984ef550e5f9145285b.jpg	2026-04-14 12:10:54.616238	4.50	Polyester	Red
24725	wom-kset-17	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	3649.00	1679.00	54	https://i.pinimg.com/736x/55/37/f0/5537f017ef67f1b69eab922edfdd3a6f.jpg	2026-04-14 12:10:54.617227	4.70	Silk	Grey
24726	wom-kset-18	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	2383.00	1740.00	27	https://i.pinimg.com/736x/a2/d6/da/a2d6da0b7d5728ea8fca2576de3e37f6.jpg	2026-04-14 12:10:54.618243	4.40	Denim	Red
24727	wom-kset-19	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	7627.00	4042.00	47	https://i.pinimg.com/736x/74/2d/85/742d859613e74fee8d34fee9c24146db.jpg	2026-04-14 12:10:54.619109	4.70	Linen	Green
24728	wom-kset-20	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	7197.00	5974.00	17	https://i.pinimg.com/736x/ec/9a/61/ec9a617c177eeb79fdd6cb35a65b4409.jpg	2026-04-14 12:10:54.61996	5.00	Silk	Grey
24729	wom-kset-21	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	2893.00	1533.00	47	https://i.pinimg.com/736x/94/61/58/94615846980a539fd020d64a90b6e334.jpg	2026-04-14 12:10:54.62082	4.10	Denim	Black
24730	wom-kset-22	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	1612.00	742.00	54	https://i.pinimg.com/736x/51/d5/50/51d5508c351f44be10f8ff0050ad009c.jpg	2026-04-14 12:10:54.622223	4.80	Cotton	Black
24731	wom-kset-23	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	3428.00	2023.00	41	https://i.pinimg.com/736x/e9/b8/b3/e9b8b3123fec01b591f5f81135e8a363.jpg	2026-04-14 12:10:54.623771	4.80	Linen	Black
24732	wom-kset-24	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	5444.00	4464.00	18	https://i.pinimg.com/736x/4a/e9/4c/4ae94c09c75fc9319c947bf0474dcee3.jpg	2026-04-14 12:10:54.625076	4.20	Chiffon	Black
24733	wom-kset-25	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	5857.00	3397.00	42	https://www.neerus.com/cdn/shop/files/42846390RED_1.jpg?v=1760515519&width=1080	2026-04-14 12:10:54.626279	4.80	Chiffon	Beige
24734	wom-kset-26	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	5125.00	3024.00	41	https://i.pinimg.com/736x/bd/ac/30/bdac30aad4253984ef550e5f9145285b.jpg	2026-04-14 12:10:54.627944	4.60	Leather	Grey
24735	wom-kset-27	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	3042.00	2282.00	25	https://i.pinimg.com/736x/55/37/f0/5537f017ef67f1b69eab922edfdd3a6f.jpg	2026-04-14 12:10:54.629488	4.50	Georgette	Beige
24736	wom-kset-28	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	7207.00	4252.00	41	https://i.pinimg.com/736x/a2/d6/da/a2d6da0b7d5728ea8fca2576de3e37f6.jpg	2026-04-14 12:10:54.631062	4.50	Cotton	Blue
24737	wom-kset-29	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	2090.00	1526.00	27	https://i.pinimg.com/736x/74/2d/85/742d859613e74fee8d34fee9c24146db.jpg	2026-04-14 12:10:54.632692	4.00	Cotton	Grey
24738	wom-kset-30	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	4348.00	2435.00	44	https://i.pinimg.com/736x/ec/9a/61/ec9a617c177eeb79fdd6cb35a65b4409.jpg	2026-04-14 12:10:54.633822	3.80	Linen	Blue
24739	wom-kset-31	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	1342.00	1060.00	21	https://i.pinimg.com/736x/94/61/58/94615846980a539fd020d64a90b6e334.jpg	2026-04-14 12:10:54.634719	4.80	Cotton	Black
24740	wom-kset-32	Premium Silk Blend Kurta Set with Dupatta	Essential Mart	women	kurta-sets	5270.00	2477.00	53	https://i.pinimg.com/736x/51/d5/50/51d5508c351f44be10f8ff0050ad009c.jpg	2026-04-14 12:10:54.635575	4.80	Georgette	Grey
24741	wom-kset-33	Premium Chanderi Silk Kurta Set with Dupatta	Libas	women	kurta-sets	7583.00	5005.00	34	https://i.pinimg.com/736x/e9/b8/b3/e9b8b3123fec01b591f5f81135e8a363.jpg	2026-04-14 12:10:54.636477	4.70	Cotton	Beige
24742	wom-kset-34	Premium Pure Cotton Kurta Set with Dupatta	BIBA	women	kurta-sets	5189.00	2179.00	58	https://i.pinimg.com/736x/4a/e9/4c/4ae94c09c75fc9319c947bf0474dcee3.jpg	2026-04-14 12:10:54.637676	5.00	Chiffon	Green
24743	wom-kset-35	Premium Rayon Kurta Set with Dupatta	Aurelia	women	kurta-sets	2772.00	1358.00	51	https://www.neerus.com/cdn/shop/files/42846390RED_1.jpg?v=1760515519&width=1080	2026-04-14 12:10:54.638706	4.70	Polyester	Blue
24744	wom-skirt-1	Elegant Maxi Skirt for Summer	Zara	women	skirts	4447.00	3602.00	19	https://i.pinimg.com/736x/e1/00/81/e100817a1e148f6d7c56d249fc3fcb1a.jpg	2026-04-14 12:10:54.640051	3.80	Georgette	Beige
24745	wom-skirt-2	Elegant Floral Midi for Summer	H&M	women	skirts	3103.00	1614.00	48	https://i.pinimg.com/736x/4f/70/31/4f70310eaae5b3f92d1164f5f4feb5a3.jpg	2026-04-14 12:10:54.64114	4.70	Leather	Red
24746	wom-skirt-3	Elegant A-Line Skirt for Summer	Forever 21	women	skirts	7949.00	6757.00	15	https://i.pinimg.com/736x/6b/c1/bc/6bc1bc3188b5de68df084d6eaaf441e5.jpg	2026-04-14 12:10:54.642034	4.10	Georgette	Green
24747	wom-skirt-4	Elegant Pleated Skirt for Summer	Essential Mart	women	skirts	7383.00	4430.00	40	https://i.pinimg.com/736x/e3/5f/a0/e35fa095a0759b894f24c543aaefe364.jpg	2026-04-14 12:10:54.642899	4.90	Linen	Black
24748	wom-skirt-5	Elegant Maxi Skirt for Summer	Zara	women	skirts	7540.00	3619.00	52	https://i.pinimg.com/736x/b4/3e/96/b43e965913df2f3934d589754a8987cb.jpg	2026-04-14 12:10:54.643793	4.90	Cotton	Black
24749	wom-skirt-6	Elegant Floral Midi for Summer	H&M	women	skirts	3793.00	1859.00	51	https://i.pinimg.com/736x/c1/62/21/c1622131e22ceebd5f0863d5245f7c78.jpg	2026-04-14 12:10:54.644932	4.20	Georgette	Beige
24750	wom-skirt-7	Elegant A-Line Skirt for Summer	Forever 21	women	skirts	5105.00	2553.00	50	https://i.pinimg.com/736x/71/d8/5e/71d85ea7f41b438b751fb8cf285369cc.jpg	2026-04-14 12:10:54.645886	4.40	Leather	Black
24751	wom-skirt-8	Elegant Pleated Skirt for Summer	Essential Mart	women	skirts	7343.00	4479.00	39	https://i.pinimg.com/736x/76/ee/64/76ee64de3446ea0a943523cf50275cd3.jpg	2026-04-14 12:10:54.646782	4.90	Chiffon	Grey
24752	wom-skirt-9	Elegant Maxi Skirt for Summer	Zara	women	skirts	4114.00	3456.00	16	https://i.pinimg.com/1200x/f3/5d/76/f35d764917d91bf5c26fa33f16c1cc47.jpg	2026-04-14 12:10:54.647719	4.70	Linen	Beige
24753	wom-skirt-10	Elegant Floral Midi for Summer	H&M	women	skirts	4225.00	3549.00	16	https://i.pinimg.com/736x/00/10/c8/0010c8617f829a072d25cf55dde98758.jpg	2026-04-14 12:10:54.648618	4.30	Leather	Green
24754	wom-skirt-11	Elegant A-Line Skirt for Summer	Forever 21	women	skirts	3816.00	1832.00	52	https://i.pinimg.com/736x/cd/18/b2/cd18b212ec11f3cb1a4c03424e877bf7.jpg	2026-04-14 12:10:54.64948	4.40	Leather	Black
24755	wom-skirt-12	Elegant Pleated Skirt for Summer	Essential Mart	women	skirts	6041.00	4410.00	27	https://i.pinimg.com/736x/c0/74/83/c07483f326100af59b4b3c5f4a8ff30e.jpg	2026-04-14 12:10:54.650331	4.70	Cotton	White
24756	wom-skirt-13	Elegant Maxi Skirt for Summer	Zara	women	skirts	1619.00	907.00	44	https://i.pinimg.com/736x/b3/b0/9c/b3b09c7451e2b64b8c4ca2f92a41a376.jpg	2026-04-14 12:10:54.651193	4.20	Silk	Blue
24757	wom-skirt-14	Elegant Floral Midi for Summer	H&M	women	skirts	4638.00	2690.00	42	https://i.pinimg.com/736x/1f/50/b9/1f50b92723b2382953c7093e13cc2015.jpg	2026-04-14 12:10:54.652692	4.30	Georgette	Grey
24758	wom-skirt-15	Elegant A-Line Skirt for Summer	Forever 21	women	skirts	7939.00	5954.00	25	https://i.pinimg.com/736x/e1/00/81/e100817a1e148f6d7c56d249fc3fcb1a.jpg	2026-04-14 12:10:54.654078	4.50	Leather	Beige
24759	wom-skirt-16	Elegant Pleated Skirt for Summer	Essential Mart	women	skirts	1898.00	797.00	58	https://i.pinimg.com/736x/4f/70/31/4f70310eaae5b3f92d1164f5f4feb5a3.jpg	2026-04-14 12:10:54.655548	4.50	Silk	Green
24760	wom-skirt-17	Elegant Maxi Skirt for Summer	Zara	women	skirts	5246.00	4092.00	22	https://i.pinimg.com/736x/6b/c1/bc/6bc1bc3188b5de68df084d6eaaf441e5.jpg	2026-04-14 12:10:54.656923	4.00	Silk	Blue
24761	wom-skirt-18	Elegant Floral Midi for Summer	H&M	women	skirts	6277.00	5273.00	16	https://i.pinimg.com/736x/e3/5f/a0/e35fa095a0759b894f24c543aaefe364.jpg	2026-04-14 12:10:54.65856	4.70	Cotton	Beige
24762	wom-skirt-19	Elegant A-Line Skirt for Summer	Forever 21	women	skirts	7670.00	4295.00	44	https://i.pinimg.com/736x/b4/3e/96/b43e965913df2f3934d589754a8987cb.jpg	2026-04-14 12:10:54.660306	4.00	Georgette	Gold
24763	wom-skirt-20	Elegant Pleated Skirt for Summer	Essential Mart	women	skirts	1022.00	613.00	40	https://i.pinimg.com/736x/c1/62/21/c1622131e22ceebd5f0863d5245f7c78.jpg	2026-04-14 12:10:54.661674	4.90	Georgette	Gold
24764	wom-skirt-21	Elegant Maxi Skirt for Summer	Zara	women	skirts	7430.00	5275.00	29	https://i.pinimg.com/736x/71/d8/5e/71d85ea7f41b438b751fb8cf285369cc.jpg	2026-04-14 12:10:54.66339	4.50	Polyester	Green
24765	wom-skirt-22	Elegant Floral Midi for Summer	H&M	women	skirts	4062.00	3412.00	16	https://i.pinimg.com/736x/76/ee/64/76ee64de3446ea0a943523cf50275cd3.jpg	2026-04-14 12:10:54.664835	5.00	Cotton	Gold
24766	wom-skirt-23	Elegant A-Line Skirt for Summer	Forever 21	women	skirts	3978.00	1671.00	58	https://i.pinimg.com/1200x/f3/5d/76/f35d764917d91bf5c26fa33f16c1cc47.jpg	2026-04-14 12:10:54.666224	4.50	Polyester	Blue
24767	wom-skirt-24	Elegant Pleated Skirt for Summer	Essential Mart	women	skirts	2855.00	1599.00	44	https://i.pinimg.com/736x/00/10/c8/0010c8617f829a072d25cf55dde98758.jpg	2026-04-14 12:10:54.667374	4.90	Denim	Black
24768	wom-skirt-25	Elegant Maxi Skirt for Summer	Zara	women	skirts	1801.00	1351.00	25	https://i.pinimg.com/736x/cd/18/b2/cd18b212ec11f3cb1a4c03424e877bf7.jpg	2026-04-14 12:10:54.668623	4.70	Georgette	Grey
24769	wom-skirt-26	Elegant Floral Midi for Summer	H&M	women	skirts	1862.00	1154.00	38	https://i.pinimg.com/736x/c0/74/83/c07483f326100af59b4b3c5f4a8ff30e.jpg	2026-04-14 12:10:54.669865	4.00	Denim	Pink
24770	wom-skirt-27	Elegant A-Line Skirt for Summer	Forever 21	women	skirts	1959.00	862.00	56	https://i.pinimg.com/736x/b3/b0/9c/b3b09c7451e2b64b8c4ca2f92a41a376.jpg	2026-04-14 12:10:54.670756	4.90	Denim	Green
24771	wom-skirt-28	Elegant Pleated Skirt for Summer	Essential Mart	women	skirts	4545.00	2273.00	50	https://i.pinimg.com/736x/1f/50/b9/1f50b92723b2382953c7093e13cc2015.jpg	2026-04-14 12:10:54.671624	4.70	Denim	Beige
24772	wom-skirt-29	Elegant Maxi Skirt for Summer	Zara	women	skirts	5756.00	2820.00	51	https://i.pinimg.com/736x/e1/00/81/e100817a1e148f6d7c56d249fc3fcb1a.jpg	2026-04-14 12:10:54.672509	4.60	Denim	Grey
24773	wom-skirt-30	Elegant Floral Midi for Summer	H&M	women	skirts	1240.00	632.00	49	https://i.pinimg.com/736x/4f/70/31/4f70310eaae5b3f92d1164f5f4feb5a3.jpg	2026-04-14 12:10:54.673389	4.30	Polyester	Green
24774	wom-flat-1	Handcrafted Juttis	FabIndia	women	flats	6334.00	4054.00	36	https://i.pinimg.com/1200x/c9/d6/2f/c9d62f0085b159d6d277b5ac1f04643b.jpg	2026-04-14 12:10:54.674795	4.80	Leather	Beige
24775	wom-flat-2	Handcrafted Ballerinas	Catwalk	women	flats	7915.00	4195.00	47	https://i.pinimg.com/736x/95/9a/41/959a41ec7790ffdbb5357350e1c33a64.jpg	2026-04-14 12:10:54.675913	4.90	Linen	Grey
24776	wom-flat-3	Handcrafted Strappy Sandals	Essential Mart	women	flats	6491.00	3310.00	49	https://i.pinimg.com/736x/01/5b/88/015b88afa1a2a4d04c7d427ab268bc12.jpg	2026-04-14 12:10:54.676801	4.00	Chiffon	Green
24777	wom-flat-4	Handcrafted Mules	Metro	women	flats	5374.00	2418.00	55	https://i.pinimg.com/736x/e0/07/3c/e0073c6f4b59cf6efe3a27b8f4901ad7.jpg	2026-04-14 12:10:54.67789	3.90	Denim	Red
24778	wom-flat-5	Handcrafted Juttis	FabIndia	women	flats	7452.00	4993.00	33	https://i.pinimg.com/736x/52/0a/2e/520a2e04eb516627a68aca7a98e68aac.jpg	2026-04-14 12:10:54.678915	4.90	Cotton	White
24779	wom-flat-6	Handcrafted Ballerinas	Catwalk	women	flats	6220.00	3172.00	49	https://i.pinimg.com/1200x/cd/7d/f7/cd7df7decac8043c5a1c34a2066158b5.jpg	2026-04-14 12:10:54.679782	4.80	Cotton	Blue
24780	wom-flat-7	Handcrafted Strappy Sandals	Essential Mart	women	flats	2017.00	827.00	59	https://i.pinimg.com/1200x/d0/8f/e0/d08fe0ad37c0878ab9ca8929233cc916.jpg	2026-04-14 12:10:54.68062	5.00	Cotton	Red
24781	wom-flat-8	Handcrafted Mules	Metro	women	flats	7110.00	2844.00	60	https://i.pinimg.com/1200x/c6/95/b5/c695b52b6fee0f6f12d0f005f8a9a29a.jpg	2026-04-14 12:10:54.681505	4.30	Cotton	Pink
24782	wom-flat-9	Handcrafted Juttis	FabIndia	women	flats	7516.00	3382.00	55	https://i.pinimg.com/736x/b8/88/e7/b888e7a4da51dbb050a8cfcb885300d2.jpg	2026-04-14 12:10:54.682354	3.80	Polyester	Grey
24783	wom-flat-10	Handcrafted Ballerinas	Catwalk	women	flats	7164.00	4298.00	40	https://i.pinimg.com/736x/ed/a6/fc/eda6fc62abfa644a9f04a95807ccecca.jpg	2026-04-14 12:10:54.683198	4.40	Leather	Blue
24784	wom-flat-11	Handcrafted Strappy Sandals	Essential Mart	women	flats	1623.00	1298.00	20	https://i.pinimg.com/1200x/eb/3e/64/eb3e644587d333b42a02935ea660c250.jpg	2026-04-14 12:10:54.68418	4.90	Silk	Green
24785	wom-flat-12	Handcrafted Mules	Metro	women	flats	2787.00	1226.00	56	https://i.pinimg.com/1200x/c9/d6/2f/c9d62f0085b159d6d277b5ac1f04643b.jpg	2026-04-14 12:10:54.685666	4.20	Chiffon	Blue
24786	wom-flat-13	Handcrafted Juttis	FabIndia	women	flats	5446.00	4357.00	20	https://i.pinimg.com/736x/95/9a/41/959a41ec7790ffdbb5357350e1c33a64.jpg	2026-04-14 12:10:54.686717	4.20	Linen	Beige
24787	wom-flat-14	Handcrafted Ballerinas	Catwalk	women	flats	6837.00	5059.00	26	https://i.pinimg.com/736x/01/5b/88/015b88afa1a2a4d04c7d427ab268bc12.jpg	2026-04-14 12:10:54.688091	4.70	Georgette	Blue
24788	wom-flat-15	Handcrafted Strappy Sandals	Essential Mart	women	flats	1575.00	1055.00	33	https://i.pinimg.com/736x/e0/07/3c/e0073c6f4b59cf6efe3a27b8f4901ad7.jpg	2026-04-14 12:10:54.689513	4.40	Denim	White
24789	wom-flat-16	Handcrafted Mules	Metro	women	flats	4363.00	1920.00	56	https://i.pinimg.com/736x/52/0a/2e/520a2e04eb516627a68aca7a98e68aac.jpg	2026-04-14 12:10:54.690634	4.30	Polyester	Black
24790	wom-flat-17	Handcrafted Juttis	FabIndia	women	flats	6764.00	4735.00	30	https://i.pinimg.com/1200x/cd/7d/f7/cd7df7decac8043c5a1c34a2066158b5.jpg	2026-04-14 12:10:54.691629	4.30	Cotton	Beige
24791	wom-flat-18	Handcrafted Ballerinas	Catwalk	women	flats	6578.00	3223.00	51	https://i.pinimg.com/1200x/d0/8f/e0/d08fe0ad37c0878ab9ca8929233cc916.jpg	2026-04-14 12:10:54.692731	4.30	Silk	Grey
24792	wom-flat-19	Handcrafted Strappy Sandals	Essential Mart	women	flats	1506.00	1130.00	25	https://i.pinimg.com/1200x/c6/95/b5/c695b52b6fee0f6f12d0f005f8a9a29a.jpg	2026-04-14 12:10:54.693675	4.80	Cotton	Pink
24793	wom-flat-20	Handcrafted Mules	Metro	women	flats	7394.00	5472.00	26	https://i.pinimg.com/736x/b8/88/e7/b888e7a4da51dbb050a8cfcb885300d2.jpg	2026-04-14 12:10:54.694759	4.20	Cotton	Red
24794	wom-flat-21	Handcrafted Juttis	FabIndia	women	flats	5827.00	2564.00	56	https://i.pinimg.com/736x/ed/a6/fc/eda6fc62abfa644a9f04a95807ccecca.jpg	2026-04-14 12:10:54.696105	3.80	Chiffon	Gold
24795	wom-flat-22	Handcrafted Ballerinas	Catwalk	women	flats	7950.00	3896.00	51	https://i.pinimg.com/1200x/eb/3e/64/eb3e644587d333b42a02935ea660c250.jpg	2026-04-14 12:10:54.697368	4.40	Silk	Blue
24796	wom-flat-23	Handcrafted Strappy Sandals	Essential Mart	women	flats	3813.00	2860.00	25	https://i.pinimg.com/1200x/c9/d6/2f/c9d62f0085b159d6d277b5ac1f04643b.jpg	2026-04-14 12:10:54.698445	5.00	Georgette	Black
24797	wom-flat-24	Handcrafted Mules	Metro	women	flats	3966.00	1904.00	52	https://i.pinimg.com/736x/95/9a/41/959a41ec7790ffdbb5357350e1c33a64.jpg	2026-04-14 12:10:54.699381	3.90	Polyester	White
24798	wom-flat-25	Handcrafted Juttis	FabIndia	women	flats	7684.00	3765.00	51	https://i.pinimg.com/736x/01/5b/88/015b88afa1a2a4d04c7d427ab268bc12.jpg	2026-04-14 12:10:54.70056	4.90	Cotton	Beige
24799	wom-flat-26	Handcrafted Ballerinas	Catwalk	women	flats	5014.00	2357.00	53	https://i.pinimg.com/736x/e0/07/3c/e0073c6f4b59cf6efe3a27b8f4901ad7.jpg	2026-04-14 12:10:54.701936	4.40	Georgette	Beige
24800	wom-flat-27	Handcrafted Strappy Sandals	Essential Mart	women	flats	1894.00	1477.00	22	https://i.pinimg.com/736x/52/0a/2e/520a2e04eb516627a68aca7a98e68aac.jpg	2026-04-14 12:10:54.703212	4.50	Linen	Grey
24801	wom-flat-28	Handcrafted Mules	Metro	women	flats	3229.00	1292.00	60	https://i.pinimg.com/1200x/cd/7d/f7/cd7df7decac8043c5a1c34a2066158b5.jpg	2026-04-14 12:10:54.704422	4.80	Denim	Green
24802	wom-flat-29	Handcrafted Juttis	FabIndia	women	flats	1765.00	1430.00	19	https://i.pinimg.com/1200x/d0/8f/e0/d08fe0ad37c0878ab9ca8929233cc916.jpg	2026-04-14 12:10:54.705656	4.00	Georgette	White
24803	wom-flat-30	Handcrafted Ballerinas	Catwalk	women	flats	4118.00	3130.00	24	https://i.pinimg.com/1200x/c6/95/b5/c695b52b6fee0f6f12d0f005f8a9a29a.jpg	2026-04-14 12:10:54.706804	4.90	Polyester	Black
24804	wom-snk-1	Urban Chunky Sneakers	Nike	women	sneakers	6418.00	5455.00	15	https://i.pinimg.com/1200x/42/c9/69/42c969511fede6db0be9b1ae1495353f.jpg	2026-04-14 12:10:54.708397	4.80	Denim	Red
24805	wom-snk-2	Urban Classic White	Adidas	women	sneakers	4020.00	1809.00	55	https://i.pinimg.com/736x/64/66/37/64663780f11e72ab6ea51508df89d521.jpg	2026-04-14 12:10:54.709639	4.70	Denim	Blue
24806	wom-snk-3	Urban Canvas Shoes	Puma	women	sneakers	5596.00	4645.00	17	https://i.pinimg.com/736x/27/1b/51/271b515ef11f3262c6388b6fee2918ca.jpg	2026-04-14 12:10:54.710937	3.80	Linen	Red
24807	wom-snk-4	Urban Sporty Knits	Essential Mart	women	sneakers	5346.00	2994.00	44	https://i.pinimg.com/736x/eb/0f/e2/eb0fe2cc7db0509b9384db929349ef54.jpg	2026-04-14 12:10:54.712245	4.70	Leather	Blue
24808	wom-snk-5	Urban Chunky Sneakers	Nike	women	sneakers	7541.00	5807.00	23	https://i.pinimg.com/1200x/b2/3c/e8/b23ce8ade135a59b771cd893ee6e1c76.jpg	2026-04-14 12:10:54.713367	4.00	Leather	Green
24809	wom-snk-6	Urban Classic White	Adidas	women	sneakers	2026.00	1540.00	24	https://i.pinimg.com/736x/c5/8b/48/c58b48940d12e551c4d60cc6fe55ec44.jpg	2026-04-14 12:10:54.71429	4.90	Denim	Beige
24810	wom-snk-7	Urban Canvas Shoes	Puma	women	sneakers	3266.00	2156.00	34	https://i.pinimg.com/736x/0e/23/86/0e23867a4f63e8ee744b1ef4c4b22da4.jpg	2026-04-14 12:10:54.715299	4.90	Cotton	Black
24811	wom-snk-8	Urban Sporty Knits	Essential Mart	women	sneakers	3149.00	2425.00	23	https://i.pinimg.com/736x/48/a9/36/48a9368d612d34477c30a9d86fa1487a.jpg	2026-04-14 12:10:54.71684	4.60	Cotton	Green
24812	wom-snk-9	Urban Chunky Sneakers	Nike	women	sneakers	5914.00	3608.00	39	https://i.pinimg.com/736x/49/68/a8/4968a82f3d3bdbe58d2a2220fea1f247.jpg	2026-04-14 12:10:54.717901	4.80	Polyester	Grey
24813	wom-snk-10	Urban Classic White	Adidas	women	sneakers	5057.00	3489.00	31	https://i.pinimg.com/736x/3c/ca/8e/3cca8ee0e50bd7d19de246828cb2d7a5.jpg	2026-04-14 12:10:54.719139	4.30	Linen	Red
24814	wom-snk-11	Urban Canvas Shoes	Puma	women	sneakers	4712.00	3157.00	33	https://i.pinimg.com/1200x/42/c9/69/42c969511fede6db0be9b1ae1495353f.jpg	2026-04-14 12:10:54.720482	4.30	Silk	Green
24815	wom-snk-12	Urban Sporty Knits	Essential Mart	women	sneakers	7092.00	4610.00	35	https://i.pinimg.com/736x/64/66/37/64663780f11e72ab6ea51508df89d521.jpg	2026-04-14 12:10:54.72175	4.00	Linen	Grey
24816	wom-snk-13	Urban Chunky Sneakers	Nike	women	sneakers	4162.00	1998.00	52	https://i.pinimg.com/736x/27/1b/51/271b515ef11f3262c6388b6fee2918ca.jpg	2026-04-14 12:10:54.722803	4.00	Linen	Green
24817	wom-snk-14	Urban Classic White	Adidas	women	sneakers	1487.00	1190.00	20	https://i.pinimg.com/736x/eb/0f/e2/eb0fe2cc7db0509b9384db929349ef54.jpg	2026-04-14 12:10:54.723945	4.70	Chiffon	Blue
24818	wom-snk-15	Urban Canvas Shoes	Puma	women	sneakers	2740.00	1891.00	31	https://i.pinimg.com/1200x/b2/3c/e8/b23ce8ade135a59b771cd893ee6e1c76.jpg	2026-04-14 12:10:54.724966	4.40	Polyester	Pink
24819	wom-snk-16	Urban Sporty Knits	Essential Mart	women	sneakers	1864.00	1062.00	43	https://i.pinimg.com/736x/c5/8b/48/c58b48940d12e551c4d60cc6fe55ec44.jpg	2026-04-14 12:10:54.725847	4.90	Silk	Pink
24820	wom-snk-17	Urban Chunky Sneakers	Nike	women	sneakers	5574.00	2397.00	57	https://i.pinimg.com/736x/0e/23/86/0e23867a4f63e8ee744b1ef4c4b22da4.jpg	2026-04-14 12:10:54.726723	4.70	Leather	White
24821	wom-snk-18	Urban Classic White	Adidas	women	sneakers	1338.00	1111.00	17	https://i.pinimg.com/736x/48/a9/36/48a9368d612d34477c30a9d86fa1487a.jpg	2026-04-14 12:10:54.727604	4.50	Leather	Beige
24822	wom-snk-19	Urban Canvas Shoes	Puma	women	sneakers	2764.00	1299.00	53	https://i.pinimg.com/736x/49/68/a8/4968a82f3d3bdbe58d2a2220fea1f247.jpg	2026-04-14 12:10:54.728636	4.20	Leather	Beige
24823	wom-snk-20	Urban Sporty Knits	Essential Mart	women	sneakers	1226.00	650.00	47	https://i.pinimg.com/736x/3c/ca/8e/3cca8ee0e50bd7d19de246828cb2d7a5.jpg	2026-04-14 12:10:54.729839	4.80	Cotton	Green
24824	wom-snk-21	Urban Chunky Sneakers	Nike	women	sneakers	5903.00	4722.00	20	https://i.pinimg.com/1200x/42/c9/69/42c969511fede6db0be9b1ae1495353f.jpg	2026-04-14 12:10:54.731297	3.90	Leather	Green
24825	wom-snk-22	Urban Classic White	Adidas	women	sneakers	1026.00	687.00	33	https://i.pinimg.com/736x/64/66/37/64663780f11e72ab6ea51508df89d521.jpg	2026-04-14 12:10:54.732571	4.60	Linen	Black
24826	wom-snk-23	Urban Canvas Shoes	Puma	women	sneakers	1237.00	693.00	44	https://i.pinimg.com/736x/27/1b/51/271b515ef11f3262c6388b6fee2918ca.jpg	2026-04-14 12:10:54.733681	4.40	Silk	Red
24827	wom-snk-24	Urban Sporty Knits	Essential Mart	women	sneakers	4726.00	3734.00	21	https://i.pinimg.com/736x/eb/0f/e2/eb0fe2cc7db0509b9384db929349ef54.jpg	2026-04-14 12:10:54.735195	4.70	Linen	Red
24828	wom-snk-25	Urban Chunky Sneakers	Nike	women	sneakers	1540.00	955.00	38	https://i.pinimg.com/1200x/b2/3c/e8/b23ce8ade135a59b771cd893ee6e1c76.jpg	2026-04-14 12:10:54.736387	4.40	Cotton	Beige
24829	wom-ear-1	Gold Plated Jhumkas	Essential Jewels	women	earrings	2080.00	1102.00	47	https://i.pinimg.com/1200x/f9/5d/27/f95d27d46858787845d3ae3c37a2583c.jpg	2026-04-14 12:10:54.738085	4.70	Leather	Pink
24830	wom-ear-2	Silver Oxide Hoops	Essential Jewels	women	earrings	7186.00	3521.00	51	https://i.pinimg.com/736x/85/60/68/856068739fe8cbf48a4da7348d17973c.jpg	2026-04-14 12:10:54.739368	3.80	Leather	Blue
24831	wom-ear-3	Pearl Studs	Essential Jewels	women	earrings	1114.00	780.00	30	https://i.pinimg.com/736x/72/c1/7c/72c17c119047d4a085bd6eb06e323e78.jpg	2026-04-14 12:10:54.740547	4.70	Leather	Blue
24832	wom-ear-4	Diamond Studded Chandbalis	Essential Jewels	women	earrings	3645.00	2843.00	22	https://i.pinimg.com/736x/83/16/7b/83167b1b680adfcc8663ce956d86c782.jpg	2026-04-14 12:10:54.741814	4.50	Denim	Beige
24833	wom-ear-5	Gold Plated Jhumkas	Essential Jewels	women	earrings	6149.00	5042.00	18	https://i.pinimg.com/1200x/c3/70/a6/c370a630b004dc34b2d155221d0eb72d.jpg	2026-04-14 12:10:54.742988	3.90	Polyester	Blue
24834	wom-ear-6	Silver Oxide Hoops	Essential Jewels	women	earrings	5670.00	3799.00	33	https://i.pinimg.com/736x/88/cf/9c/88cf9c8698f8de06347de4ad62dd02de.jpg	2026-04-14 12:10:54.744453	4.80	Denim	Gold
24835	wom-ear-7	Pearl Studs	Essential Jewels	women	earrings	1388.00	1138.00	18	https://i.pinimg.com/736x/9c/89/bd/9c89bd1ad34f825e0e4107b8cb5dd4b2.jpg	2026-04-14 12:10:54.745738	4.10	Leather	Blue
24836	wom-ear-8	Diamond Studded Chandbalis	Essential Jewels	women	earrings	5323.00	3247.00	39	https://i.pinimg.com/1200x/6e/d4/fb/6ed4fb81f21cd105ecd3209ddbf39626.jpg	2026-04-14 12:10:54.747182	4.40	Cotton	Grey
24837	wom-ear-9	Gold Plated Jhumkas	Essential Jewels	women	earrings	4224.00	2619.00	38	https://i.pinimg.com/736x/f5/ff/7e/f5ff7e51b8b862a9c3a70a2c04e6caf3.jpg	2026-04-14 12:10:54.748621	4.40	Cotton	Gold
24838	wom-ear-10	Silver Oxide Hoops	Essential Jewels	women	earrings	1153.00	473.00	59	https://i.pinimg.com/736x/f1/9c/d7/f19cd7f2b5af0beb05a819451bd52fe9.jpg	2026-04-14 12:10:54.749932	4.90	Leather	Gold
24839	wom-ear-11	Pearl Studs	Essential Jewels	women	earrings	3231.00	1712.00	47	https://i.pinimg.com/736x/32/0d/6a/320d6a2366f81c69440dc2910a7d56aa.jpg	2026-04-14 12:10:54.751379	4.50	Polyester	Green
24840	wom-ear-12	Diamond Studded Chandbalis	Essential Jewels	women	earrings	5858.00	4511.00	23	https://i.pinimg.com/1200x/4c/44/6b/4c446b8d7a6ba8c2f509b4c696131991.jpg	2026-04-14 12:10:54.75286	4.80	Linen	Pink
24841	wom-ear-13	Gold Plated Jhumkas	Essential Jewels	women	earrings	1184.00	924.00	22	https://i.pinimg.com/1200x/89/d2/e5/89d2e5848f2a835315c4f305fb3b423d.jpg	2026-04-14 12:10:54.754279	4.40	Silk	Grey
24842	wom-ear-14	Silver Oxide Hoops	Essential Jewels	women	earrings	1352.00	852.00	37	https://i.pinimg.com/1200x/f9/5d/27/f95d27d46858787845d3ae3c37a2583c.jpg	2026-04-14 12:10:54.755818	4.80	Georgette	Green
24843	wom-ear-15	Pearl Studs	Essential Jewels	women	earrings	4826.00	4006.00	17	https://i.pinimg.com/736x/85/60/68/856068739fe8cbf48a4da7348d17973c.jpg	2026-04-14 12:10:54.757127	4.60	Chiffon	Grey
24844	wom-ear-16	Diamond Studded Chandbalis	Essential Jewels	women	earrings	5381.00	2744.00	49	https://i.pinimg.com/736x/72/c1/7c/72c17c119047d4a085bd6eb06e323e78.jpg	2026-04-14 12:10:54.758391	4.70	Polyester	Green
24845	wom-ear-17	Gold Plated Jhumkas	Essential Jewels	women	earrings	6287.00	3709.00	41	https://i.pinimg.com/736x/83/16/7b/83167b1b680adfcc8663ce956d86c782.jpg	2026-04-14 12:10:54.759583	3.90	Silk	Black
24846	wom-ear-18	Silver Oxide Hoops	Essential Jewels	women	earrings	2389.00	956.00	60	https://i.pinimg.com/1200x/c3/70/a6/c370a630b004dc34b2d155221d0eb72d.jpg	2026-04-14 12:10:54.761196	4.70	Cotton	Blue
24847	wom-ear-19	Pearl Studs	Essential Jewels	women	earrings	1971.00	1025.00	48	https://i.pinimg.com/736x/88/cf/9c/88cf9c8698f8de06347de4ad62dd02de.jpg	2026-04-14 12:10:54.762762	4.90	Polyester	Red
24848	wom-ear-20	Diamond Studded Chandbalis	Essential Jewels	women	earrings	7599.00	4863.00	36	https://i.pinimg.com/736x/9c/89/bd/9c89bd1ad34f825e0e4107b8cb5dd4b2.jpg	2026-04-14 12:10:54.764346	4.50	Silk	Blue
24849	wom-ear-21	Gold Plated Jhumkas	Essential Jewels	women	earrings	6224.00	4295.00	31	https://i.pinimg.com/1200x/6e/d4/fb/6ed4fb81f21cd105ecd3209ddbf39626.jpg	2026-04-14 12:10:54.765539	4.60	Cotton	Blue
24850	wom-ear-22	Silver Oxide Hoops	Essential Jewels	women	earrings	5782.00	2660.00	54	https://i.pinimg.com/736x/f5/ff/7e/f5ff7e51b8b862a9c3a70a2c04e6caf3.jpg	2026-04-14 12:10:54.766806	4.70	Chiffon	Green
24851	wom-ear-23	Pearl Studs	Essential Jewels	women	earrings	5488.00	2964.00	46	https://i.pinimg.com/736x/f1/9c/d7/f19cd7f2b5af0beb05a819451bd52fe9.jpg	2026-04-14 12:10:54.768121	4.00	Linen	Grey
24852	wom-ear-24	Diamond Studded Chandbalis	Essential Jewels	women	earrings	5775.00	2888.00	50	https://i.pinimg.com/736x/32/0d/6a/320d6a2366f81c69440dc2910a7d56aa.jpg	2026-04-14 12:10:54.76913	4.30	Georgette	Pink
24853	wom-ear-25	Gold Plated Jhumkas	Essential Jewels	women	earrings	4031.00	3305.00	18	https://i.pinimg.com/1200x/4c/44/6b/4c446b8d7a6ba8c2f509b4c696131991.jpg	2026-04-14 12:10:54.770099	4.00	Silk	White
24854	wom-ear-26	Silver Oxide Hoops	Essential Jewels	women	earrings	4713.00	3723.00	21	https://i.pinimg.com/1200x/89/d2/e5/89d2e5848f2a835315c4f305fb3b423d.jpg	2026-04-14 12:10:54.771038	4.10	Polyester	Blue
24855	wom-ear-27	Pearl Studs	Essential Jewels	women	earrings	7851.00	6202.00	21	https://i.pinimg.com/1200x/f9/5d/27/f95d27d46858787845d3ae3c37a2583c.jpg	2026-04-14 12:10:54.771967	4.20	Georgette	Green
24856	wom-ear-28	Diamond Studded Chandbalis	Essential Jewels	women	earrings	7142.00	3071.00	57	https://i.pinimg.com/736x/85/60/68/856068739fe8cbf48a4da7348d17973c.jpg	2026-04-14 12:10:54.772898	3.90	Chiffon	Black
24857	wom-ear-29	Gold Plated Jhumkas	Essential Jewels	women	earrings	5249.00	3359.00	36	https://i.pinimg.com/736x/72/c1/7c/72c17c119047d4a085bd6eb06e323e78.jpg	2026-04-14 12:10:54.773823	3.90	Georgette	Blue
24858	wom-ear-30	Silver Oxide Hoops	Essential Jewels	women	earrings	7455.00	2982.00	60	https://i.pinimg.com/736x/83/16/7b/83167b1b680adfcc8663ce956d86c782.jpg	2026-04-14 12:10:54.774792	3.80	Cotton	White
24859	wom-ear-31	Pearl Studs	Essential Jewels	women	earrings	6608.00	2908.00	56	https://i.pinimg.com/1200x/c3/70/a6/c370a630b004dc34b2d155221d0eb72d.jpg	2026-04-14 12:10:54.775866	4.10	Polyester	Pink
24860	wom-ear-32	Diamond Studded Chandbalis	Essential Jewels	women	earrings	5070.00	3143.00	38	https://i.pinimg.com/736x/88/cf/9c/88cf9c8698f8de06347de4ad62dd02de.jpg	2026-04-14 12:10:54.776943	4.20	Georgette	Gold
24861	wom-ear-33	Gold Plated Jhumkas	Essential Jewels	women	earrings	5071.00	3448.00	32	https://i.pinimg.com/736x/9c/89/bd/9c89bd1ad34f825e0e4107b8cb5dd4b2.jpg	2026-04-14 12:10:54.77824	4.10	Cotton	Red
24862	wom-ear-34	Silver Oxide Hoops	Essential Jewels	women	earrings	2988.00	1404.00	53	https://i.pinimg.com/1200x/6e/d4/fb/6ed4fb81f21cd105ecd3209ddbf39626.jpg	2026-04-14 12:10:54.779391	4.30	Chiffon	Grey
24863	wom-ear-35	Pearl Studs	Essential Jewels	women	earrings	3336.00	2102.00	37	https://i.pinimg.com/736x/f5/ff/7e/f5ff7e51b8b862a9c3a70a2c04e6caf3.jpg	2026-04-14 12:10:54.780511	4.60	Denim	Beige
24864	wom-ear-36	Diamond Studded Chandbalis	Essential Jewels	women	earrings	1246.00	611.00	51	https://i.pinimg.com/736x/f1/9c/d7/f19cd7f2b5af0beb05a819451bd52fe9.jpg	2026-04-14 12:10:54.781688	4.40	Polyester	Gold
24865	wom-ear-37	Gold Plated Jhumkas	Essential Jewels	women	earrings	7175.00	4735.00	34	https://i.pinimg.com/736x/32/0d/6a/320d6a2366f81c69440dc2910a7d56aa.jpg	2026-04-14 12:10:54.782924	4.30	Denim	Blue
24866	wom-ear-38	Silver Oxide Hoops	Essential Jewels	women	earrings	4264.00	3539.00	17	https://i.pinimg.com/1200x/4c/44/6b/4c446b8d7a6ba8c2f509b4c696131991.jpg	2026-04-14 12:10:54.783917	4.50	Denim	White
24867	wom-ear-39	Pearl Studs	Essential Jewels	women	earrings	3065.00	1318.00	57	https://i.pinimg.com/1200x/89/d2/e5/89d2e5848f2a835315c4f305fb3b423d.jpg	2026-04-14 12:10:54.784877	4.90	Linen	Red
24868	wom-ear-40	Diamond Studded Chandbalis	Essential Jewels	women	earrings	5281.00	3169.00	40	https://i.pinimg.com/1200x/f9/5d/27/f95d27d46858787845d3ae3c37a2583c.jpg	2026-04-14 12:10:54.785846	4.80	Georgette	Gold
24869	wom-neck-1	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	4695.00	3005.00	36	https://i.pinimg.com/736x/d8/aa/b7/d8aab736e426ca0ca3286d3912be4474.jpg	2026-04-14 12:10:54.78822	4.90	Leather	Gold
24870	wom-neck-2	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	1132.00	758.00	33	https://i.pinimg.com/1200x/31/1b/fd/311bfd823266d94a9a5e5b29b502225d.jpg	2026-04-14 12:10:54.789484	4.80	Georgette	Black
24871	wom-neck-3	Exquisite Pendant Set Statement Piece	Luxe Archive	women	necklaces	6872.00	3161.00	54	https://i.pinimg.com/736x/81/c0/ad/81c0ad4f8cd4be64c48697c3cf671cb8.jpg	2026-04-14 12:10:54.790486	4.40	Georgette	White
24872	wom-neck-4	Exquisite Layered Chain Statement Piece	Luxe Archive	women	necklaces	7313.00	3510.00	52	https://i.pinimg.com/1200x/51/14/dc/5114dc92d962a57e989058be2f3ca72b.jpg	2026-04-14 12:10:54.791442	4.70	Linen	Gold
24873	wom-neck-5	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	2011.00	965.00	52	https://i.pinimg.com/1200x/e3/f8/88/e3f8882b9d5d4c82564111d00b9159e0.jpg	2026-04-14 12:10:54.792387	4.60	Cotton	Blue
24874	wom-neck-6	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	1144.00	858.00	25	https://i.pinimg.com/736x/d8/aa/b7/d8aab736e426ca0ca3286d3912be4474.jpg	2026-04-14 12:10:54.793413	4.90	Linen	Beige
24875	wom-neck-7	Exquisite Pendant Set Statement Piece	Luxe Archive	women	necklaces	1915.00	1551.00	19	https://i.pinimg.com/1200x/31/1b/fd/311bfd823266d94a9a5e5b29b502225d.jpg	2026-04-14 12:10:54.794732	4.90	Polyester	Black
24876	wom-neck-8	Exquisite Layered Chain Statement Piece	Luxe Archive	women	necklaces	3950.00	2449.00	38	https://i.pinimg.com/736x/81/c0/ad/81c0ad4f8cd4be64c48697c3cf671cb8.jpg	2026-04-14 12:10:54.796127	4.20	Chiffon	Gold
24877	wom-neck-9	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	5838.00	2861.00	51	https://i.pinimg.com/1200x/51/14/dc/5114dc92d962a57e989058be2f3ca72b.jpg	2026-04-14 12:10:54.797377	4.20	Polyester	Red
24878	wom-neck-10	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	3275.00	2161.00	34	https://i.pinimg.com/1200x/e3/f8/88/e3f8882b9d5d4c82564111d00b9159e0.jpg	2026-04-14 12:10:54.799134	3.90	Polyester	Blue
24879	wom-neck-11	Exquisite Pendant Set Statement Piece	Luxe Archive	women	necklaces	1071.00	685.00	36	https://i.pinimg.com/736x/d8/aa/b7/d8aab736e426ca0ca3286d3912be4474.jpg	2026-04-14 12:10:54.800551	4.30	Denim	Green
24880	wom-neck-12	Exquisite Layered Chain Statement Piece	Luxe Archive	women	necklaces	5426.00	4612.00	15	https://i.pinimg.com/1200x/31/1b/fd/311bfd823266d94a9a5e5b29b502225d.jpg	2026-04-14 12:10:54.801949	4.90	Cotton	Beige
24881	wom-neck-13	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	6086.00	3591.00	41	https://i.pinimg.com/736x/81/c0/ad/81c0ad4f8cd4be64c48697c3cf671cb8.jpg	2026-04-14 12:10:54.803653	4.40	Polyester	White
24882	wom-neck-14	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	3318.00	2688.00	19	https://i.pinimg.com/1200x/51/14/dc/5114dc92d962a57e989058be2f3ca72b.jpg	2026-04-14 12:10:54.805007	4.20	Cotton	Blue
24883	wom-neck-15	Exquisite Pendant Set Statement Piece	Luxe Archive	women	necklaces	3732.00	2575.00	31	https://i.pinimg.com/1200x/e3/f8/88/e3f8882b9d5d4c82564111d00b9159e0.jpg	2026-04-14 12:10:54.806426	4.10	Denim	Beige
24884	wom-neck-16	Exquisite Layered Chain Statement Piece	Luxe Archive	women	necklaces	4505.00	3739.00	17	https://i.pinimg.com/736x/d8/aa/b7/d8aab736e426ca0ca3286d3912be4474.jpg	2026-04-14 12:10:54.808395	4.00	Chiffon	White
24885	wom-neck-17	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	3628.00	1633.00	55	https://i.pinimg.com/1200x/31/1b/fd/311bfd823266d94a9a5e5b29b502225d.jpg	2026-04-14 12:10:54.809846	4.40	Chiffon	Blue
24886	wom-neck-18	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	7575.00	6060.00	20	https://i.pinimg.com/736x/81/c0/ad/81c0ad4f8cd4be64c48697c3cf671cb8.jpg	2026-04-14 12:10:54.811037	4.60	Cotton	Red
24887	wom-neck-19	Exquisite Pendant Set Statement Piece	Luxe Archive	women	necklaces	2623.00	1364.00	48	https://i.pinimg.com/1200x/51/14/dc/5114dc92d962a57e989058be2f3ca72b.jpg	2026-04-14 12:10:54.812371	3.90	Chiffon	Grey
24888	wom-neck-20	Exquisite Layered Chain Statement Piece	Luxe Archive	women	necklaces	4445.00	3378.00	24	https://i.pinimg.com/1200x/e3/f8/88/e3f8882b9d5d4c82564111d00b9159e0.jpg	2026-04-14 12:10:54.813821	4.60	Denim	White
24889	wom-neck-21	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	1147.00	505.00	56	https://i.pinimg.com/736x/d8/aa/b7/d8aab736e426ca0ca3286d3912be4474.jpg	2026-04-14 12:10:54.815288	4.70	Cotton	Pink
24890	wom-neck-22	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	5314.00	4357.00	18	https://i.pinimg.com/1200x/31/1b/fd/311bfd823266d94a9a5e5b29b502225d.jpg	2026-04-14 12:10:54.816598	4.60	Linen	Pink
24891	wom-neck-23	Exquisite Pendant Set Statement Piece	Luxe Archive	women	necklaces	5541.00	3768.00	32	https://i.pinimg.com/736x/81/c0/ad/81c0ad4f8cd4be64c48697c3cf671cb8.jpg	2026-04-14 12:10:54.817975	4.00	Cotton	Black
24892	wom-neck-24	Exquisite Layered Chain Statement Piece	Luxe Archive	women	necklaces	5611.00	3254.00	42	https://i.pinimg.com/1200x/51/14/dc/5114dc92d962a57e989058be2f3ca72b.jpg	2026-04-14 12:10:54.819054	4.90	Polyester	Green
24893	wom-neck-25	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	6614.00	5291.00	20	https://i.pinimg.com/1200x/e3/f8/88/e3f8882b9d5d4c82564111d00b9159e0.jpg	2026-04-14 12:10:54.820162	4.00	Cotton	Red
24894	wom-neck-26	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	5769.00	2423.00	58	https://i.pinimg.com/736x/d8/aa/b7/d8aab736e426ca0ca3286d3912be4474.jpg	2026-04-14 12:10:54.821236	4.60	Denim	Red
24895	wom-neck-27	Exquisite Pendant Set Statement Piece	Luxe Archive	women	necklaces	7712.00	3702.00	52	https://i.pinimg.com/1200x/31/1b/fd/311bfd823266d94a9a5e5b29b502225d.jpg	2026-04-14 12:10:54.822405	4.20	Chiffon	Green
24896	wom-neck-28	Exquisite Layered Chain Statement Piece	Luxe Archive	women	necklaces	5452.00	4580.00	16	https://i.pinimg.com/736x/81/c0/ad/81c0ad4f8cd4be64c48697c3cf671cb8.jpg	2026-04-14 12:10:54.823799	4.70	Georgette	Blue
24897	wom-neck-29	Exquisite Choker Statement Piece	Luxe Archive	women	necklaces	6136.00	3436.00	44	https://i.pinimg.com/1200x/51/14/dc/5114dc92d962a57e989058be2f3ca72b.jpg	2026-04-14 12:10:54.82482	4.20	Leather	Blue
24898	wom-neck-30	Exquisite Long Necklace Statement Piece	Luxe Archive	women	necklaces	4569.00	3747.00	18	https://i.pinimg.com/1200x/e3/f8/88/e3f8882b9d5d4c82564111d00b9159e0.jpg	2026-04-14 12:10:54.825836	4.20	Georgette	White
24899	wom-ring-1	Classic Engagement Ring	Essential Jewels	women	rings	3281.00	1936.00	41	https://i.pinimg.com/1200x/c9/29/32/c92932387219ee363105d5ce0187b71d.jpg	2026-04-14 12:10:54.827752	4.60	Denim	Pink
24900	wom-ring-2	Classic Band	Essential Jewels	women	rings	6430.00	5466.00	15	https://i.pinimg.com/736x/42/92/7f/42927f956626aefefaa509557a5ce84c.jpg	2026-04-14 12:10:54.829112	4.60	Leather	Grey
24901	wom-ring-3	Classic Statement Ring	Essential Jewels	women	rings	7158.00	4366.00	39	https://i.pinimg.com/736x/76/8d/7c/768d7c3ef4f652a21c0f24aba3858d6c.jpg	2026-04-14 12:10:54.830505	4.70	Leather	Black
24902	wom-ring-4	Classic Stackable	Essential Jewels	women	rings	5049.00	3534.00	30	https://i.pinimg.com/736x/96/41/3e/96413e040366e3121addd3d590787258.jpg	2026-04-14 12:10:54.83189	4.60	Georgette	Gold
24903	wom-ring-5	Classic Engagement Ring	Essential Jewels	women	rings	2423.00	1018.00	58	https://i.pinimg.com/736x/7f/30/1b/7f301be4acd5016271c8fa1eec2c0711.jpg	2026-04-14 12:10:54.833017	4.20	Linen	Blue
24904	wom-ring-6	Classic Band	Essential Jewels	women	rings	7289.00	4228.00	42	https://i.pinimg.com/1200x/a8/f6/d3/a8f6d3f9676c036e1605c2dd939e7143.jpg	2026-04-14 12:10:54.834063	4.90	Denim	Green
24905	wom-ring-7	Classic Statement Ring	Essential Jewels	women	rings	7873.00	4015.00	49	https://i.pinimg.com/736x/25/77/36/257736023c1ae85c50b99bbda980389e.jpg	2026-04-14 12:10:54.835142	4.60	Leather	Pink
24906	wom-ring-8	Classic Stackable	Essential Jewels	women	rings	5683.00	2387.00	58	https://i.pinimg.com/736x/39/ab/dc/39abdc46fdc503df37aeb2ead4fb9e93.jpg	2026-04-14 12:10:54.836142	4.40	Cotton	Pink
24907	wom-ring-9	Classic Engagement Ring	Essential Jewels	women	rings	5599.00	4703.00	16	https://i.pinimg.com/1200x/b6/62/6b/b6626b069dfed21d939eeece8dd6bf28.jpg	2026-04-14 12:10:54.837255	4.20	Leather	Beige
24908	wom-ring-10	Classic Band	Essential Jewels	women	rings	5277.00	2797.00	47	https://i.pinimg.com/1200x/c9/29/32/c92932387219ee363105d5ce0187b71d.jpg	2026-04-14 12:10:54.839069	4.30	Polyester	Pink
24909	wom-ring-11	Classic Statement Ring	Essential Jewels	women	rings	7754.00	4265.00	45	https://i.pinimg.com/736x/42/92/7f/42927f956626aefefaa509557a5ce84c.jpg	2026-04-14 12:10:54.840329	4.40	Chiffon	Black
24910	wom-ring-12	Classic Stackable	Essential Jewels	women	rings	5462.00	3386.00	38	https://i.pinimg.com/736x/76/8d/7c/768d7c3ef4f652a21c0f24aba3858d6c.jpg	2026-04-14 12:10:54.841413	4.70	Cotton	White
24911	wom-ring-13	Classic Engagement Ring	Essential Jewels	women	rings	2414.00	1352.00	44	https://i.pinimg.com/736x/96/41/3e/96413e040366e3121addd3d590787258.jpg	2026-04-14 12:10:54.842502	5.00	Polyester	Gold
24912	wom-ring-14	Classic Band	Essential Jewels	women	rings	6077.00	4132.00	32	https://i.pinimg.com/736x/7f/30/1b/7f301be4acd5016271c8fa1eec2c0711.jpg	2026-04-14 12:10:54.84363	5.00	Silk	Grey
24913	wom-ring-15	Classic Statement Ring	Essential Jewels	women	rings	4742.00	2561.00	46	https://i.pinimg.com/1200x/a8/f6/d3/a8f6d3f9676c036e1605c2dd939e7143.jpg	2026-04-14 12:10:54.844893	4.40	Georgette	Grey
24914	wom-ring-16	Classic Stackable	Essential Jewels	women	rings	1945.00	1362.00	30	https://i.pinimg.com/736x/25/77/36/257736023c1ae85c50b99bbda980389e.jpg	2026-04-14 12:10:54.846094	4.90	Chiffon	Grey
24915	wom-ring-17	Classic Engagement Ring	Essential Jewels	women	rings	3644.00	3061.00	16	https://i.pinimg.com/736x/39/ab/dc/39abdc46fdc503df37aeb2ead4fb9e93.jpg	2026-04-14 12:10:54.847393	4.00	Silk	Green
24916	wom-ring-18	Classic Band	Essential Jewels	women	rings	5718.00	3259.00	43	https://i.pinimg.com/1200x/b6/62/6b/b6626b069dfed21d939eeece8dd6bf28.jpg	2026-04-14 12:10:54.848654	3.90	Linen	Beige
24917	wom-ring-19	Classic Statement Ring	Essential Jewels	women	rings	5058.00	3692.00	27	https://i.pinimg.com/1200x/c9/29/32/c92932387219ee363105d5ce0187b71d.jpg	2026-04-14 12:10:54.849844	4.90	Cotton	Gold
24918	wom-ring-20	Classic Stackable	Essential Jewels	women	rings	3879.00	1901.00	51	https://i.pinimg.com/736x/42/92/7f/42927f956626aefefaa509557a5ce84c.jpg	2026-04-14 12:10:54.851011	5.00	Linen	Red
24919	wom-ring-21	Classic Engagement Ring	Essential Jewels	women	rings	2797.00	2349.00	16	https://i.pinimg.com/736x/76/8d/7c/768d7c3ef4f652a21c0f24aba3858d6c.jpg	2026-04-14 12:10:54.852039	4.10	Silk	Blue
24920	wom-ring-22	Classic Band	Essential Jewels	women	rings	4220.00	2827.00	33	https://i.pinimg.com/736x/96/41/3e/96413e040366e3121addd3d590787258.jpg	2026-04-14 12:10:54.853041	4.20	Chiffon	White
24921	wom-ring-23	Classic Statement Ring	Essential Jewels	women	rings	2249.00	1867.00	17	https://i.pinimg.com/736x/7f/30/1b/7f301be4acd5016271c8fa1eec2c0711.jpg	2026-04-14 12:10:54.854336	4.20	Leather	Gold
25188	kid-feed-20	Baby Bowl Kids Wear	Essential Kids	kids	feeding	3334.00	2667.00	20	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.188976	4.70	Chiffon	Pink
24922	wom-ring-24	Classic Stackable	Essential Jewels	women	rings	1137.00	614.00	46	https://i.pinimg.com/1200x/a8/f6/d3/a8f6d3f9676c036e1605c2dd939e7143.jpg	2026-04-14 12:10:54.855521	4.50	Denim	Red
24923	wom-ring-25	Classic Engagement Ring	Essential Jewels	women	rings	5165.00	2531.00	51	https://i.pinimg.com/736x/25/77/36/257736023c1ae85c50b99bbda980389e.jpg	2026-04-14 12:10:54.856698	4.90	Georgette	Blue
24924	wom-jean-1	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	6036.00	3320.00	45	https://i.pinimg.com/1200x/a9/35/10/a9351044506f41e14ab02113de7370e0.jpg	2026-04-14 12:10:54.858132	4.00	Denim	Gold
24925	wom-jean-2	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	3660.00	2891.00	21	https://i.pinimg.com/1200x/23/e3/65/23e365e8205e269f424fb2bca58dbadb.jpg	2026-04-14 12:10:54.859269	4.70	Silk	Blue
24926	wom-jean-3	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	5147.00	3963.00	23	https://i.pinimg.com/1200x/ae/5a/c9/ae5ac93bbca9afc43a59c350da839e8b.jpg	2026-04-14 12:10:54.860365	3.80	Silk	Beige
24927	wom-jean-4	Distressed Straight Cut Jeans	Essential Mart	women	jeans	6118.00	3916.00	36	https://i.pinimg.com/736x/ae/f6/06/aef6061238929dd3000be226e857f3d8.jpg	2026-04-14 12:10:54.861534	4.10	Leather	Pink
24928	wom-jean-5	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	4889.00	4058.00	17	https://i.pinimg.com/1200x/c3/c4/b7/c3c4b73cafc6e0f93c2a49704db0d6bc.jpg	2026-04-14 12:10:54.862921	5.00	Leather	Gold
24929	wom-jean-6	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	6211.00	3789.00	39	https://i.pinimg.com/736x/5d/a9/68/5da96861137ee67a4fb8f97a78d9b9dd.jpg	2026-04-14 12:10:54.864301	4.80	Georgette	Black
24930	wom-jean-7	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	5055.00	2426.00	52	https://i.pinimg.com/736x/66/ff/47/66ff478223c5193105d551037dbc8ec4.jpg	2026-04-14 12:10:54.865755	4.50	Cotton	Green
24931	wom-jean-8	Distressed Straight Cut Jeans	Essential Mart	women	jeans	7916.00	5620.00	29	https://i.pinimg.com/736x/28/f3/b9/28f3b9997bc24214345bb973f004eaba.jpg	2026-04-14 12:10:54.867028	3.80	Chiffon	Blue
24932	wom-jean-9	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	1155.00	474.00	59	https://img.fantaskycdn.com/4d8d151476b1387d09e65232641ed846_1024x.jpeg	2026-04-14 12:10:54.868185	4.80	Linen	Red
24933	wom-jean-10	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	1416.00	1005.00	29	https://i.pinimg.com/736x/57/52/5f/57525f42ea0d1ac148ce1a2eec2592cc.jpg	2026-04-14 12:10:54.869373	4.80	Cotton	Beige
24934	wom-jean-11	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	6816.00	4635.00	32	https://i.pinimg.com/736x/94/80/6e/94806ec8323a23370a3557fa5a83ba5f.jpg	2026-04-14 12:10:54.870817	4.10	Cotton	Red
24935	wom-jean-12	Distressed Straight Cut Jeans	Essential Mart	women	jeans	3535.00	1555.00	56	https://i.pinimg.com/736x/dd/1b/c1/dd1bc1e9d5e7bafb80015912fe3dd29a.jpg	2026-04-14 12:10:54.872015	4.80	Chiffon	Green
24936	wom-jean-13	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	5229.00	4340.00	17	https://i.pinimg.com/736x/8d/4a/85/8d4a852445b0863138afeaa5910a2de1.jpg	2026-04-14 12:10:54.873045	4.50	Polyester	Pink
24937	wom-jean-14	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	5108.00	2860.00	44	https://i.pinimg.com/1200x/84/cc/45/84cc4536ced826380d360443e8f1feb3.jpg	2026-04-14 12:10:54.87398	4.60	Denim	Green
24938	wom-jean-15	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	7822.00	3833.00	51	https://i.pinimg.com/736x/4c/ca/74/4cca7431d726002dec4e0312a39e7115.jpg	2026-04-14 12:10:54.874963	4.10	Linen	Black
24939	wom-jean-16	Distressed Straight Cut Jeans	Essential Mart	women	jeans	5775.00	2310.00	60	https://i.pinimg.com/736x/1e/40/c8/1e40c8079023c98710191cbe6252795b.jpg	2026-04-14 12:10:54.876015	3.90	Cotton	Red
24940	wom-jean-17	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	2363.00	1630.00	31	https://i.pinimg.com/736x/39/a5/9b/39a59b022f7f2b891108720a897636c5.jpg	2026-04-14 12:10:54.877303	4.90	Linen	Gold
24941	wom-jean-18	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	6999.00	3849.00	45	https://i.pinimg.com/1200x/a9/35/10/a9351044506f41e14ab02113de7370e0.jpg	2026-04-14 12:10:54.878542	3.90	Silk	Green
24942	wom-jean-19	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	5705.00	4621.00	19	https://i.pinimg.com/1200x/23/e3/65/23e365e8205e269f424fb2bca58dbadb.jpg	2026-04-14 12:10:54.879661	4.20	Denim	Beige
24943	wom-jean-20	Distressed Straight Cut Jeans	Essential Mart	women	jeans	1982.00	1685.00	15	https://i.pinimg.com/1200x/ae/5a/c9/ae5ac93bbca9afc43a59c350da839e8b.jpg	2026-04-14 12:10:54.880957	3.90	Leather	Blue
24944	wom-jean-21	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	7086.00	3968.00	44	https://i.pinimg.com/736x/ae/f6/06/aef6061238929dd3000be226e857f3d8.jpg	2026-04-14 12:10:54.882254	4.40	Georgette	White
24945	wom-jean-22	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	3400.00	1904.00	44	https://i.pinimg.com/1200x/c3/c4/b7/c3c4b73cafc6e0f93c2a49704db0d6bc.jpg	2026-04-14 12:10:54.883422	4.80	Polyester	Gold
24946	wom-jean-23	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	7122.00	3490.00	51	https://i.pinimg.com/736x/5d/a9/68/5da96861137ee67a4fb8f97a78d9b9dd.jpg	2026-04-14 12:10:54.884461	4.50	Linen	Pink
24947	wom-jean-24	Distressed Straight Cut Jeans	Essential Mart	women	jeans	3118.00	1403.00	55	https://i.pinimg.com/736x/66/ff/47/66ff478223c5193105d551037dbc8ec4.jpg	2026-04-14 12:10:54.885897	4.40	Polyester	White
24948	wom-jean-25	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	3883.00	3223.00	17	https://i.pinimg.com/736x/28/f3/b9/28f3b9997bc24214345bb973f004eaba.jpg	2026-04-14 12:10:54.887035	4.20	Chiffon	White
24949	wom-jean-26	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	5263.00	3158.00	40	https://img.fantaskycdn.com/4d8d151476b1387d09e65232641ed846_1024x.jpeg	2026-04-14 12:10:54.888247	3.90	Chiffon	Pink
24950	wom-jean-27	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	6334.00	4180.00	34	https://i.pinimg.com/736x/57/52/5f/57525f42ea0d1ac148ce1a2eec2592cc.jpg	2026-04-14 12:10:54.889494	4.40	Georgette	Grey
24951	wom-jean-28	Distressed Straight Cut Jeans	Essential Mart	women	jeans	6662.00	3864.00	42	https://i.pinimg.com/736x/94/80/6e/94806ec8323a23370a3557fa5a83ba5f.jpg	2026-04-14 12:10:54.890657	4.60	Polyester	Red
24952	wom-jean-29	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	3493.00	2969.00	15	https://i.pinimg.com/736x/dd/1b/c1/dd1bc1e9d5e7bafb80015912fe3dd29a.jpg	2026-04-14 12:10:54.891873	4.30	Cotton	Black
24953	wom-jean-30	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	3375.00	2700.00	20	https://i.pinimg.com/736x/8d/4a/85/8d4a852445b0863138afeaa5910a2de1.jpg	2026-04-14 12:10:54.893135	4.60	Polyester	Black
24954	wom-jean-31	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	5578.00	2231.00	60	https://i.pinimg.com/1200x/84/cc/45/84cc4536ced826380d360443e8f1feb3.jpg	2026-04-14 12:10:54.894426	4.20	Leather	Gold
24955	wom-jean-32	Distressed Straight Cut Jeans	Essential Mart	women	jeans	3697.00	3142.00	15	https://i.pinimg.com/736x/4c/ca/74/4cca7431d726002dec4e0312a39e7115.jpg	2026-04-14 12:10:54.895889	3.90	Silk	Gold
24956	wom-jean-33	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	3453.00	2901.00	16	https://i.pinimg.com/736x/1e/40/c8/1e40c8079023c98710191cbe6252795b.jpg	2026-04-14 12:10:54.897379	4.80	Denim	Green
24957	wom-jean-34	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	5674.00	3177.00	44	https://i.pinimg.com/736x/39/a5/9b/39a59b022f7f2b891108720a897636c5.jpg	2026-04-14 12:10:54.898674	4.40	Georgette	Black
24958	wom-jean-35	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	7650.00	3137.00	59	https://i.pinimg.com/1200x/a9/35/10/a9351044506f41e14ab02113de7370e0.jpg	2026-04-14 12:10:54.89995	4.00	Cotton	Blue
24959	wom-jean-36	Distressed Straight Cut Jeans	Essential Mart	women	jeans	1272.00	1043.00	18	https://i.pinimg.com/1200x/23/e3/65/23e365e8205e269f424fb2bca58dbadb.jpg	2026-04-14 12:10:54.901192	4.50	Leather	Green
24960	wom-jean-37	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	1806.00	867.00	52	https://i.pinimg.com/1200x/ae/5a/c9/ae5ac93bbca9afc43a59c350da839e8b.jpg	2026-04-14 12:10:54.902178	4.90	Denim	Gold
24961	wom-jean-38	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	6601.00	3168.00	52	https://i.pinimg.com/736x/ae/f6/06/aef6061238929dd3000be226e857f3d8.jpg	2026-04-14 12:10:54.903101	4.50	Silk	White
24962	wom-jean-39	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	7406.00	6295.00	15	https://i.pinimg.com/1200x/c3/c4/b7/c3c4b73cafc6e0f93c2a49704db0d6bc.jpg	2026-04-14 12:10:54.904032	4.70	Denim	Gold
24963	wom-jean-40	Distressed Straight Cut Jeans	Essential Mart	women	jeans	4049.00	3401.00	16	https://i.pinimg.com/736x/5d/a9/68/5da96861137ee67a4fb8f97a78d9b9dd.jpg	2026-04-14 12:10:54.904952	5.00	Polyester	Blue
24964	wom-jean-41	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	4787.00	3590.00	25	https://i.pinimg.com/736x/66/ff/47/66ff478223c5193105d551037dbc8ec4.jpg	2026-04-14 12:10:54.905876	3.90	Georgette	Blue
24965	wom-jean-42	Dark Indigo Mom Fit Jeans	Essential Mart	women	jeans	3957.00	3245.00	18	https://i.pinimg.com/736x/28/f3/b9/28f3b9997bc24214345bb973f004eaba.jpg	2026-04-14 12:10:54.906801	4.20	Chiffon	White
24966	wom-jean-43	Black Denim Wide Leg Jeans	Essential Mart	women	jeans	6603.00	4292.00	35	https://img.fantaskycdn.com/4d8d151476b1387d09e65232641ed846_1024x.jpeg	2026-04-14 12:10:54.907717	4.60	Leather	Beige
24967	wom-jean-44	Distressed Straight Cut Jeans	Essential Mart	women	jeans	2833.00	2351.00	17	https://i.pinimg.com/736x/57/52/5f/57525f42ea0d1ac148ce1a2eec2592cc.jpg	2026-04-14 12:10:54.908633	4.20	Cotton	Beige
24968	wom-jean-45	Light Wash High Waist Skinny Jeans	Essential Mart	women	jeans	7285.00	4298.00	41	https://i.pinimg.com/736x/94/80/6e/94806ec8323a23370a3557fa5a83ba5f.jpg	2026-04-14 12:10:54.909709	4.30	Polyester	White
24969	kid-ts-1	Printed Tee Kids Wear	Essential Kids	kids	tshirts	1376.00	867.00	37	https://i.pinimg.com/1200x/4d/7e/55/4d7e55ed7bfe41bd88ff0270aecc1a2e.jpg	2026-04-14 12:10:54.911134	4.90	Georgette	White
24970	kid-ts-2	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	5738.00	2984.00	48	https://i.pinimg.com/1200x/b6/1e/ab/b61eab1ea728da8b0682935491e255dd.jpg	2026-04-14 12:10:54.91269	3.90	Silk	Grey
24971	kid-ts-3	Printed Tee Kids Wear	Essential Kids	kids	tshirts	6526.00	2871.00	56	https://i.pinimg.com/736x/81/f1/09/81f1095f9c9fa7d7f5ffaae29d6856c7.jpg	2026-04-14 12:10:54.913801	4.30	Chiffon	Green
24972	kid-ts-4	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	3030.00	1454.00	52	https://i.pinimg.com/1200x/4e/3f/48/4e3f485da189adb2f22afa711b7b2893.jpg	2026-04-14 12:10:54.914791	4.80	Georgette	Red
24973	kid-ts-5	Printed Tee Kids Wear	Essential Kids	kids	tshirts	1839.00	1048.00	43	https://i.pinimg.com/1200x/73/bd/d9/73bdd9436d963d9e65a0d7990d100be8.jpg	2026-04-14 12:10:54.915706	4.30	Linen	Blue
24974	kid-ts-6	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	3263.00	1925.00	41	https://i.pinimg.com/736x/d5/a1/1b/d5a11bbbdea46053496582531dcce185.jpg	2026-04-14 12:10:54.916685	3.80	Denim	Black
24975	kid-ts-7	Printed Tee Kids Wear	Essential Kids	kids	tshirts	7493.00	5395.00	28	https://i.pinimg.com/1200x/4d/7e/55/4d7e55ed7bfe41bd88ff0270aecc1a2e.jpg	2026-04-14 12:10:54.917969	4.20	Denim	Green
24976	kid-ts-8	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	1535.00	1289.00	16	https://i.pinimg.com/1200x/b6/1e/ab/b61eab1ea728da8b0682935491e255dd.jpg	2026-04-14 12:10:54.919365	4.60	Chiffon	Beige
24977	kid-ts-9	Printed Tee Kids Wear	Essential Kids	kids	tshirts	3024.00	1361.00	55	https://i.pinimg.com/736x/81/f1/09/81f1095f9c9fa7d7f5ffaae29d6856c7.jpg	2026-04-14 12:10:54.920477	4.70	Silk	Beige
24978	kid-ts-10	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	1399.00	616.00	56	https://i.pinimg.com/1200x/4e/3f/48/4e3f485da189adb2f22afa711b7b2893.jpg	2026-04-14 12:10:54.921585	4.50	Silk	Grey
24979	kid-ts-11	Printed Tee Kids Wear	Essential Kids	kids	tshirts	2998.00	1529.00	49	https://i.pinimg.com/1200x/73/bd/d9/73bdd9436d963d9e65a0d7990d100be8.jpg	2026-04-14 12:10:54.923127	4.20	Denim	Red
24980	kid-ts-12	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	3532.00	2614.00	26	https://i.pinimg.com/736x/d5/a1/1b/d5a11bbbdea46053496582531dcce185.jpg	2026-04-14 12:10:54.924348	4.90	Cotton	Gold
24981	kid-ts-13	Printed Tee Kids Wear	Essential Kids	kids	tshirts	2551.00	1862.00	27	https://i.pinimg.com/1200x/4d/7e/55/4d7e55ed7bfe41bd88ff0270aecc1a2e.jpg	2026-04-14 12:10:54.925676	3.90	Linen	Grey
24982	kid-ts-14	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	4448.00	3114.00	30	https://i.pinimg.com/1200x/b6/1e/ab/b61eab1ea728da8b0682935491e255dd.jpg	2026-04-14 12:10:54.92689	4.00	Leather	Grey
24983	kid-ts-15	Printed Tee Kids Wear	Essential Kids	kids	tshirts	2497.00	1998.00	20	https://i.pinimg.com/736x/81/f1/09/81f1095f9c9fa7d7f5ffaae29d6856c7.jpg	2026-04-14 12:10:54.928271	4.70	Linen	White
24984	kid-ts-16	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	6089.00	5115.00	16	https://i.pinimg.com/1200x/4e/3f/48/4e3f485da189adb2f22afa711b7b2893.jpg	2026-04-14 12:10:54.929605	4.80	Polyester	Red
24985	kid-ts-17	Printed Tee Kids Wear	Essential Kids	kids	tshirts	7076.00	5307.00	25	https://i.pinimg.com/1200x/73/bd/d9/73bdd9436d963d9e65a0d7990d100be8.jpg	2026-04-14 12:10:54.931272	4.60	Silk	Green
24986	kid-ts-18	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	5090.00	3003.00	41	https://i.pinimg.com/736x/d5/a1/1b/d5a11bbbdea46053496582531dcce185.jpg	2026-04-14 12:10:54.932859	5.00	Polyester	Gold
24987	kid-ts-19	Printed Tee Kids Wear	Essential Kids	kids	tshirts	1105.00	851.00	23	https://i.pinimg.com/1200x/4d/7e/55/4d7e55ed7bfe41bd88ff0270aecc1a2e.jpg	2026-04-14 12:10:54.934418	4.20	Cotton	Gold
24988	kid-ts-20	Cartoon Tee Kids Wear	Essential Kids	kids	tshirts	6678.00	5276.00	21	https://i.pinimg.com/1200x/b6/1e/ab/b61eab1ea728da8b0682935491e255dd.jpg	2026-04-14 12:10:54.935631	4.60	Linen	Gold
24989	kid-sh-1	Checked Shirt Kids Wear	Essential Kids	kids	shirts	7516.00	3908.00	48	https://i.pinimg.com/736x/03/24/10/0324103537eed88bf8d8abc3322c9a91.jpg	2026-04-14 12:10:54.937095	3.90	Denim	Grey
24990	kid-sh-2	Denim Shirt Kids Wear	Essential Kids	kids	shirts	6919.00	4636.00	33	https://i.pinimg.com/1200x/17/59/8c/17598c63e4c799c6107fb1008cfe156b.jpg	2026-04-14 12:10:54.93825	4.10	Cotton	Gold
24991	kid-sh-3	Checked Shirt Kids Wear	Essential Kids	kids	shirts	2299.00	1310.00	43	https://i.pinimg.com/1200x/50/4e/30/504e3099db11359fdb07c6ba86c08c5e.jpg	2026-04-14 12:10:54.939383	4.10	Silk	Black
24992	kid-sh-4	Denim Shirt Kids Wear	Essential Kids	kids	shirts	1346.00	700.00	48	https://i.pinimg.com/1200x/e7/35/97/e73597c646d0f80d61a1197234d258e5.jpg	2026-04-14 12:10:54.940536	4.60	Cotton	Beige
24993	kid-sh-5	Checked Shirt Kids Wear	Essential Kids	kids	shirts	2956.00	2187.00	26	https://i.pinimg.com/736x/ac/0e/bf/ac0ebf31ac20dd81e40de037832bd75d.jpg	2026-04-14 12:10:54.941796	4.40	Silk	Grey
24994	kid-sh-6	Denim Shirt Kids Wear	Essential Kids	kids	shirts	1754.00	1000.00	43	https://i.pinimg.com/736x/03/24/10/0324103537eed88bf8d8abc3322c9a91.jpg	2026-04-14 12:10:54.943024	4.30	Georgette	Green
24995	kid-sh-7	Checked Shirt Kids Wear	Essential Kids	kids	shirts	2934.00	2259.00	23	https://i.pinimg.com/1200x/17/59/8c/17598c63e4c799c6107fb1008cfe156b.jpg	2026-04-14 12:10:54.944334	4.40	Denim	White
24996	kid-sh-8	Denim Shirt Kids Wear	Essential Kids	kids	shirts	5712.00	3827.00	33	https://i.pinimg.com/1200x/50/4e/30/504e3099db11359fdb07c6ba86c08c5e.jpg	2026-04-14 12:10:54.945958	4.20	Chiffon	Gold
24997	kid-sh-9	Checked Shirt Kids Wear	Essential Kids	kids	shirts	7240.00	5937.00	18	https://i.pinimg.com/1200x/e7/35/97/e73597c646d0f80d61a1197234d258e5.jpg	2026-04-14 12:10:54.947421	3.90	Silk	Black
24998	kid-sh-10	Denim Shirt Kids Wear	Essential Kids	kids	shirts	6377.00	5357.00	16	https://i.pinimg.com/736x/ac/0e/bf/ac0ebf31ac20dd81e40de037832bd75d.jpg	2026-04-14 12:10:54.949124	4.10	Polyester	Red
24999	kid-sh-11	Checked Shirt Kids Wear	Essential Kids	kids	shirts	2829.00	1245.00	56	https://i.pinimg.com/736x/03/24/10/0324103537eed88bf8d8abc3322c9a91.jpg	2026-04-14 12:10:54.950473	4.20	Cotton	Blue
25000	kid-sh-12	Denim Shirt Kids Wear	Essential Kids	kids	shirts	1181.00	697.00	41	https://i.pinimg.com/1200x/17/59/8c/17598c63e4c799c6107fb1008cfe156b.jpg	2026-04-14 12:10:54.951625	3.80	Silk	Green
25001	kid-sh-13	Checked Shirt Kids Wear	Essential Kids	kids	shirts	6619.00	5030.00	24	https://i.pinimg.com/1200x/50/4e/30/504e3099db11359fdb07c6ba86c08c5e.jpg	2026-04-14 12:10:54.95279	4.10	Polyester	Beige
25002	kid-sh-14	Denim Shirt Kids Wear	Essential Kids	kids	shirts	7637.00	3742.00	51	https://i.pinimg.com/1200x/e7/35/97/e73597c646d0f80d61a1197234d258e5.jpg	2026-04-14 12:10:54.953963	5.00	Cotton	Green
25003	kid-sh-15	Checked Shirt Kids Wear	Essential Kids	kids	shirts	3167.00	1362.00	57	https://i.pinimg.com/736x/ac/0e/bf/ac0ebf31ac20dd81e40de037832bd75d.jpg	2026-04-14 12:10:54.955326	4.00	Polyester	Beige
25004	kid-sh-16	Denim Shirt Kids Wear	Essential Kids	kids	shirts	5224.00	3239.00	38	https://i.pinimg.com/736x/03/24/10/0324103537eed88bf8d8abc3322c9a91.jpg	2026-04-14 12:10:54.956649	3.90	Leather	Black
25005	kid-sh-17	Checked Shirt Kids Wear	Essential Kids	kids	shirts	7516.00	5787.00	23	https://i.pinimg.com/1200x/17/59/8c/17598c63e4c799c6107fb1008cfe156b.jpg	2026-04-14 12:10:54.957834	3.80	Silk	Blue
25006	kid-sh-18	Denim Shirt Kids Wear	Essential Kids	kids	shirts	5700.00	4788.00	16	https://i.pinimg.com/1200x/50/4e/30/504e3099db11359fdb07c6ba86c08c5e.jpg	2026-04-14 12:10:54.958965	4.70	Georgette	Gold
25007	kid-sh-19	Checked Shirt Kids Wear	Essential Kids	kids	shirts	6506.00	2798.00	57	https://i.pinimg.com/1200x/e7/35/97/e73597c646d0f80d61a1197234d258e5.jpg	2026-04-14 12:10:54.960174	3.90	Linen	Blue
25008	kid-sh-20	Denim Shirt Kids Wear	Essential Kids	kids	shirts	6941.00	2985.00	57	https://i.pinimg.com/736x/ac/0e/bf/ac0ebf31ac20dd81e40de037832bd75d.jpg	2026-04-14 12:10:54.961421	4.80	Linen	Blue
25009	kid-je-1	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	7858.00	3929.00	50	https://i.pinimg.com/736x/2a/51/8a/2a518a737715e8c12ad18e558ac66693.jpg	2026-04-14 12:10:54.964282	4.60	Polyester	Pink
25010	kid-je-2	Regular Fit Kids Wear	Essential Kids	kids	jeans	2487.00	1990.00	20	https://i.pinimg.com/736x/92/4a/e6/924ae69b70742c2a684ce84301123a53.jpg	2026-04-14 12:10:54.96572	4.10	Silk	Blue
25011	kid-je-3	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	6916.00	4565.00	34	https://i.pinimg.com/736x/4f/bd/39/4fbd391a841e226bd9453bd3916ebd80.jpg	2026-04-14 12:10:54.966888	4.80	Leather	Green
25012	kid-je-4	Regular Fit Kids Wear	Essential Kids	kids	jeans	6110.00	5132.00	16		2026-04-14 12:10:54.967887	4.50	Polyester	Gold
25013	kid-je-5	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	6579.00	4671.00	29	https://i.pinimg.com/736x/2a/51/8a/2a518a737715e8c12ad18e558ac66693.jpg	2026-04-14 12:10:54.968952	3.90	Silk	Grey
25014	kid-je-6	Regular Fit Kids Wear	Essential Kids	kids	jeans	2974.00	1903.00	36	https://i.pinimg.com/736x/92/4a/e6/924ae69b70742c2a684ce84301123a53.jpg	2026-04-14 12:10:54.969889	4.40	Denim	Pink
25015	kid-je-7	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	5542.00	4600.00	17	https://i.pinimg.com/736x/4f/bd/39/4fbd391a841e226bd9453bd3916ebd80.jpg	2026-04-14 12:10:54.970804	4.70	Georgette	White
25016	kid-je-8	Regular Fit Kids Wear	Essential Kids	kids	jeans	1062.00	807.00	24		2026-04-14 12:10:54.971727	4.40	Georgette	Gold
25017	kid-je-9	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	4477.00	2328.00	48	https://i.pinimg.com/736x/2a/51/8a/2a518a737715e8c12ad18e558ac66693.jpg	2026-04-14 12:10:54.972645	4.90	Cotton	Gold
25018	kid-je-10	Regular Fit Kids Wear	Essential Kids	kids	jeans	5624.00	3431.00	39	https://i.pinimg.com/736x/92/4a/e6/924ae69b70742c2a684ce84301123a53.jpg	2026-04-14 12:10:54.973552	4.10	Denim	Black
25019	kid-je-11	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	2627.00	1865.00	29	https://i.pinimg.com/736x/4f/bd/39/4fbd391a841e226bd9453bd3916ebd80.jpg	2026-04-14 12:10:54.974605	4.80	Linen	Green
25020	kid-je-12	Regular Fit Kids Wear	Essential Kids	kids	jeans	7998.00	4719.00	41		2026-04-14 12:10:54.975558	4.90	Denim	Pink
25021	kid-je-13	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	4953.00	3913.00	21	https://i.pinimg.com/736x/2a/51/8a/2a518a737715e8c12ad18e558ac66693.jpg	2026-04-14 12:10:54.976463	4.20	Leather	Beige
25022	kid-je-14	Regular Fit Kids Wear	Essential Kids	kids	jeans	5796.00	4405.00	24	https://i.pinimg.com/736x/92/4a/e6/924ae69b70742c2a684ce84301123a53.jpg	2026-04-14 12:10:54.977378	4.40	Georgette	Grey
25023	kid-je-15	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	7878.00	5121.00	35	https://i.pinimg.com/736x/4f/bd/39/4fbd391a841e226bd9453bd3916ebd80.jpg	2026-04-14 12:10:54.978611	3.80	Linen	Green
25024	kid-je-16	Regular Fit Kids Wear	Essential Kids	kids	jeans	4046.00	3075.00	24		2026-04-14 12:10:54.980148	4.50	Leather	Black
25025	kid-je-17	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	1620.00	940.00	42	https://i.pinimg.com/736x/2a/51/8a/2a518a737715e8c12ad18e558ac66693.jpg	2026-04-14 12:10:54.9819	4.00	Denim	Pink
25026	kid-je-18	Regular Fit Kids Wear	Essential Kids	kids	jeans	5019.00	4266.00	15	https://i.pinimg.com/736x/92/4a/e6/924ae69b70742c2a684ce84301123a53.jpg	2026-04-14 12:10:54.983177	4.50	Polyester	Blue
25027	kid-je-19	Slim Fit Jeans Kids Wear	Essential Kids	kids	jeans	4496.00	2518.00	44	https://i.pinimg.com/736x/4f/bd/39/4fbd391a841e226bd9453bd3916ebd80.jpg	2026-04-14 12:10:54.984398	5.00	Polyester	Red
25028	kid-je-20	Regular Fit Kids Wear	Essential Kids	kids	jeans	2436.00	1949.00	20		2026-04-14 12:10:54.98557	4.30	Georgette	Beige
25029	kid-sho-1	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	1393.00	850.00	39	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:54.987218	4.30	Cotton	Pink
25030	kid-sho-2	Sports Shorts Kids Wear	Essential Kids	kids	shorts	1416.00	892.00	37	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:54.988594	4.20	Chiffon	Grey
25031	kid-sho-3	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	2436.00	1194.00	51	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:54.989699	4.20	Silk	Grey
25032	kid-sho-4	Sports Shorts Kids Wear	Essential Kids	kids	shorts	3756.00	2103.00	44	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:54.990869	4.30	Polyester	Blue
25033	kid-sho-5	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	7699.00	3465.00	55	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:54.992091	4.60	Polyester	Blue
25034	kid-sho-6	Sports Shorts Kids Wear	Essential Kids	kids	shorts	2908.00	1367.00	53	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:54.993302	4.70	Chiffon	Grey
25035	kid-sho-7	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	7547.00	3321.00	56	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:54.994403	4.90	Cotton	Blue
25036	kid-sho-8	Sports Shorts Kids Wear	Essential Kids	kids	shorts	3959.00	2296.00	42	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:54.995693	4.70	Chiffon	Black
25037	kid-sho-9	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	4952.00	4011.00	19	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:54.997301	4.40	Chiffon	Black
25038	kid-sho-10	Sports Shorts Kids Wear	Essential Kids	kids	shorts	4119.00	3378.00	18	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:54.998654	4.00	Polyester	Beige
25039	kid-sho-11	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	6966.00	4180.00	40	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:54.999898	4.90	Linen	Red
25040	kid-sho-12	Sports Shorts Kids Wear	Essential Kids	kids	shorts	2694.00	2128.00	21	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:55.000955	4.80	Silk	White
25041	kid-sho-13	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	4768.00	2813.00	41	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:55.001971	4.60	Polyester	White
25042	kid-sho-14	Sports Shorts Kids Wear	Essential Kids	kids	shorts	4514.00	2347.00	48	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:55.003052	5.00	Silk	Beige
25043	kid-sho-15	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	5743.00	2355.00	59	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:55.004362	4.00	Cotton	Grey
25044	kid-sho-16	Sports Shorts Kids Wear	Essential Kids	kids	shorts	3898.00	1637.00	58	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:55.00549	4.20	Silk	Green
25045	kid-sho-17	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	2980.00	2056.00	31	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:55.006575	4.10	Silk	White
25046	kid-sho-18	Sports Shorts Kids Wear	Essential Kids	kids	shorts	4574.00	2104.00	54	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:55.007624	4.70	Polyester	Grey
25047	kid-sho-19	Cotton Shorts Kids Wear	Essential Kids	kids	shorts	2752.00	1404.00	49	https://i.pinimg.com/736x/8.jpg	2026-04-14 12:10:55.0087	4.90	Chiffon	Blue
25048	kid-sho-20	Sports Shorts Kids Wear	Essential Kids	kids	shorts	5823.00	4193.00	28	https://i.pinimg.com/736x/9.jpg	2026-04-14 12:10:55.009735	3.90	Leather	Grey
25049	kid-dr-1	Party Dress Kids Wear	Essential Kids	kids	dresses	6151.00	2522.00	59	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.011638	4.90	Linen	Red
25050	kid-dr-2	Frock Kids Wear	Essential Kids	kids	dresses	3695.00	3104.00	16	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.01322	4.40	Cotton	Grey
25051	kid-dr-3	Party Dress Kids Wear	Essential Kids	kids	dresses	5525.00	4033.00	27	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.01466	4.90	Chiffon	Pink
25052	kid-dr-4	Frock Kids Wear	Essential Kids	kids	dresses	6012.00	3066.00	49	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.016033	4.20	Cotton	Green
25053	kid-dr-5	Party Dress Kids Wear	Essential Kids	kids	dresses	7036.00	2814.00	60	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.017231	4.90	Chiffon	Gold
25054	kid-dr-6	Frock Kids Wear	Essential Kids	kids	dresses	3006.00	2495.00	17	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.018228	3.90	Linen	Blue
25055	kid-dr-7	Party Dress Kids Wear	Essential Kids	kids	dresses	6415.00	2951.00	54	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.019293	4.20	Silk	Black
25056	kid-dr-8	Frock Kids Wear	Essential Kids	kids	dresses	4515.00	2438.00	46	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.020249	4.10	Linen	Beige
25057	kid-dr-9	Party Dress Kids Wear	Essential Kids	kids	dresses	3966.00	2816.00	29	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.021166	4.00	Linen	Green
25058	kid-dr-10	Frock Kids Wear	Essential Kids	kids	dresses	3207.00	1475.00	54	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.022083	3.90	Georgette	Green
25059	kid-dr-11	Party Dress Kids Wear	Essential Kids	kids	dresses	1161.00	743.00	36	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.023165	4.50	Silk	Beige
25060	kid-dr-12	Frock Kids Wear	Essential Kids	kids	dresses	4743.00	2704.00	43	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.024274	5.00	Cotton	Black
25061	kid-dr-13	Party Dress Kids Wear	Essential Kids	kids	dresses	2568.00	2003.00	22	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.025403	4.70	Polyester	Green
25062	kid-dr-14	Frock Kids Wear	Essential Kids	kids	dresses	1018.00	784.00	23	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.026618	4.60	Linen	White
25063	kid-dr-15	Party Dress Kids Wear	Essential Kids	kids	dresses	2221.00	1644.00	26	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.028113	4.30	Chiffon	Blue
25064	kid-dr-16	Frock Kids Wear	Essential Kids	kids	dresses	7380.00	3173.00	57	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.02944	4.10	Denim	Black
25065	kid-dr-17	Party Dress Kids Wear	Essential Kids	kids	dresses	1287.00	991.00	23	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.030666	4.60	Chiffon	Pink
25066	kid-dr-18	Frock Kids Wear	Essential Kids	kids	dresses	1520.00	958.00	37	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.03203	4.50	Silk	Black
25067	kid-dr-19	Party Dress Kids Wear	Essential Kids	kids	dresses	7344.00	4920.00	33	https://i.pinimg.com/736x/10.jpg	2026-04-14 12:10:55.033738	3.90	Silk	Black
25068	kid-dr-20	Frock Kids Wear	Essential Kids	kids	dresses	7210.00	2956.00	59	https://i.pinimg.com/736x/11.jpg	2026-04-14 12:10:55.034877	4.20	Silk	Green
25069	kid-top-1	Casual Top Kids Wear	Essential Kids	kids	tops	7193.00	5970.00	17	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.036186	5.00	Leather	Pink
25070	kid-top-2	Fancy Top Kids Wear	Essential Kids	kids	tops	4253.00	2382.00	44	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.037275	4.40	Linen	Blue
25071	kid-top-3	Casual Top Kids Wear	Essential Kids	kids	tops	6115.00	3791.00	38	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.038337	4.70	Cotton	Gold
25072	kid-top-4	Fancy Top Kids Wear	Essential Kids	kids	tops	7623.00	5260.00	31	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.039286	4.30	Polyester	Grey
25073	kid-top-5	Casual Top Kids Wear	Essential Kids	kids	tops	3419.00	1368.00	60	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.040213	4.60	Georgette	Pink
25074	kid-top-6	Fancy Top Kids Wear	Essential Kids	kids	tops	4945.00	3857.00	22	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.041136	4.10	Silk	Grey
25075	kid-top-7	Casual Top Kids Wear	Essential Kids	kids	tops	3170.00	2346.00	26	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.04211	3.90	Polyester	Beige
25076	kid-top-8	Fancy Top Kids Wear	Essential Kids	kids	tops	4570.00	3473.00	24	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.043639	4.10	Chiffon	Grey
25077	kid-top-9	Casual Top Kids Wear	Essential Kids	kids	tops	6113.00	4585.00	25	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.04549	4.20	Linen	Beige
25078	kid-top-10	Fancy Top Kids Wear	Essential Kids	kids	tops	1699.00	1240.00	27	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.046766	4.80	Denim	Beige
25079	kid-top-11	Casual Top Kids Wear	Essential Kids	kids	tops	3078.00	1477.00	52	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.048065	4.90	Polyester	Pink
25080	kid-top-12	Fancy Top Kids Wear	Essential Kids	kids	tops	5274.00	2584.00	51	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.049674	4.50	Denim	Black
25081	kid-top-13	Casual Top Kids Wear	Essential Kids	kids	tops	3155.00	2209.00	30	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.051191	5.00	Cotton	Pink
25082	kid-top-14	Fancy Top Kids Wear	Essential Kids	kids	tops	6446.00	3545.00	45	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.052604	4.80	Chiffon	Red
25083	kid-top-15	Casual Top Kids Wear	Essential Kids	kids	tops	4488.00	3635.00	19	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.053732	3.90	Polyester	Gold
25084	kid-top-16	Fancy Top Kids Wear	Essential Kids	kids	tops	6181.00	5068.00	18	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.054897	4.90	Leather	Pink
25085	kid-top-17	Casual Top Kids Wear	Essential Kids	kids	tops	7953.00	6442.00	19	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.056159	4.90	Chiffon	Black
25086	kid-top-18	Fancy Top Kids Wear	Essential Kids	kids	tops	1379.00	1117.00	19	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.05738	4.40	Polyester	Black
25087	kid-top-19	Casual Top Kids Wear	Essential Kids	kids	tops	6402.00	5250.00	18	https://i.pinimg.com/736x/12.jpg	2026-04-14 12:10:55.05865	4.50	Denim	Blue
25088	kid-top-20	Fancy Top Kids Wear	Essential Kids	kids	tops	1295.00	1075.00	17	https://i.pinimg.com/736x/13.jpg	2026-04-14 12:10:55.05975	4.70	Chiffon	White
25089	kid-leg-1	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	7714.00	6557.00	15	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.061143	4.80	Denim	Blue
25090	kid-leg-2	Stretch Fit Kids Wear	Essential Kids	kids	leggings	5406.00	3352.00	38	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.062525	4.80	Denim	White
25091	kid-leg-3	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	3798.00	1519.00	60	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.064067	4.00	Leather	Blue
25092	kid-leg-4	Stretch Fit Kids Wear	Essential Kids	kids	leggings	5512.00	4134.00	25	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.065367	4.20	Cotton	Black
25093	kid-leg-5	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	6542.00	3206.00	51	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.066393	4.30	Leather	Beige
25094	kid-leg-6	Stretch Fit Kids Wear	Essential Kids	kids	leggings	6405.00	5060.00	21	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.067432	3.90	Chiffon	Grey
25095	kid-leg-7	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	5411.00	2868.00	47	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.068434	4.20	Denim	Blue
25096	kid-leg-8	Stretch Fit Kids Wear	Essential Kids	kids	leggings	2001.00	940.00	53	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.069399	3.80	Linen	White
25097	kid-leg-9	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	6878.00	4608.00	33	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.070438	4.20	Denim	Gold
25098	kid-leg-10	Stretch Fit Kids Wear	Essential Kids	kids	leggings	5477.00	3451.00	37	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.071467	4.90	Cotton	Pink
25099	kid-leg-11	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	1066.00	757.00	29	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.072431	4.60	Georgette	Blue
25100	kid-leg-12	Stretch Fit Kids Wear	Essential Kids	kids	leggings	2285.00	1165.00	49	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.073489	4.30	Silk	Blue
25101	kid-leg-13	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	2398.00	1127.00	53	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.074834	3.80	Chiffon	Red
25102	kid-leg-14	Stretch Fit Kids Wear	Essential Kids	kids	leggings	5797.00	2435.00	58	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.076073	4.90	Linen	Gold
25103	kid-leg-15	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	6505.00	3318.00	49	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.07735	4.80	Linen	White
25104	kid-leg-16	Stretch Fit Kids Wear	Essential Kids	kids	leggings	7785.00	5372.00	31	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.078571	4.60	Silk	Blue
25105	kid-leg-17	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	2402.00	1561.00	35	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.079811	4.00	Silk	White
25106	kid-leg-18	Stretch Fit Kids Wear	Essential Kids	kids	leggings	1429.00	1215.00	15	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.080969	4.20	Georgette	Beige
25107	kid-leg-19	Cotton Leggings Kids Wear	Essential Kids	kids	leggings	5766.00	3575.00	38	https://i.pinimg.com/736x/14.jpg	2026-04-14 12:10:55.082325	4.10	Polyester	Red
25108	kid-leg-20	Stretch Fit Kids Wear	Essential Kids	kids	leggings	5619.00	2978.00	47	https://i.pinimg.com/736x/15.jpg	2026-04-14 12:10:55.084062	4.10	Cotton	Green
25109	kid-sk-1	Mini Skirt Kids Wear	Essential Kids	kids	skirts	1021.00	541.00	47	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.086094	4.00	Leather	Blue
25110	kid-sk-2	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	1211.00	714.00	41	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.08722	4.20	Chiffon	Blue
25111	kid-sk-3	Mini Skirt Kids Wear	Essential Kids	kids	skirts	4478.00	1791.00	60	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.088325	4.10	Georgette	Pink
25112	kid-sk-4	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	4226.00	2705.00	36	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.089583	4.60	Polyester	Gold
25113	kid-sk-5	Mini Skirt Kids Wear	Essential Kids	kids	skirts	6704.00	5028.00	25	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.09057	5.00	Silk	Gold
25114	kid-sk-6	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	4909.00	3436.00	30	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.091543	4.20	Linen	Red
25115	kid-sk-7	Mini Skirt Kids Wear	Essential Kids	kids	skirts	5905.00	3956.00	33	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.092536	4.40	Chiffon	Gold
25116	kid-sk-8	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	4453.00	3696.00	17	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.093477	4.40	Silk	Green
25117	kid-sk-9	Mini Skirt Kids Wear	Essential Kids	kids	skirts	4962.00	3076.00	38	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.094769	4.30	Silk	White
25118	kid-sk-10	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	3282.00	1575.00	52	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.096415	4.70	Linen	White
25119	kid-sk-11	Mini Skirt Kids Wear	Essential Kids	kids	skirts	3261.00	2283.00	30	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.099179	4.50	Georgette	Green
25120	kid-sk-12	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	5401.00	3349.00	38	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.100821	4.30	Georgette	Grey
25121	kid-sk-13	Mini Skirt Kids Wear	Essential Kids	kids	skirts	5091.00	3258.00	36	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.102279	4.20	Cotton	Gold
25122	kid-sk-14	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	3213.00	1349.00	58	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.104083	4.60	Chiffon	White
25123	kid-sk-15	Mini Skirt Kids Wear	Essential Kids	kids	skirts	3723.00	2904.00	22	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.105779	4.50	Silk	Beige
25124	kid-sk-16	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	7672.00	5907.00	23	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.107596	4.80	Cotton	Gold
25125	kid-sk-17	Mini Skirt Kids Wear	Essential Kids	kids	skirts	6009.00	4627.00	23	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.108924	4.30	Cotton	Pink
25126	kid-sk-18	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	4386.00	3553.00	19	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.110593	4.70	Denim	White
25127	kid-sk-19	Mini Skirt Kids Wear	Essential Kids	kids	skirts	1140.00	764.00	33	https://i.pinimg.com/736x/16.jpg	2026-04-14 12:10:55.112051	4.90	Chiffon	Black
25128	kid-sk-20	Pleated Skirt Kids Wear	Essential Kids	kids	skirts	5118.00	4043.00	21	https://i.pinimg.com/736x/17.jpg	2026-04-14 12:10:55.1134	4.60	Leather	Grey
25129	kid-dia-1	Soft Diapers Kids Wear	Essential Kids	kids	diapers	1508.00	679.00	55	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.115373	5.00	Polyester	Beige
25130	kid-dia-2	Premium Care Kids Wear	Essential Kids	kids	diapers	2224.00	1290.00	42	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.117064	4.40	Silk	Red
25131	kid-dia-3	Soft Diapers Kids Wear	Essential Kids	kids	diapers	2913.00	1194.00	59	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.118606	3.90	Georgette	White
25132	kid-dia-4	Premium Care Kids Wear	Essential Kids	kids	diapers	7270.00	3271.00	55	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.119865	3.80	Leather	Grey
25133	kid-dia-5	Soft Diapers Kids Wear	Essential Kids	kids	diapers	7713.00	4551.00	41	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.121104	4.30	Denim	Gold
25134	kid-dia-6	Premium Care Kids Wear	Essential Kids	kids	diapers	6453.00	2968.00	54	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.12232	4.10	Denim	Green
25135	kid-dia-7	Soft Diapers Kids Wear	Essential Kids	kids	diapers	6440.00	4894.00	24	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.123457	3.80	Silk	Pink
25136	kid-dia-8	Premium Care Kids Wear	Essential Kids	kids	diapers	3406.00	2793.00	18	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.124568	4.90	Chiffon	Beige
25137	kid-dia-9	Soft Diapers Kids Wear	Essential Kids	kids	diapers	6412.00	5001.00	22	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.125836	4.60	Cotton	Blue
25138	kid-dia-10	Premium Care Kids Wear	Essential Kids	kids	diapers	1291.00	1072.00	17	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.127063	4.50	Chiffon	Pink
25139	kid-dia-11	Soft Diapers Kids Wear	Essential Kids	kids	diapers	6065.00	3275.00	46	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.128699	4.00	Linen	White
25140	kid-dia-12	Premium Care Kids Wear	Essential Kids	kids	diapers	3434.00	2782.00	19	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.130493	4.60	Cotton	Black
25141	kid-dia-13	Soft Diapers Kids Wear	Essential Kids	kids	diapers	5443.00	2340.00	57	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.131928	3.90	Denim	Green
25142	kid-dia-14	Premium Care Kids Wear	Essential Kids	kids	diapers	3957.00	2058.00	48	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.133399	3.90	Linen	Pink
25143	kid-dia-15	Soft Diapers Kids Wear	Essential Kids	kids	diapers	4936.00	2764.00	44	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.134555	4.80	Polyester	Pink
25144	kid-dia-16	Premium Care Kids Wear	Essential Kids	kids	diapers	7145.00	4930.00	31	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.135761	4.80	Polyester	Pink
25145	kid-dia-17	Soft Diapers Kids Wear	Essential Kids	kids	diapers	4404.00	2686.00	39	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.137388	4.30	Georgette	Pink
25146	kid-dia-18	Premium Care Kids Wear	Essential Kids	kids	diapers	4775.00	3772.00	21	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.138815	3.80	Chiffon	Red
25147	kid-dia-19	Soft Diapers Kids Wear	Essential Kids	kids	diapers	1952.00	1191.00	39	https://i.pinimg.com/736x/18.jpg	2026-04-14 12:10:55.140021	4.60	Chiffon	Green
25148	kid-dia-20	Premium Care Kids Wear	Essential Kids	kids	diapers	3115.00	2243.00	28	https://i.pinimg.com/736x/19.jpg	2026-04-14 12:10:55.14115	4.80	Chiffon	Beige
25149	kid-bath-1	Baby Soap Kids Wear	Essential Kids	kids	bath	1387.00	610.00	56	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.142777	4.10	Chiffon	Black
25150	kid-bath-2	Shampoo Kids Wear	Essential Kids	kids	bath	6387.00	4854.00	24	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.14432	4.80	Denim	Green
25151	kid-bath-3	Baby Soap Kids Wear	Essential Kids	kids	bath	5773.00	3695.00	36	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.145769	4.80	Georgette	Grey
25152	kid-bath-4	Shampoo Kids Wear	Essential Kids	kids	bath	5021.00	2611.00	48	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.147481	4.10	Leather	Beige
25153	kid-bath-5	Baby Soap Kids Wear	Essential Kids	kids	bath	7241.00	4707.00	35	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.148965	4.50	Denim	Gold
25154	kid-bath-6	Shampoo Kids Wear	Essential Kids	kids	bath	7006.00	3363.00	52	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.15019	4.20	Polyester	Green
25155	kid-bath-7	Baby Soap Kids Wear	Essential Kids	kids	bath	5822.00	2445.00	58	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.151338	4.90	Silk	Green
25156	kid-bath-8	Shampoo Kids Wear	Essential Kids	kids	bath	3338.00	2370.00	29	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.152485	4.80	Leather	Blue
25157	kid-bath-9	Baby Soap Kids Wear	Essential Kids	kids	bath	7216.00	5701.00	21	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.153676	5.00	Linen	Gold
25158	kid-bath-10	Shampoo Kids Wear	Essential Kids	kids	bath	2374.00	1187.00	50	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.154669	4.70	Georgette	Black
25159	kid-bath-11	Baby Soap Kids Wear	Essential Kids	kids	bath	5421.00	2656.00	51	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.155595	4.50	Linen	White
25160	kid-bath-12	Shampoo Kids Wear	Essential Kids	kids	bath	1928.00	1311.00	32	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.156518	4.70	Chiffon	Green
25161	kid-bath-13	Baby Soap Kids Wear	Essential Kids	kids	bath	1429.00	1115.00	22	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.157501	3.90	Denim	Blue
25162	kid-bath-14	Shampoo Kids Wear	Essential Kids	kids	bath	2460.00	1279.00	48	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.158455	4.60	Leather	Black
25163	kid-bath-15	Baby Soap Kids Wear	Essential Kids	kids	bath	4586.00	2752.00	40	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.159835	4.60	Leather	Gold
25164	kid-bath-16	Shampoo Kids Wear	Essential Kids	kids	bath	2918.00	2422.00	17	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.161001	4.90	Chiffon	Blue
25165	kid-bath-17	Baby Soap Kids Wear	Essential Kids	kids	bath	1692.00	677.00	60	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.162038	4.50	Georgette	Black
25166	kid-bath-18	Shampoo Kids Wear	Essential Kids	kids	bath	7603.00	4334.00	43	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.16312	4.80	Denim	Blue
25167	kid-bath-19	Baby Soap Kids Wear	Essential Kids	kids	bath	3486.00	2196.00	37	https://i.pinimg.com/736x/20.jpg	2026-04-14 12:10:55.164668	4.40	Polyester	Grey
25168	kid-bath-20	Shampoo Kids Wear	Essential Kids	kids	bath	7957.00	4217.00	47	https://i.pinimg.com/736x/21.jpg	2026-04-14 12:10:55.165789	4.50	Silk	Grey
25169	kid-feed-1	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	1830.00	1391.00	24	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.167071	4.90	Denim	Pink
25170	kid-feed-2	Baby Bowl Kids Wear	Essential Kids	kids	feeding	7160.00	3150.00	56	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.168274	4.10	Denim	Beige
25171	kid-feed-3	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	7062.00	2825.00	60	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.16941	4.30	Leather	Pink
25172	kid-feed-4	Baby Bowl Kids Wear	Essential Kids	kids	feeding	3666.00	3043.00	17	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.170721	3.90	Cotton	Blue
25173	kid-feed-5	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	3411.00	2217.00	35	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.171873	4.40	Georgette	Blue
25174	kid-feed-6	Baby Bowl Kids Wear	Essential Kids	kids	feeding	6376.00	4081.00	36	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.173052	4.10	Leather	Pink
25175	kid-feed-7	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	1156.00	705.00	39	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.174178	5.00	Polyester	White
25176	kid-feed-8	Baby Bowl Kids Wear	Essential Kids	kids	feeding	3695.00	2143.00	42	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.175366	4.60	Silk	Blue
25177	kid-feed-9	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	3548.00	2200.00	38	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.176531	4.10	Cotton	Black
25178	kid-feed-10	Baby Bowl Kids Wear	Essential Kids	kids	feeding	6673.00	4137.00	38	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.177685	4.60	Linen	Green
25179	kid-feed-11	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	5315.00	3402.00	36	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.178899	4.00	Silk	White
25180	kid-feed-12	Baby Bowl Kids Wear	Essential Kids	kids	feeding	2612.00	1933.00	26	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.180222	4.20	Linen	Black
25181	kid-feed-13	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	3703.00	3073.00	17	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.181448	5.00	Polyester	Gold
25182	kid-feed-14	Baby Bowl Kids Wear	Essential Kids	kids	feeding	5402.00	2863.00	47	https://i.pinimg.com/736x/23.jpg	2026-04-14 12:10:55.182442	4.90	Denim	Grey
25183	kid-feed-15	Feeding Bottle Kids Wear	Essential Kids	kids	feeding	5875.00	2761.00	53	https://i.pinimg.com/736x/22.jpg	2026-04-14 12:10:55.183689	4.00	Polyester	Red
\.


--
-- TOC entry 4919 (class 0 OID 24577)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, password, created_at) FROM stdin;
1	Karishma singh	karishmasingh58638@gmail.com	$2b$10$cMCv.iOz5I.IPiXULaCZ7u0WZ1Lj8GMi2XiGp8OK3l0hOp5BuQKkG	2026-04-10 11:11:16.518147
\.


--
-- TOC entry 4932 (class 0 OID 0)
-- Dependencies: 219
-- Name: cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_id_seq', 11, true);


--
-- TOC entry 4933 (class 0 OID 0)
-- Dependencies: 221
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_id_seq', 25188, true);


--
-- TOC entry 4934 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 4765 (class 2606 OID 24596)
-- Name: cart cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);


--
-- TOC entry 4767 (class 2606 OID 24598)
-- Name: cart cart_user_id_product_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_user_id_product_id_key UNIQUE (user_id, product_id);


--
-- TOC entry 4769 (class 2606 OID 24629)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- TOC entry 4771 (class 2606 OID 24631)
-- Name: products products_product_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_product_id_key UNIQUE (product_id);


--
-- TOC entry 4761 (class 2606 OID 24587)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4763 (class 2606 OID 24585)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4772 (class 2606 OID 24599)
-- Name: cart cart_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2026-04-14 12:29:41

--
-- PostgreSQL database dump complete
--

\unrestrict mjtxWtIx3CdmWN2INpRHHp0aZqHOSpYMj8LUN9ejfRr3gTRwtTF4k8X2YIYU20k

