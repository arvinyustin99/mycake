--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

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
-- Name: contacts; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    address text,
    telephone character varying(255),
    open_hour text,
    map_point character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.contacts OWNER TO mycake_admin;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO mycake_admin;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.core_store OWNER TO mycake_admin;

--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.core_store_id_seq OWNER TO mycake_admin;

--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: homepages; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.homepages (
    id integer NOT NULL,
    title character varying(255),
    heading character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.homepages OWNER TO mycake_admin;

--
-- Name: homepages_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.homepages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homepages_id_seq OWNER TO mycake_admin;

--
-- Name: homepages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.i18n_locales OWNER TO mycake_admin;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locales_id_seq OWNER TO mycake_admin;

--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.products (
    id integer NOT NULL,
    title character varying(255),
    price bigint,
    content text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.products OWNER TO mycake_admin;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO mycake_admin;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: stories; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.stories (
    id integer NOT NULL,
    description text,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.stories OWNER TO mycake_admin;

--
-- Name: stories_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.stories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stories_id_seq OWNER TO mycake_admin;

--
-- Name: stories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.stories_id_seq OWNED BY public.stories.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


ALTER TABLE public.strapi_administrator OWNER TO mycake_admin;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_administrator_id_seq OWNER TO mycake_admin;

--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_permission OWNER TO mycake_admin;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_permission_id_seq OWNER TO mycake_admin;

--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.strapi_role OWNER TO mycake_admin;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_role_id_seq OWNER TO mycake_admin;

--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


ALTER TABLE public.strapi_users_roles OWNER TO mycake_admin;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_users_roles_id_seq OWNER TO mycake_admin;

--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO mycake_admin;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO mycake_admin;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.upload_file OWNER TO mycake_admin;

--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_id_seq OWNER TO mycake_admin;

--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


ALTER TABLE public.upload_file_morph OWNER TO mycake_admin;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_file_morph_id_seq OWNER TO mycake_admin;

--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_permission" OWNER TO mycake_admin;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_permission_id_seq" OWNER TO mycake_admin;

--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


ALTER TABLE public."users-permissions_role" OWNER TO mycake_admin;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_role_id_seq" OWNER TO mycake_admin;

--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: mycake_admin
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public."users-permissions_user" OWNER TO mycake_admin;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: mycake_admin
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users-permissions_user_id_seq" OWNER TO mycake_admin;

--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mycake_admin
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: homepages id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: stories id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.stories ALTER COLUMN id SET DEFAULT nextval('public.stories_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.contacts (id, address, telephone, open_hour, map_point, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	Jln. Swakarya No. 3, Patumbak, Kota Medan	+62 614558008	- Senin - Jumat    : 09.00 - 16.30\n- Sabtu, Minggu  : 09.00 - 15.00	https://goo.gl/maps/yoU81fTvx7ba4Qb4A	\N	2	2	2021-08-31 18:20:19.111+07	2021-08-31 19:51:09.881+07
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
15	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
5	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
6	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
7	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
8	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
2	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
4	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
11	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
12	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	development	
13	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
14	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
10	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
17	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
18	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
19	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
20	plugin_i18n_default_locale	"en"	string		
24	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
21	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
22	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
23	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
3	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
29	model_def_application::contact.contact	{"uid":"application::contact.contact","collectionName":"contacts","kind":"collectionType","info":{"name":"Contact"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"address":{"type":"text"},"telephone":{"type":"string"},"open_hour":{"type":"richtext"},"map_point":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
25	model_def_application::homepage.homepage	{"uid":"application::homepage.homepage","collectionName":"homepages","kind":"collectionType","info":{"name":"Homepage"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"heading":{"type":"string"},"hero":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
26	plugin_content_manager_configuration_content_types::application::homepage.homepage	{"uid":"application::homepage.homepage","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"heading":{"edit":{"label":"Heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Heading","searchable":true,"sortable":true}},"hero":{"edit":{"label":"Hero","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hero","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","heading","hero"],"editRelations":[],"edit":[[{"name":"title","size":6},{"name":"heading","size":6}],[{"name":"hero","size":6}]]}}	object		
28	plugin_content_manager_configuration_content_types::application::story.story	{"uid":"application::story.story","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"image_1":{"edit":{"label":"Image_1","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image_1","searchable":false,"sortable":false}},"image_2":{"edit":{"label":"Image_2","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image_2","searchable":false,"sortable":false}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","image_1","image_2","created_at"],"editRelations":[],"edit":[[{"name":"image_1","size":6},{"name":"image_2","size":6}],[{"name":"description","size":12}]]}}	object		
30	plugin_content_manager_configuration_content_types::application::contact.contact	{"uid":"application::contact.contact","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"telephone","defaultSortBy":"telephone","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"address":{"edit":{"label":"Address","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Address","searchable":true,"sortable":true}},"telephone":{"edit":{"label":"Telephone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Telephone","searchable":true,"sortable":true}},"open_hour":{"edit":{"label":"Open_hour","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Open_hour","searchable":false,"sortable":false}},"map_point":{"edit":{"label":"Map_point","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Map_point","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","address","telephone","map_point"],"editRelations":[],"edit":[[{"name":"address","size":6},{"name":"telephone","size":6}],[{"name":"open_hour","size":12}],[{"name":"map_point","size":6}]]}}	object		
27	model_def_application::story.story	{"uid":"application::story.story","collectionName":"stories","kind":"collectionType","info":{"name":"Story"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"image_1":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"image_2":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"description":{"type":"richtext"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
32	plugin_content_manager_configuration_content_types::application::product.product	{"uid":"application::product.product","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"image":{"edit":{"label":"Image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Image","searchable":false,"sortable":false}},"title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","image","title","price"],"editRelations":[],"edit":[[{"name":"image","size":6},{"name":"title","size":6}],[{"name":"price","size":4},{"name":"content","size":6}]]}}	object		
31	model_def_application::product.product	{"uid":"application::product.product","collectionName":"products","kind":"collectionType","info":{"name":"Product"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"image":{"model":"file","via":"related","allowedTypes":["images","files","videos"],"plugin":"upload","required":false,"pluginOptions":{}},"title":{"type":"string"},"price":{"type":"biginteger"},"content":{"type":"text"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
9	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
\.


--
-- Data for Name: homepages; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.homepages (id, title, heading, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	My Cake, hometown signature desserts	Tidak hanya sekadar oleh-oleh, berjuta rasa dan kreativitas dalam sebuah piring.	2021-08-31 16:09:49.433+07	2	2	2021-08-31 16:09:34.971+07	2021-08-31 16:09:49.452+07
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2021-08-07 22:00:14.418+07	2021-08-07 22:00:14.418+07
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.products (id, title, price, content, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.stories (id, description, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
2	Arvin	Y	\N	arvinyustin99@gmail.com	$2a$10$nM5.OYfgg.3UQPMGOQzbNO6FcSMEzZVGh3zUcQ48DMTDfaL5ML6gu	\N	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
1	plugins::upload.read	\N	{}	[]	2	2021-08-07 22:00:16.056+07	2021-08-07 22:00:16.066+07
2	plugins::upload.assets.create	\N	{}	[]	2	2021-08-07 22:00:16.056+07	2021-08-07 22:00:16.067+07
3	plugins::upload.assets.update	\N	{}	[]	2	2021-08-07 22:00:16.056+07	2021-08-07 22:00:16.067+07
5	plugins::upload.assets.copy-link	\N	{}	[]	2	2021-08-07 22:00:16.059+07	2021-08-07 22:00:16.07+07
4	plugins::upload.assets.download	\N	{}	[]	2	2021-08-07 22:00:16.056+07	2021-08-07 22:00:16.07+07
6	plugins::upload.assets.create	\N	{}	[]	3	2021-08-07 22:00:16.092+07	2021-08-07 22:00:16.103+07
7	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2021-08-07 22:00:16.092+07	2021-08-07 22:00:16.103+07
8	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2021-08-07 22:00:16.093+07	2021-08-07 22:00:16.103+07
9	plugins::upload.assets.download	\N	{}	[]	3	2021-08-07 22:00:16.093+07	2021-08-07 22:00:16.103+07
10	plugins::upload.assets.copy-link	\N	{}	[]	3	2021-08-07 22:00:16.093+07	2021-08-07 22:00:16.106+07
11	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-07 22:00:16.171+07	2021-08-07 22:00:16.192+07
12	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-07 22:00:16.171+07	2021-08-07 22:00:16.192+07
13	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-08-07 22:00:16.171+07	2021-08-07 22:00:16.192+07
15	plugins::content-type-builder.read	\N	{}	[]	1	2021-08-07 22:00:16.172+07	2021-08-07 22:00:16.193+07
16	plugins::email.settings.read	\N	{}	[]	1	2021-08-07 22:00:16.172+07	2021-08-07 22:00:16.193+07
17	plugins::upload.read	\N	{}	[]	1	2021-08-07 22:00:16.172+07	2021-08-07 22:00:16.193+07
18	plugins::upload.assets.create	\N	{}	[]	1	2021-08-07 22:00:16.172+07	2021-08-07 22:00:16.194+07
19	plugins::upload.assets.update	\N	{}	[]	1	2021-08-07 22:00:16.172+07	2021-08-07 22:00:16.194+07
20	plugins::upload.assets.download	\N	{}	[]	1	2021-08-07 22:00:16.173+07	2021-08-07 22:00:16.199+07
21	plugins::upload.assets.copy-link	\N	{}	[]	1	2021-08-07 22:00:16.234+07	2021-08-07 22:00:16.249+07
22	plugins::upload.settings.read	\N	{}	[]	1	2021-08-07 22:00:16.239+07	2021-08-07 22:00:16.257+07
23	plugins::i18n.locale.create	\N	{}	[]	1	2021-08-07 22:00:16.24+07	2021-08-07 22:00:16.257+07
24	plugins::i18n.locale.read	\N	{}	[]	1	2021-08-07 22:00:16.24+07	2021-08-07 22:00:16.257+07
25	plugins::i18n.locale.update	\N	{}	[]	1	2021-08-07 22:00:16.24+07	2021-08-07 22:00:16.257+07
26	plugins::i18n.locale.delete	\N	{}	[]	1	2021-08-07 22:00:16.24+07	2021-08-07 22:00:16.257+07
27	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2021-08-07 22:00:16.241+07	2021-08-07 22:00:16.257+07
28	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2021-08-07 22:00:16.241+07	2021-08-07 22:00:16.258+07
29	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2021-08-07 22:00:16.241+07	2021-08-07 22:00:16.258+07
30	plugins::users-permissions.roles.create	\N	{}	[]	1	2021-08-07 22:00:16.241+07	2021-08-07 22:00:16.266+07
31	plugins::users-permissions.roles.read	\N	{}	[]	1	2021-08-07 22:00:16.298+07	2021-08-07 22:00:16.327+07
33	plugins::users-permissions.roles.delete	\N	{}	[]	1	2021-08-07 22:00:16.302+07	2021-08-07 22:00:16.331+07
34	plugins::users-permissions.providers.read	\N	{}	[]	1	2021-08-07 22:00:16.302+07	2021-08-07 22:00:16.331+07
35	plugins::users-permissions.providers.update	\N	{}	[]	1	2021-08-07 22:00:16.302+07	2021-08-07 22:00:16.331+07
36	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2021-08-07 22:00:16.303+07	2021-08-07 22:00:16.331+07
37	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2021-08-07 22:00:16.303+07	2021-08-07 22:00:16.331+07
32	plugins::users-permissions.roles.update	\N	{}	[]	1	2021-08-07 22:00:16.3+07	2021-08-07 22:00:16.332+07
38	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2021-08-07 22:00:16.317+07	2021-08-07 22:00:16.336+07
39	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2021-08-07 22:00:16.317+07	2021-08-07 22:00:16.336+07
40	admin::marketplace.read	\N	{}	[]	1	2021-08-07 22:00:16.317+07	2021-08-07 22:00:16.336+07
41	admin::marketplace.plugins.install	\N	{}	[]	1	2021-08-07 22:00:16.375+07	2021-08-07 22:00:16.39+07
42	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2021-08-07 22:00:16.38+07	2021-08-07 22:00:16.4+07
43	admin::webhooks.create	\N	{}	[]	1	2021-08-07 22:00:16.38+07	2021-08-07 22:00:16.4+07
44	admin::webhooks.read	\N	{}	[]	1	2021-08-07 22:00:16.38+07	2021-08-07 22:00:16.4+07
45	admin::webhooks.update	\N	{}	[]	1	2021-08-07 22:00:16.38+07	2021-08-07 22:00:16.4+07
46	admin::webhooks.delete	\N	{}	[]	1	2021-08-07 22:00:16.381+07	2021-08-07 22:00:16.4+07
47	admin::users.create	\N	{}	[]	1	2021-08-07 22:00:16.381+07	2021-08-07 22:00:16.4+07
48	admin::users.read	\N	{}	[]	1	2021-08-07 22:00:16.381+07	2021-08-07 22:00:16.4+07
49	admin::users.update	\N	{}	[]	1	2021-08-07 22:00:16.381+07	2021-08-07 22:00:16.401+07
50	admin::users.delete	\N	{}	[]	1	2021-08-07 22:00:16.381+07	2021-08-07 22:00:16.405+07
52	admin::roles.read	\N	{}	[]	1	2021-08-07 22:00:16.431+07	2021-08-07 22:00:16.441+07
53	admin::roles.update	\N	{}	[]	1	2021-08-07 22:00:16.432+07	2021-08-07 22:00:16.441+07
51	admin::roles.create	\N	{}	[]	1	2021-08-07 22:00:16.429+07	2021-08-07 22:00:16.441+07
54	admin::roles.delete	\N	{}	[]	1	2021-08-07 22:00:16.432+07	2021-08-07 22:00:16.443+07
56	plugins::content-manager.explorer.create	application::homepage.homepage	{"fields": ["title", "heading", "hero"]}	[]	1	2021-08-30 22:31:00.244+07	2021-08-30 22:31:00.259+07
57	plugins::content-manager.explorer.read	application::homepage.homepage	{"fields": ["title", "heading", "hero"]}	[]	1	2021-08-30 22:31:00.244+07	2021-08-30 22:31:00.259+07
58	plugins::content-manager.explorer.update	application::homepage.homepage	{"fields": ["title", "heading", "hero"]}	[]	1	2021-08-30 22:31:00.245+07	2021-08-30 22:31:00.259+07
158	plugins::content-manager.explorer.delete	application::story.story	{}	[]	1	2021-08-31 21:03:53.941+07	2021-08-31 21:03:53.961+07
164	plugins::content-manager.explorer.publish	application::homepage.homepage	{}	[]	1	2021-08-31 21:03:53.942+07	2021-08-31 21:03:53.962+07
62	plugins::content-manager.explorer.read	application::story.story	{"fields": ["image_1", "image_2", "description"]}	[]	1	2021-08-30 22:40:29.199+07	2021-08-30 22:40:29.223+07
63	plugins::content-manager.explorer.create	application::story.story	{"fields": ["image_1", "image_2", "description"]}	[]	1	2021-08-30 22:40:29.2+07	2021-08-30 22:40:29.223+07
159	plugins::content-manager.explorer.delete	application::product.product	{}	[]	1	2021-08-31 21:03:53.941+07	2021-08-31 21:03:53.961+07
165	plugins::content-manager.explorer.publish	application::product.product	{}	[]	1	2021-08-31 21:03:53.942+07	2021-08-31 21:03:53.962+07
64	plugins::content-manager.explorer.update	application::story.story	{"fields": ["image_1", "image_2", "description"]}	[]	1	2021-08-30 22:40:29.2+07	2021-08-30 22:40:29.223+07
160	plugins::content-manager.explorer.delete	application::homepage.homepage	{}	[]	1	2021-08-31 21:03:53.942+07	2021-08-31 21:03:53.962+07
166	plugins::content-manager.explorer.publish	application::story.story	{}	[]	1	2021-08-31 21:03:53.943+07	2021-08-31 21:03:53.968+07
161	plugins::content-manager.explorer.delete	application::contact.contact	{}	[]	1	2021-08-31 21:03:53.942+07	2021-08-31 21:03:53.962+07
162	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2021-08-31 21:03:53.942+07	2021-08-31 21:03:53.962+07
163	plugins::content-manager.explorer.publish	application::contact.contact	{}	[]	1	2021-08-31 21:03:53.942+07	2021-08-31 21:03:53.962+07
75	plugins::content-manager.explorer.create	application::contact.contact	{"fields": ["address", "telephone", "open_hour", "map_point"]}	[]	1	2021-08-31 10:18:23.85+07	2021-08-31 10:18:23.872+07
76	plugins::content-manager.explorer.read	application::contact.contact	{"fields": ["address", "telephone", "open_hour", "map_point"]}	[]	1	2021-08-31 10:18:23.85+07	2021-08-31 10:18:23.872+07
77	plugins::content-manager.explorer.update	application::contact.contact	{"fields": ["address", "telephone", "open_hour", "map_point"]}	[]	1	2021-08-31 10:18:23.851+07	2021-08-31 10:18:23.873+07
92	plugins::content-manager.explorer.create	application::product.product	{"fields": ["image", "title", "price", "content"]}	[]	1	2021-08-31 10:28:14.886+07	2021-08-31 10:28:14.91+07
93	plugins::content-manager.explorer.read	application::product.product	{"fields": ["image", "title", "price", "content"]}	[]	1	2021-08-31 10:28:14.886+07	2021-08-31 10:28:14.91+07
94	plugins::content-manager.explorer.update	application::product.product	{"fields": ["image", "title", "price", "content"]}	[]	1	2021-08-31 10:28:14.887+07	2021-08-31 10:28:14.91+07
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-08-07 22:00:15.988+07	2021-08-07 22:00:15.988+07
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-08-07 22:00:16.019+07	2021-08-07 22:00:16.019+07
3	Author	strapi-author	Authors can manage the content they have created.	2021-08-07 22:00:16.036+07	2021-08-07 22:00:16.036+07
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
2	2	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
1	hero_cake_1.jpeg			4001	2667	{"large": {"ext": ".jpeg", "url": "/uploads/large_hero_cake_1_1b1c96c2e8.jpeg", "hash": "large_hero_cake_1_1b1c96c2e8", "mime": "image/jpeg", "name": "large_hero_cake_1.jpeg", "path": null, "size": 169.14, "width": 1000, "height": 667}, "small": {"ext": ".jpeg", "url": "/uploads/small_hero_cake_1_1b1c96c2e8.jpeg", "hash": "small_hero_cake_1_1b1c96c2e8", "mime": "image/jpeg", "name": "small_hero_cake_1.jpeg", "path": null, "size": 54.59, "width": 500, "height": 333}, "medium": {"ext": ".jpeg", "url": "/uploads/medium_hero_cake_1_1b1c96c2e8.jpeg", "hash": "medium_hero_cake_1_1b1c96c2e8", "mime": "image/jpeg", "name": "medium_hero_cake_1.jpeg", "path": null, "size": 110.31, "width": 750, "height": 500}, "thumbnail": {"ext": ".jpeg", "url": "/uploads/thumbnail_hero_cake_1_1b1c96c2e8.jpeg", "hash": "thumbnail_hero_cake_1_1b1c96c2e8", "mime": "image/jpeg", "name": "thumbnail_hero_cake_1.jpeg", "path": null, "size": 18.04, "width": 234, "height": 156}}	hero_cake_1_1b1c96c2e8	.jpeg	image/jpeg	1885.03	/uploads/hero_cake_1_1b1c96c2e8.jpeg	\N	local	\N	2	2	2021-08-31 16:09:26.643+07	2021-08-31 16:09:26.763+07
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
1	1	1	homepages	hero	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
1	content-manager	collection-types	bulkdelete	f		1	\N	\N
2	content-manager	collection-types	bulkdelete	f		2	\N	\N
3	content-manager	collection-types	create	f		1	\N	\N
4	content-manager	collection-types	create	f		2	\N	\N
5	content-manager	collection-types	delete	f		1	\N	\N
6	content-manager	collection-types	delete	f		2	\N	\N
7	content-manager	collection-types	find	f		1	\N	\N
8	content-manager	collection-types	find	f		2	\N	\N
9	content-manager	collection-types	findone	f		1	\N	\N
10	content-manager	collection-types	findone	f		2	\N	\N
11	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
12	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
13	content-manager	collection-types	publish	f		1	\N	\N
14	content-manager	collection-types	publish	f		2	\N	\N
15	content-manager	collection-types	unpublish	f		1	\N	\N
16	content-manager	collection-types	unpublish	f		2	\N	\N
17	content-manager	collection-types	update	f		1	\N	\N
18	content-manager	collection-types	update	f		2	\N	\N
19	content-manager	components	findcomponentconfiguration	f		1	\N	\N
20	content-manager	components	findcomponentconfiguration	f		2	\N	\N
22	content-manager	components	findcomponents	f		2	\N	\N
23	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
24	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
25	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
26	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
27	content-manager	content-types	findcontenttypes	f		1	\N	\N
28	content-manager	content-types	findcontenttypes	f		2	\N	\N
21	content-manager	components	findcomponents	f		1	\N	\N
30	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
29	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
31	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
32	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
33	content-manager	relations	find	f		1	\N	\N
34	content-manager	relations	find	f		2	\N	\N
35	content-manager	single-types	createorupdate	f		1	\N	\N
36	content-manager	single-types	createorupdate	f		2	\N	\N
37	content-manager	single-types	delete	f		2	\N	\N
38	content-manager	single-types	find	f		1	\N	\N
39	content-manager	single-types	find	f		2	\N	\N
40	content-manager	single-types	delete	f		1	\N	\N
41	content-manager	single-types	publish	f		1	\N	\N
42	content-manager	single-types	publish	f		2	\N	\N
43	content-manager	single-types	unpublish	f		1	\N	\N
44	content-manager	single-types	unpublish	f		2	\N	\N
45	content-manager	uid	checkuidavailability	f		1	\N	\N
46	content-manager	uid	checkuidavailability	f		2	\N	\N
47	content-manager	uid	generateuid	f		1	\N	\N
48	content-manager	uid	generateuid	f		2	\N	\N
49	content-type-builder	builder	getreservednames	f		1	\N	\N
50	content-type-builder	builder	getreservednames	f		2	\N	\N
51	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
52	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
53	content-type-builder	componentcategories	editcategory	f		1	\N	\N
55	content-type-builder	components	createcomponent	f		1	\N	\N
54	content-type-builder	componentcategories	editcategory	f		2	\N	\N
56	content-type-builder	components	createcomponent	f		2	\N	\N
57	content-type-builder	components	deletecomponent	f		1	\N	\N
58	content-type-builder	components	deletecomponent	f		2	\N	\N
59	content-type-builder	components	getcomponent	f		1	\N	\N
60	content-type-builder	components	getcomponent	f		2	\N	\N
62	content-type-builder	components	getcomponents	f		2	\N	\N
63	content-type-builder	components	updatecomponent	f		1	\N	\N
64	content-type-builder	components	updatecomponent	f		2	\N	\N
61	content-type-builder	components	getcomponents	f		1	\N	\N
66	content-type-builder	connections	getconnections	f		2	\N	\N
65	content-type-builder	connections	getconnections	f		1	\N	\N
67	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
68	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
69	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
70	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
71	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
72	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
73	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
83	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
81	email	email	test	f		1	\N	\N
88	i18n	locales	createlocale	f		2	\N	\N
92	i18n	locales	listlocales	f		2	\N	\N
95	upload	upload	count	f		1	\N	\N
99	upload	upload	find	f		1	\N	\N
101	upload	upload	findone	f		1	\N	\N
104	upload	upload	getsettings	f		2	\N	\N
105	upload	upload	search	f		1	\N	\N
173	application	homepage	count	f		2	\N	\N
74	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
82	email	email	test	f		2	\N	\N
91	i18n	locales	listlocales	f		1	\N	\N
102	upload	upload	findone	f		2	\N	\N
114	users-permissions	auth	connect	t		2	\N	\N
123	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
132	users-permissions	user	destroyall	f		2	\N	\N
143	users-permissions	userspermissions	deleterole	f		1	\N	\N
152	users-permissions	userspermissions	getpolicies	f		2	\N	\N
162	users-permissions	userspermissions	index	f		2	\N	\N
174	application	homepage	count	f		1	\N	\N
185	application	story	count	f		2	\N	\N
195	application	story	update	f		1	\N	\N
197	application	contact	count	f		2	\N	\N
208	application	contact	update	f		2	\N	\N
219	application	product	update	f		1	\N	\N
221	application	contact	find	t		3	\N	\N
231	application	homepage	update	f		3	\N	\N
241	application	story	count	f		3	\N	\N
251	content-type-builder	components	updatecomponent	f		3	\N	\N
261	content-manager	collection-types	create	f		3	\N	\N
271	content-manager	content-types	findcontenttypes	f		3	\N	\N
281	content-manager	uid	generateuid	f		3	\N	\N
291	users-permissions	user	update	f		3	\N	\N
301	users-permissions	userspermissions	getpolicies	f		3	\N	\N
311	users-permissions	userspermissions	updateadvancedsettings	f		3	\N	\N
321	upload	upload	updatesettings	f		3	\N	\N
209	application	product	count	t		2	\N	\N
75	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
84	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
93	i18n	locales	updatelocale	f		1	\N	\N
106	upload	upload	search	f		2	\N	\N
116	users-permissions	auth	emailconfirmation	t		2	\N	\N
126	users-permissions	user	count	f		2	\N	\N
138	users-permissions	user	me	t		2	\N	\N
148	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
157	users-permissions	userspermissions	getroles	f		1	\N	\N
166	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
175	application	homepage	create	f		1	\N	\N
184	application	homepage	update	f		2	\N	\N
186	application	story	count	f		1	\N	\N
196	application	story	update	f		2	\N	\N
198	application	contact	count	t		1	\N	\N
210	application	product	count	t		1	\N	\N
222	application	contact	findone	f		3	\N	\N
232	application	homepage	delete	f		3	\N	\N
247	content-type-builder	componentcategories	deletecategory	f		3	\N	\N
258	content-type-builder	contenttypes	deletecontenttype	f		3	\N	\N
266	content-manager	collection-types	bulkdelete	f		3	\N	\N
274	content-manager	content-types	updatecontenttypeconfiguration	f		3	\N	\N
285	users-permissions	auth	connect	f		3	\N	\N
296	users-permissions	user	destroyall	f		3	\N	\N
304	users-permissions	userspermissions	getroutes	f		3	\N	\N
313	users-permissions	userspermissions	updateproviders	f		3	\N	\N
324	upload	upload	search	f		3	\N	\N
76	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
85	i18n	iso-locales	listisolocales	f		1	\N	\N
96	upload	upload	count	f		2	\N	\N
107	upload	upload	updatesettings	f		1	\N	\N
120	users-permissions	auth	register	t		2	\N	\N
129	users-permissions	user	destroy	f		1	\N	\N
139	users-permissions	user	update	f		1	\N	\N
149	users-permissions	userspermissions	getpermissions	f		1	\N	\N
159	users-permissions	userspermissions	getroutes	f		1	\N	\N
169	users-permissions	userspermissions	updateproviders	f		1	\N	\N
176	application	homepage	create	f		2	\N	\N
187	application	story	create	f		1	\N	\N
199	application	contact	create	f		1	\N	\N
207	application	contact	update	f		1	\N	\N
211	application	product	create	f		1	\N	\N
223	application	contact	count	f		3	\N	\N
233	application	product	find	t		3	\N	\N
243	application	story	update	f		3	\N	\N
254	content-type-builder	contenttypes	getcontenttypes	f		3	\N	\N
267	content-manager	collection-types	previewmanyrelations	f		3	\N	\N
278	content-manager	single-types	delete	f		3	\N	\N
290	users-permissions	user	create	f		3	\N	\N
297	users-permissions	user	me	f		3	\N	\N
310	users-permissions	userspermissions	getadvancedsettings	f		3	\N	\N
320	upload	upload	destroy	f		3	\N	\N
330	i18n	locales	deletelocale	f		3	\N	\N
77	email	email	getsettings	f		1	\N	\N
86	i18n	iso-locales	listisolocales	f		2	\N	\N
94	i18n	locales	updatelocale	f		2	\N	\N
103	upload	upload	getsettings	f		1	\N	\N
111	users-permissions	auth	callback	f		1	\N	\N
122	users-permissions	auth	resetpassword	t		2	\N	\N
133	users-permissions	user	find	f		1	\N	\N
142	users-permissions	userspermissions	createrole	f		2	\N	\N
153	users-permissions	userspermissions	getproviders	f		1	\N	\N
164	users-permissions	userspermissions	searchusers	f		2	\N	\N
177	application	homepage	delete	f		1	\N	\N
188	application	story	create	f		2	\N	\N
200	application	contact	create	f		2	\N	\N
212	application	product	create	f		2	\N	\N
224	application	contact	create	f		3	\N	\N
237	application	product	update	f		3	\N	\N
242	application	story	create	f		3	\N	\N
252	content-type-builder	components	deletecomponent	f		3	\N	\N
262	content-manager	collection-types	update	f		3	\N	\N
272	content-manager	content-types	findcontenttypessettings	f		3	\N	\N
282	content-manager	uid	checkuidavailability	f		3	\N	\N
292	users-permissions	user	find	f		3	\N	\N
302	users-permissions	userspermissions	getrole	f		3	\N	\N
314	email	email	send	f		3	\N	\N
322	upload	upload	getsettings	f		3	\N	\N
78	email	email	getsettings	f		2	\N	\N
87	i18n	locales	createlocale	f		1	\N	\N
98	upload	upload	destroy	f		2	\N	\N
110	upload	upload	upload	f		2	\N	\N
117	users-permissions	auth	forgotpassword	f		1	\N	\N
127	users-permissions	user	create	f		1	\N	\N
137	users-permissions	user	me	t		1	\N	\N
145	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
155	users-permissions	userspermissions	getrole	f		1	\N	\N
165	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
178	application	homepage	delete	f		2	\N	\N
189	application	story	delete	f		2	\N	\N
201	application	contact	delete	f		1	\N	\N
213	application	product	delete	f		2	\N	\N
225	application	contact	update	f		3	\N	\N
235	application	product	count	t		3	\N	\N
244	application	story	delete	f		3	\N	\N
255	content-type-builder	contenttypes	getcontenttype	f		3	\N	\N
268	content-manager	components	findcomponents	f		3	\N	\N
276	content-manager	single-types	find	f		3	\N	\N
288	users-permissions	auth	emailconfirmation	f		3	\N	\N
298	users-permissions	userspermissions	createrole	f		3	\N	\N
307	users-permissions	userspermissions	updaterole	f		3	\N	\N
319	upload	upload	count	f		3	\N	\N
327	i18n	locales	listlocales	f		3	\N	\N
79	email	email	send	f		1	\N	\N
89	i18n	locales	deletelocale	f		1	\N	\N
100	upload	upload	find	f		2	\N	\N
108	upload	upload	updatesettings	f		2	\N	\N
118	users-permissions	auth	forgotpassword	t		2	\N	\N
128	users-permissions	user	create	f		2	\N	\N
136	users-permissions	user	findone	f		2	\N	\N
146	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
156	users-permissions	userspermissions	getrole	f		2	\N	\N
167	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
181	application	homepage	findone	f		1	\N	\N
190	application	story	delete	f		1	\N	\N
202	application	contact	delete	f		2	\N	\N
214	application	product	delete	f		1	\N	\N
226	application	contact	delete	f		3	\N	\N
240	application	story	findone	f		3	\N	\N
250	content-type-builder	components	createcomponent	f		3	\N	\N
260	content-manager	collection-types	findone	f		3	\N	\N
270	content-manager	components	updatecomponentconfiguration	f		3	\N	\N
279	content-manager	single-types	publish	f		3	\N	\N
289	users-permissions	auth	sendemailconfirmation	f		3	\N	\N
299	users-permissions	userspermissions	deleterole	f		3	\N	\N
309	users-permissions	userspermissions	updateemailtemplate	f		3	\N	\N
316	email	email	getsettings	f		3	\N	\N
326	i18n	iso-locales	listisolocales	f		3	\N	\N
80	email	email	send	f		2	\N	\N
90	i18n	locales	deletelocale	f		2	\N	\N
97	upload	upload	destroy	f		1	\N	\N
109	upload	upload	upload	f		1	\N	\N
119	users-permissions	auth	register	f		1	\N	\N
130	users-permissions	user	destroy	f		2	\N	\N
140	users-permissions	user	update	f		2	\N	\N
150	users-permissions	userspermissions	getpermissions	f		2	\N	\N
160	users-permissions	userspermissions	getroutes	f		2	\N	\N
168	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
179	application	homepage	find	t		2	\N	\N
204	application	contact	find	t		1	\N	\N
215	application	product	find	t		1	\N	\N
191	application	story	find	t		1	\N	\N
227	application	homepage	find	t		3	\N	\N
234	application	product	findone	f		3	\N	\N
245	content-type-builder	builder	getreservednames	f		3	\N	\N
253	content-type-builder	connections	getconnections	f		3	\N	\N
263	content-manager	collection-types	delete	f		3	\N	\N
273	content-manager	content-types	findcontenttypeconfiguration	f		3	\N	\N
283	users-permissions	auth	callback	f		3	\N	\N
294	users-permissions	user	count	f		3	\N	\N
303	users-permissions	userspermissions	getroles	f		3	\N	\N
312	users-permissions	userspermissions	getproviders	f		3	\N	\N
323	upload	upload	upload	f		3	\N	\N
112	users-permissions	auth	callback	t		2	\N	\N
124	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
134	users-permissions	user	find	f		2	\N	\N
147	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
158	users-permissions	userspermissions	getroles	f		2	\N	\N
170	users-permissions	userspermissions	updateproviders	f		2	\N	\N
203	application	contact	find	t		2	\N	\N
180	application	homepage	find	t		1	\N	\N
228	application	homepage	findone	f		3	\N	\N
238	application	product	delete	f		3	\N	\N
249	content-type-builder	components	getcomponent	f		3	\N	\N
259	content-manager	collection-types	find	f		3	\N	\N
269	content-manager	components	findcomponentconfiguration	f		3	\N	\N
280	content-manager	single-types	unpublish	f		3	\N	\N
287	users-permissions	auth	register	f		3	\N	\N
300	users-permissions	userspermissions	getpermissions	f		3	\N	\N
308	users-permissions	userspermissions	getemailtemplate	f		3	\N	\N
318	upload	upload	findone	f		3	\N	\N
328	i18n	locales	createlocale	f		3	\N	\N
216	application	product	find	t		2	\N	\N
192	application	story	find	t		2	\N	\N
113	users-permissions	auth	connect	t		1	\N	\N
121	users-permissions	auth	resetpassword	f		1	\N	\N
131	users-permissions	user	destroyall	f		1	\N	\N
141	users-permissions	userspermissions	createrole	f		1	\N	\N
151	users-permissions	userspermissions	getpolicies	f		1	\N	\N
161	users-permissions	userspermissions	index	f		1	\N	\N
171	users-permissions	userspermissions	updaterole	f		1	\N	\N
182	application	homepage	findone	f		2	\N	\N
193	application	story	findone	f		1	\N	\N
205	application	contact	findone	f		1	\N	\N
217	application	product	findone	f		1	\N	\N
220	application	product	update	f		2	\N	\N
229	application	homepage	count	f		3	\N	\N
236	application	product	create	f		3	\N	\N
246	content-type-builder	componentcategories	editcategory	f		3	\N	\N
257	content-type-builder	contenttypes	updatecontenttype	f		3	\N	\N
265	content-manager	collection-types	unpublish	f		3	\N	\N
275	content-manager	relations	find	f		3	\N	\N
284	users-permissions	auth	resetpassword	f		3	\N	\N
293	users-permissions	user	findone	f		3	\N	\N
306	users-permissions	userspermissions	searchusers	f		3	\N	\N
317	upload	upload	find	f		3	\N	\N
329	i18n	locales	updatelocale	f		3	\N	\N
115	users-permissions	auth	emailconfirmation	f		1	\N	\N
125	users-permissions	user	count	f		1	\N	\N
135	users-permissions	user	findone	f		1	\N	\N
144	users-permissions	userspermissions	deleterole	f		2	\N	\N
154	users-permissions	userspermissions	getproviders	f		2	\N	\N
163	users-permissions	userspermissions	searchusers	f		1	\N	\N
172	users-permissions	userspermissions	updaterole	f		2	\N	\N
183	application	homepage	update	f		1	\N	\N
194	application	story	findone	f		2	\N	\N
206	application	contact	findone	f		2	\N	\N
218	application	product	findone	f		2	\N	\N
230	application	homepage	create	f		3	\N	\N
239	application	story	find	t		3	\N	\N
248	content-type-builder	components	getcomponents	f		3	\N	\N
256	content-type-builder	contenttypes	createcontenttype	f		3	\N	\N
264	content-manager	collection-types	publish	f		3	\N	\N
277	content-manager	single-types	createorupdate	f		3	\N	\N
286	users-permissions	auth	forgotpassword	f		3	\N	\N
295	users-permissions	user	destroy	f		3	\N	\N
305	users-permissions	userspermissions	index	f		3	\N	\N
315	email	email	test	f		3	\N	\N
325	i18n	content-types	getnonlocalizedattributes	f		3	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
3	Reader	For those who have rights to consume the API, but not granted for deleting, updating, and modifying the contents.	reader	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: mycake_admin
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
1	arvin	arvinyustin99@gmail.com	local	$2a$10$jmC4xbiiVzbRP8Oj56//X.uwfDOOI9OoldTHs11TzSTNNGnr/ltcG	\N	\N	t	f	1	1	1	2021-08-30 22:21:53.022+07	2021-08-30 22:21:53.048+07
2	reader	arvin08yustin08@gmail.com	local	$2a$10$LFtljfIz.ESgUz2LcDaPh.6XFYS8YfqUEX0Y1a7Rnwea/zr9r2x7W	\N	\N	t	f	3	2	2	2021-08-31 16:18:01.981+07	2021-08-31 16:18:02.012+07
\.


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.core_store_id_seq', 32, true);


--
-- Name: homepages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.homepages_id_seq', 1, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.products_id_seq', 1, false);


--
-- Name: stories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.stories_id_seq', 1, false);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 3, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 166, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 3, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 1, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 330, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 3, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mycake_admin
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 2, true);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: homepages homepages_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: stories stories_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: mycake_admin
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- PostgreSQL database dump complete
--

