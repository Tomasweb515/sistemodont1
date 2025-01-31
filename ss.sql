PGDMP                     	    |            sistemOdont    15.5    15.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32908    sistemOdont    DATABASE     �   CREATE DATABASE "sistemOdont" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "sistemOdont";
                postgres    false            �            1259    58095    aperturacaja    TABLE     H  CREATE TABLE public.aperturacaja (
    idapertura integer NOT NULL,
    ape_fecha date,
    ape_hora character varying,
    idusuario integer,
    ape_monto integer,
    ape_estado character varying DEFAULT 'abierta'::character varying,
    ape_cierrafecha date,
    ape_horacierre character varying,
    totalcierre integer
);
     DROP TABLE public.aperturacaja;
       public         heap    postgres    false            �            1259    58094    aperturacaja_idapertura_seq    SEQUENCE     �   CREATE SEQUENCE public.aperturacaja_idapertura_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.aperturacaja_idapertura_seq;
       public          postgres    false    249            �           0    0    aperturacaja_idapertura_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.aperturacaja_idapertura_seq OWNED BY public.aperturacaja.idapertura;
          public          postgres    false    248            �            1259    57941 
   arqueocaja    TABLE     �   CREATE TABLE public.arqueocaja (
    idarqueo integer NOT NULL,
    arq_fecha date,
    arq_hora character varying,
    arq_estado character varying
);
    DROP TABLE public.arqueocaja;
       public         heap    postgres    false            �            1259    57940    arqueocaja_idarqueo_seq    SEQUENCE     �   CREATE SEQUENCE public.arqueocaja_idarqueo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.arqueocaja_idarqueo_seq;
       public          postgres    false    239            �           0    0    arqueocaja_idarqueo_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.arqueocaja_idarqueo_seq OWNED BY public.arqueocaja.idarqueo;
          public          postgres    false    238            �            1259    41188    citas    TABLE     �   CREATE TABLE public.citas (
    idcita integer NOT NULL,
    ci_estado character varying,
    idpaciente integer,
    fecharegistro date,
    total integer DEFAULT 0,
    hora character varying,
    ruc character varying,
    hr time with time zone
);
    DROP TABLE public.citas;
       public         heap    postgres    false            �            1259    41187    citas_idcita_seq    SEQUENCE     �   CREATE SEQUENCE public.citas_idcita_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.citas_idcita_seq;
       public          postgres    false    231            �           0    0    citas_idcita_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.citas_idcita_seq OWNED BY public.citas.idcita;
          public          postgres    false    230            �            1259    41113    ciudades    TABLE     b   CREATE TABLE public.ciudades (
    idciudad integer NOT NULL,
    ciu_nombre character varying
);
    DROP TABLE public.ciudades;
       public         heap    postgres    false            �            1259    41112    ciudades_idciudad_seq    SEQUENCE     �   CREATE SEQUENCE public.ciudades_idciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ciudades_idciudad_seq;
       public          postgres    false    217            �           0    0    ciudades_idciudad_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ciudades_idciudad_seq OWNED BY public.ciudades.idciudad;
          public          postgres    false    216            �            1259    57996    cobros    TABLE     �   CREATE TABLE public.cobros (
    idcobro integer NOT NULL,
    co_fecha date,
    co_estado character varying,
    idpaciente integer,
    idapertura integer
);
    DROP TABLE public.cobros;
       public         heap    postgres    false            �            1259    57995    cobros_idcobro_seq    SEQUENCE     �   CREATE SEQUENCE public.cobros_idcobro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cobros_idcobro_seq;
       public          postgres    false    245            �           0    0    cobros_idcobro_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cobros_idcobro_seq OWNED BY public.cobros.idcobro;
          public          postgres    false    244            �            1259    41197 	   consultas    TABLE     A  CREATE TABLE public.consultas (
    idconsulta integer NOT NULL,
    con_tratamiento character varying NOT NULL,
    con_diente character varying NOT NULL,
    con_estado character varying,
    idcita integer,
    idservicio integer,
    diente18 character varying DEFAULT 18,
    diente1 character varying DEFAULT 17
);
    DROP TABLE public.consultas;
       public         heap    postgres    false            �            1259    41196    consultas_idconsulta_seq    SEQUENCE     �   CREATE SEQUENCE public.consultas_idconsulta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.consultas_idconsulta_seq;
       public          postgres    false    233            �           0    0    consultas_idconsulta_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.consultas_idconsulta_seq OWNED BY public.consultas.idconsulta;
          public          postgres    false    232            �            1259    57950    depositocaja    TABLE     �   CREATE TABLE public.depositocaja (
    iddeposito integer NOT NULL,
    de_fecha date,
    de_monto integer,
    idusuario integer,
    idapertura integer
);
     DROP TABLE public.depositocaja;
       public         heap    postgres    false            �            1259    57949    depositocaja_iddeposito_seq    SEQUENCE     �   CREATE SEQUENCE public.depositocaja_iddeposito_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.depositocaja_iddeposito_seq;
       public          postgres    false    241            �           0    0    depositocaja_iddeposito_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.depositocaja_iddeposito_seq OWNED BY public.depositocaja.iddeposito;
          public          postgres    false    240            �            1259    58014    detallearqueo    TABLE     �   CREATE TABLE public.detallearqueo (
    idarqueo integer NOT NULL,
    idapertura integer NOT NULL,
    descripcion character varying,
    monto integer,
    tipo character varying
);
 !   DROP TABLE public.detallearqueo;
       public         heap    postgres    false            �            1259    58034    detalleformacobro    TABLE     �   CREATE TABLE public.detalleformacobro (
    iddetalleforma integer NOT NULL,
    idapertura integer,
    idcobro integer,
    monto integer,
    descripcion character varying
);
 %   DROP TABLE public.detalleformacobro;
       public         heap    postgres    false            �            1259    41145    doctores    TABLE     O  CREATE TABLE public.doctores (
    iddoctor integer NOT NULL,
    doc_nombre character varying NOT NULL,
    doc_apellido character varying NOT NULL,
    doc_telefono character varying NOT NULL,
    doc_matricula character varying,
    doc_titulo character varying,
    idespecialidad integer,
    doc_ci character varying NOT NULL
);
    DROP TABLE public.doctores;
       public         heap    postgres    false            �            1259    41144    doctores_iddoctor_seq    SEQUENCE     �   CREATE SEQUENCE public.doctores_iddoctor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.doctores_iddoctor_seq;
       public          postgres    false    223            �           0    0    doctores_iddoctor_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.doctores_iddoctor_seq OWNED BY public.doctores.iddoctor;
          public          postgres    false    222            �            1259    41156    especialidades    TABLE     w   CREATE TABLE public.especialidades (
    idespecialidad integer NOT NULL,
    esp_nombre character varying NOT NULL
);
 "   DROP TABLE public.especialidades;
       public         heap    postgres    false            �            1259    41155 !   especialidades_idespecialidad_seq    SEQUENCE     �   CREATE SEQUENCE public.especialidades_idespecialidad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.especialidades_idespecialidad_seq;
       public          postgres    false    225            �           0    0 !   especialidades_idespecialidad_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.especialidades_idespecialidad_seq OWNED BY public.especialidades.idespecialidad;
          public          postgres    false    224            �            1259    57977    extraccioncaja    TABLE     �   CREATE TABLE public.extraccioncaja (
    idextraccion integer NOT NULL,
    ex_fecha date,
    ex_hora character varying,
    ex_monto integer,
    idusuario integer,
    idapertura integer
);
 "   DROP TABLE public.extraccioncaja;
       public         heap    postgres    false            �            1259    57976    extraccioncaja_idextraccion_seq    SEQUENCE     �   CREATE SEQUENCE public.extraccioncaja_idextraccion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.extraccioncaja_idextraccion_seq;
       public          postgres    false    243            �           0    0    extraccioncaja_idextraccion_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.extraccioncaja_idextraccion_seq OWNED BY public.extraccioncaja.idextraccion;
          public          postgres    false    242            �            1259    57906    formadepago    TABLE     i   CREATE TABLE public.formadepago (
    idpago integer NOT NULL,
    for_descripciion character varying
);
    DROP TABLE public.formadepago;
       public         heap    postgres    false            �            1259    57905    formadepago_idpago_seq    SEQUENCE     �   CREATE SEQUENCE public.formadepago_idpago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.formadepago_idpago_seq;
       public          postgres    false    237            �           0    0    formadepago_idpago_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.formadepago_idpago_seq OWNED BY public.formadepago.idpago;
          public          postgres    false    236            �            1259    41138    horarios    TABLE     �   CREATE TABLE public.horarios (
    idhorario integer NOT NULL,
    hora_atencion time without time zone NOT NULL,
    iddoctor integer,
    hora_estado character varying
);
    DROP TABLE public.horarios;
       public         heap    postgres    false            �            1259    41137    horarios_idhoarios_seq    SEQUENCE     �   CREATE SEQUENCE public.horarios_idhoarios_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.horarios_idhoarios_seq;
       public          postgres    false    221            �           0    0    horarios_idhoarios_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.horarios_idhoarios_seq OWNED BY public.horarios.idhorario;
          public          postgres    false    220            �            1259    41102 	   pacientes    TABLE       CREATE TABLE public.pacientes (
    idpaciente integer NOT NULL,
    pa_nombre character varying NOT NULL,
    pa_apellido character varying NOT NULL,
    pa_telefono character varying,
    pa_ci character varying NOT NULL,
    pa_correo character varying,
    idciudad integer
);
    DROP TABLE public.pacientes;
       public         heap    postgres    false            �            1259    41101    pacientes_idpaciente_seq    SEQUENCE     �   CREATE SEQUENCE public.pacientes_idpaciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pacientes_idpaciente_seq;
       public          postgres    false    215            �           0    0    pacientes_idpaciente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pacientes_idpaciente_seq OWNED BY public.pacientes.idpaciente;
          public          postgres    false    214            �            1259    41206    pagos    TABLE       CREATE TABLE public.pagos (
    idpagos integer NOT NULL,
    pa_tipo character varying NOT NULL,
    pa_precio integer NOT NULL,
    pa_estado character varying NOT NULL,
    pa_cantidad integer NOT NULL,
    idpaciente integer,
    idservicio integer,
    idusuario integer
);
    DROP TABLE public.pagos;
       public         heap    postgres    false            �            1259    41205    pagos_idpagos_seq    SEQUENCE     �   CREATE SEQUENCE public.pagos_idpagos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pagos_idpagos_seq;
       public          postgres    false    235            �           0    0    pagos_idpagos_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pagos_idpagos_seq OWNED BY public.pagos.idpagos;
          public          postgres    false    234            �            1259    41178 
   personales    TABLE     (  CREATE TABLE public.personales (
    idpersonal integer NOT NULL,
    per_nombre character varying NOT NULL,
    per_apellido character varying NOT NULL,
    per_telefono character varying NOT NULL,
    per_ci character varying NOT NULL,
    per_correo character varying,
    idciudad integer
);
    DROP TABLE public.personales;
       public         heap    postgres    false            �            1259    41177    personales_idpersonal_seq    SEQUENCE     �   CREATE SEQUENCE public.personales_idpersonal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.personales_idpersonal_seq;
       public          postgres    false    229            �           0    0    personales_idpersonal_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.personales_idpersonal_seq OWNED BY public.personales.idpersonal;
          public          postgres    false    228            �            1259    41129 	   servicios    TABLE     �   CREATE TABLE public.servicios (
    idservicio integer NOT NULL,
    ser_nombre character varying NOT NULL,
    ser_precio integer NOT NULL,
    ser_estado character varying,
    iddoctor integer
);
    DROP TABLE public.servicios;
       public         heap    postgres    false            �            1259    41128    servicios_idservicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_idservicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.servicios_idservicio_seq;
       public          postgres    false    219            �           0    0    servicios_idservicio_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.servicios_idservicio_seq OWNED BY public.servicios.idservicio;
          public          postgres    false    218            �            1259    41167    usuario    TABLE       CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    usu_nombre character varying NOT NULL,
    usu_clave character varying NOT NULL,
    usu_estado character varying NOT NULL,
    usu_tipo character varying,
    idpersonal integer,
    usu_profile character varying
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    41166    usuario_idusuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    227            �           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          postgres    false    226            �           2604    58098    aperturacaja idapertura    DEFAULT     �   ALTER TABLE ONLY public.aperturacaja ALTER COLUMN idapertura SET DEFAULT nextval('public.aperturacaja_idapertura_seq'::regclass);
 F   ALTER TABLE public.aperturacaja ALTER COLUMN idapertura DROP DEFAULT;
       public          postgres    false    248    249    249            �           2604    57944    arqueocaja idarqueo    DEFAULT     z   ALTER TABLE ONLY public.arqueocaja ALTER COLUMN idarqueo SET DEFAULT nextval('public.arqueocaja_idarqueo_seq'::regclass);
 B   ALTER TABLE public.arqueocaja ALTER COLUMN idarqueo DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    41191    citas idcita    DEFAULT     l   ALTER TABLE ONLY public.citas ALTER COLUMN idcita SET DEFAULT nextval('public.citas_idcita_seq'::regclass);
 ;   ALTER TABLE public.citas ALTER COLUMN idcita DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    41116    ciudades idciudad    DEFAULT     v   ALTER TABLE ONLY public.ciudades ALTER COLUMN idciudad SET DEFAULT nextval('public.ciudades_idciudad_seq'::regclass);
 @   ALTER TABLE public.ciudades ALTER COLUMN idciudad DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    57999    cobros idcobro    DEFAULT     p   ALTER TABLE ONLY public.cobros ALTER COLUMN idcobro SET DEFAULT nextval('public.cobros_idcobro_seq'::regclass);
 =   ALTER TABLE public.cobros ALTER COLUMN idcobro DROP DEFAULT;
       public          postgres    false    244    245    245            �           2604    41200    consultas idconsulta    DEFAULT     |   ALTER TABLE ONLY public.consultas ALTER COLUMN idconsulta SET DEFAULT nextval('public.consultas_idconsulta_seq'::regclass);
 C   ALTER TABLE public.consultas ALTER COLUMN idconsulta DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    57953    depositocaja iddeposito    DEFAULT     �   ALTER TABLE ONLY public.depositocaja ALTER COLUMN iddeposito SET DEFAULT nextval('public.depositocaja_iddeposito_seq'::regclass);
 F   ALTER TABLE public.depositocaja ALTER COLUMN iddeposito DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    41148    doctores iddoctor    DEFAULT     v   ALTER TABLE ONLY public.doctores ALTER COLUMN iddoctor SET DEFAULT nextval('public.doctores_iddoctor_seq'::regclass);
 @   ALTER TABLE public.doctores ALTER COLUMN iddoctor DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    41159    especialidades idespecialidad    DEFAULT     �   ALTER TABLE ONLY public.especialidades ALTER COLUMN idespecialidad SET DEFAULT nextval('public.especialidades_idespecialidad_seq'::regclass);
 L   ALTER TABLE public.especialidades ALTER COLUMN idespecialidad DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    57980    extraccioncaja idextraccion    DEFAULT     �   ALTER TABLE ONLY public.extraccioncaja ALTER COLUMN idextraccion SET DEFAULT nextval('public.extraccioncaja_idextraccion_seq'::regclass);
 J   ALTER TABLE public.extraccioncaja ALTER COLUMN idextraccion DROP DEFAULT;
       public          postgres    false    243    242    243            �           2604    57909    formadepago idpago    DEFAULT     x   ALTER TABLE ONLY public.formadepago ALTER COLUMN idpago SET DEFAULT nextval('public.formadepago_idpago_seq'::regclass);
 A   ALTER TABLE public.formadepago ALTER COLUMN idpago DROP DEFAULT;
       public          postgres    false    237    236    237            �           2604    41141    horarios idhorario    DEFAULT     x   ALTER TABLE ONLY public.horarios ALTER COLUMN idhorario SET DEFAULT nextval('public.horarios_idhoarios_seq'::regclass);
 A   ALTER TABLE public.horarios ALTER COLUMN idhorario DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    41105    pacientes idpaciente    DEFAULT     |   ALTER TABLE ONLY public.pacientes ALTER COLUMN idpaciente SET DEFAULT nextval('public.pacientes_idpaciente_seq'::regclass);
 C   ALTER TABLE public.pacientes ALTER COLUMN idpaciente DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    41209    pagos idpagos    DEFAULT     n   ALTER TABLE ONLY public.pagos ALTER COLUMN idpagos SET DEFAULT nextval('public.pagos_idpagos_seq'::regclass);
 <   ALTER TABLE public.pagos ALTER COLUMN idpagos DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    41181    personales idpersonal    DEFAULT     ~   ALTER TABLE ONLY public.personales ALTER COLUMN idpersonal SET DEFAULT nextval('public.personales_idpersonal_seq'::regclass);
 D   ALTER TABLE public.personales ALTER COLUMN idpersonal DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    41132    servicios idservicio    DEFAULT     |   ALTER TABLE ONLY public.servicios ALTER COLUMN idservicio SET DEFAULT nextval('public.servicios_idservicio_seq'::regclass);
 C   ALTER TABLE public.servicios ALTER COLUMN idservicio DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    41170    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    226    227    227            �          0    58095    aperturacaja 
   TABLE DATA           �   COPY public.aperturacaja (idapertura, ape_fecha, ape_hora, idusuario, ape_monto, ape_estado, ape_cierrafecha, ape_horacierre, totalcierre) FROM stdin;
    public          postgres    false    249   1�       �          0    57941 
   arqueocaja 
   TABLE DATA           O   COPY public.arqueocaja (idarqueo, arq_fecha, arq_hora, arq_estado) FROM stdin;
    public          postgres    false    239   ��       �          0    41188    citas 
   TABLE DATA           c   COPY public.citas (idcita, ci_estado, idpaciente, fecharegistro, total, hora, ruc, hr) FROM stdin;
    public          postgres    false    231   ��       �          0    41113    ciudades 
   TABLE DATA           8   COPY public.ciudades (idciudad, ciu_nombre) FROM stdin;
    public          postgres    false    217   ��       �          0    57996    cobros 
   TABLE DATA           V   COPY public.cobros (idcobro, co_fecha, co_estado, idpaciente, idapertura) FROM stdin;
    public          postgres    false    245   w�       �          0    41197 	   consultas 
   TABLE DATA              COPY public.consultas (idconsulta, con_tratamiento, con_diente, con_estado, idcita, idservicio, diente18, diente1) FROM stdin;
    public          postgres    false    233   ��       �          0    57950    depositocaja 
   TABLE DATA           ]   COPY public.depositocaja (iddeposito, de_fecha, de_monto, idusuario, idapertura) FROM stdin;
    public          postgres    false    241   ��       �          0    58014    detallearqueo 
   TABLE DATA           W   COPY public.detallearqueo (idarqueo, idapertura, descripcion, monto, tipo) FROM stdin;
    public          postgres    false    246   �       �          0    58034    detalleformacobro 
   TABLE DATA           d   COPY public.detalleformacobro (iddetalleforma, idapertura, idcobro, monto, descripcion) FROM stdin;
    public          postgres    false    247   6�       �          0    41145    doctores 
   TABLE DATA           �   COPY public.doctores (iddoctor, doc_nombre, doc_apellido, doc_telefono, doc_matricula, doc_titulo, idespecialidad, doc_ci) FROM stdin;
    public          postgres    false    223   S�       �          0    41156    especialidades 
   TABLE DATA           D   COPY public.especialidades (idespecialidad, esp_nombre) FROM stdin;
    public          postgres    false    225   ��       �          0    57977    extraccioncaja 
   TABLE DATA           j   COPY public.extraccioncaja (idextraccion, ex_fecha, ex_hora, ex_monto, idusuario, idapertura) FROM stdin;
    public          postgres    false    243   9�       �          0    57906    formadepago 
   TABLE DATA           ?   COPY public.formadepago (idpago, for_descripciion) FROM stdin;
    public          postgres    false    237   V�       �          0    41138    horarios 
   TABLE DATA           S   COPY public.horarios (idhorario, hora_atencion, iddoctor, hora_estado) FROM stdin;
    public          postgres    false    221   s�       �          0    41102 	   pacientes 
   TABLE DATA           p   COPY public.pacientes (idpaciente, pa_nombre, pa_apellido, pa_telefono, pa_ci, pa_correo, idciudad) FROM stdin;
    public          postgres    false    215   ��       �          0    41206    pagos 
   TABLE DATA           w   COPY public.pagos (idpagos, pa_tipo, pa_precio, pa_estado, pa_cantidad, idpaciente, idservicio, idusuario) FROM stdin;
    public          postgres    false    235   ��       �          0    41178 
   personales 
   TABLE DATA           v   COPY public.personales (idpersonal, per_nombre, per_apellido, per_telefono, per_ci, per_correo, idciudad) FROM stdin;
    public          postgres    false    229   ��       �          0    41129 	   servicios 
   TABLE DATA           ]   COPY public.servicios (idservicio, ser_nombre, ser_precio, ser_estado, iddoctor) FROM stdin;
    public          postgres    false    219   }�       �          0    41167    usuario 
   TABLE DATA           r   COPY public.usuario (idusuario, usu_nombre, usu_clave, usu_estado, usu_tipo, idpersonal, usu_profile) FROM stdin;
    public          postgres    false    227   ��       �           0    0    aperturacaja_idapertura_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.aperturacaja_idapertura_seq', 7, true);
          public          postgres    false    248            �           0    0    arqueocaja_idarqueo_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.arqueocaja_idarqueo_seq', 1, false);
          public          postgres    false    238            �           0    0    citas_idcita_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.citas_idcita_seq', 56, true);
          public          postgres    false    230            �           0    0    ciudades_idciudad_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ciudades_idciudad_seq', 47, true);
          public          postgres    false    216            �           0    0    cobros_idcobro_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cobros_idcobro_seq', 1, false);
          public          postgres    false    244            �           0    0    consultas_idconsulta_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.consultas_idconsulta_seq', 112, true);
          public          postgres    false    232            �           0    0    depositocaja_iddeposito_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.depositocaja_iddeposito_seq', 1, false);
          public          postgres    false    240            �           0    0    doctores_iddoctor_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.doctores_iddoctor_seq', 17, true);
          public          postgres    false    222            �           0    0 !   especialidades_idespecialidad_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.especialidades_idespecialidad_seq', 11, true);
          public          postgres    false    224            �           0    0    extraccioncaja_idextraccion_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.extraccioncaja_idextraccion_seq', 1, false);
          public          postgres    false    242            �           0    0    formadepago_idpago_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.formadepago_idpago_seq', 1, false);
          public          postgres    false    236            �           0    0    horarios_idhoarios_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.horarios_idhoarios_seq', 9, true);
          public          postgres    false    220            �           0    0    pacientes_idpaciente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.pacientes_idpaciente_seq', 32, true);
          public          postgres    false    214            �           0    0    pagos_idpagos_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pagos_idpagos_seq', 1, false);
          public          postgres    false    234            �           0    0    personales_idpersonal_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.personales_idpersonal_seq', 7, true);
          public          postgres    false    228            �           0    0    servicios_idservicio_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.servicios_idservicio_seq', 7, true);
          public          postgres    false    218            �           0    0    usuario_idusuario_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 31, true);
          public          postgres    false    226            �           2606    58103    aperturacaja aperturacaja_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.aperturacaja
    ADD CONSTRAINT aperturacaja_pkey PRIMARY KEY (idapertura);
 H   ALTER TABLE ONLY public.aperturacaja DROP CONSTRAINT aperturacaja_pkey;
       public            postgres    false    249            �           2606    57948    arqueocaja arqueocaja_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.arqueocaja
    ADD CONSTRAINT arqueocaja_pkey PRIMARY KEY (idarqueo);
 D   ALTER TABLE ONLY public.arqueocaja DROP CONSTRAINT arqueocaja_pkey;
       public            postgres    false    239            �           2606    41195    citas citas_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.citas
    ADD CONSTRAINT citas_pkey PRIMARY KEY (idcita);
 :   ALTER TABLE ONLY public.citas DROP CONSTRAINT citas_pkey;
       public            postgres    false    231            �           2606    41122 ,   ciudades ciudades_ciu_nombre_ciu_nombre1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_ciu_nombre_ciu_nombre1_key UNIQUE (ciu_nombre) INCLUDE (ciu_nombre);
 V   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT ciudades_ciu_nombre_ciu_nombre1_key;
       public            postgres    false    217            �           2606    41120    ciudades ciudades_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_pkey PRIMARY KEY (idciudad);
 @   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT ciudades_pkey;
       public            postgres    false    217            �           2606    58003    cobros cobros_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.cobros
    ADD CONSTRAINT cobros_pkey PRIMARY KEY (idcobro);
 <   ALTER TABLE ONLY public.cobros DROP CONSTRAINT cobros_pkey;
       public            postgres    false    245            �           2606    41204    consultas consultas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_pkey PRIMARY KEY (idconsulta);
 B   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_pkey;
       public            postgres    false    233            �           2606    57955    depositocaja depositocaja_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.depositocaja
    ADD CONSTRAINT depositocaja_pkey PRIMARY KEY (iddeposito);
 H   ALTER TABLE ONLY public.depositocaja DROP CONSTRAINT depositocaja_pkey;
       public            postgres    false    241            �           2606    58040 (   detalleformacobro detalleformacobro_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.detalleformacobro
    ADD CONSTRAINT detalleformacobro_pkey PRIMARY KEY (iddetalleforma);
 R   ALTER TABLE ONLY public.detalleformacobro DROP CONSTRAINT detalleformacobro_pkey;
       public            postgres    false    247            �           2606    41154 $   doctores doctores_doc_ci_doc_ci1_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.doctores
    ADD CONSTRAINT doctores_doc_ci_doc_ci1_key UNIQUE (doc_ci) INCLUDE (doc_ci);
 N   ALTER TABLE ONLY public.doctores DROP CONSTRAINT doctores_doc_ci_doc_ci1_key;
       public            postgres    false    223            �           2606    41152 0   doctores doctores_doc_telefono_doc_telefono1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.doctores
    ADD CONSTRAINT doctores_doc_telefono_doc_telefono1_key UNIQUE (doc_telefono) INCLUDE (doc_telefono);
 Z   ALTER TABLE ONLY public.doctores DROP CONSTRAINT doctores_doc_telefono_doc_telefono1_key;
       public            postgres    false    223            �           2606    41261    doctores doctores_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.doctores
    ADD CONSTRAINT doctores_pkey PRIMARY KEY (iddoctor);
 @   ALTER TABLE ONLY public.doctores DROP CONSTRAINT doctores_pkey;
       public            postgres    false    223            �           2606    41165 8   especialidades especialidades_esp_nombre_esp_nombre1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_esp_nombre_esp_nombre1_key UNIQUE (esp_nombre) INCLUDE (esp_nombre);
 b   ALTER TABLE ONLY public.especialidades DROP CONSTRAINT especialidades_esp_nombre_esp_nombre1_key;
       public            postgres    false    225            �           2606    41163 "   especialidades especialidades_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.especialidades
    ADD CONSTRAINT especialidades_pkey PRIMARY KEY (idespecialidad);
 L   ALTER TABLE ONLY public.especialidades DROP CONSTRAINT especialidades_pkey;
       public            postgres    false    225            �           2606    57984 "   extraccioncaja extraccioncaja_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.extraccioncaja
    ADD CONSTRAINT extraccioncaja_pkey PRIMARY KEY (idextraccion);
 L   ALTER TABLE ONLY public.extraccioncaja DROP CONSTRAINT extraccioncaja_pkey;
       public            postgres    false    243            �           2606    41143    horarios horarios_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_pkey PRIMARY KEY (idhorario);
 @   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_pkey;
       public            postgres    false    221            �           2606    41111 $   pacientes pacientes_pa_ci_pa_ci1_key 
   CONSTRAINT     p   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pa_ci_pa_ci1_key UNIQUE (pa_ci) INCLUDE (pa_ci);
 N   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pa_ci_pa_ci1_key;
       public            postgres    false    215            �           2606    41109    pacientes pacientes_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (idpaciente);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public            postgres    false    215            �           2606    41213    pagos pagos_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (idpagos);
 :   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_pkey;
       public            postgres    false    235            �           2606    41185    personales personales_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.personales
    ADD CONSTRAINT personales_pkey PRIMARY KEY (idpersonal);
 D   ALTER TABLE ONLY public.personales DROP CONSTRAINT personales_pkey;
       public            postgres    false    229            �           2606    41136    servicios servicios_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (idservicio);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public            postgres    false    219            �           2606    41174    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    227            �           2606    41176    usuario usuario_usu_nombre_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_usu_nombre_key UNIQUE (usu_nombre);
 H   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_usu_nombre_key;
       public            postgres    false    227                       2606    58104 (   aperturacaja aperturacaja_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.aperturacaja
    ADD CONSTRAINT aperturacaja_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 R   ALTER TABLE ONLY public.aperturacaja DROP CONSTRAINT aperturacaja_idusuario_fkey;
       public          postgres    false    249    3305    227                       2606    41245    citas citas_idpaciente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.citas
    ADD CONSTRAINT citas_idpaciente_fkey FOREIGN KEY (idpaciente) REFERENCES public.pacientes(idpaciente) NOT VALID;
 E   ALTER TABLE ONLY public.citas DROP CONSTRAINT citas_idpaciente_fkey;
       public          postgres    false    231    3285    215                       2606    58124    cobros cobros_idapertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cobros
    ADD CONSTRAINT cobros_idapertura_fkey FOREIGN KEY (idapertura) REFERENCES public.aperturacaja(idapertura) NOT VALID;
 G   ALTER TABLE ONLY public.cobros DROP CONSTRAINT cobros_idapertura_fkey;
       public          postgres    false    249    3327    245                       2606    58004    cobros cobros_idpaciente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cobros
    ADD CONSTRAINT cobros_idpaciente_fkey FOREIGN KEY (idpaciente) REFERENCES public.pacientes(idpaciente);
 G   ALTER TABLE ONLY public.cobros DROP CONSTRAINT cobros_idpaciente_fkey;
       public          postgres    false    215    245    3285                       2606    41519    consultas consultas_idcita_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_idcita_fkey FOREIGN KEY (idcita) REFERENCES public.citas(idcita) NOT VALID;
 I   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_idcita_fkey;
       public          postgres    false    233    231    3311                       2606    41524 #   consultas consultas_idservicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.consultas
    ADD CONSTRAINT consultas_idservicio_fkey FOREIGN KEY (idservicio) REFERENCES public.servicios(idservicio) NOT VALID;
 M   ALTER TABLE ONLY public.consultas DROP CONSTRAINT consultas_idservicio_fkey;
       public          postgres    false    219    3291    233                       2606    58109 )   depositocaja depositocaja_idapertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.depositocaja
    ADD CONSTRAINT depositocaja_idapertura_fkey FOREIGN KEY (idapertura) REFERENCES public.aperturacaja(idapertura) NOT VALID;
 S   ALTER TABLE ONLY public.depositocaja DROP CONSTRAINT depositocaja_idapertura_fkey;
       public          postgres    false    241    249    3327                       2606    57956 (   depositocaja depositocaja_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.depositocaja
    ADD CONSTRAINT depositocaja_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 R   ALTER TABLE ONLY public.depositocaja DROP CONSTRAINT depositocaja_idusuario_fkey;
       public          postgres    false    241    3305    227                       2606    58114 +   detallearqueo detallearqueo_idapertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallearqueo
    ADD CONSTRAINT detallearqueo_idapertura_fkey FOREIGN KEY (idapertura) REFERENCES public.aperturacaja(idapertura) NOT VALID;
 U   ALTER TABLE ONLY public.detallearqueo DROP CONSTRAINT detallearqueo_idapertura_fkey;
       public          postgres    false    249    246    3327                       2606    58019 )   detallearqueo detallearqueo_idarqueo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detallearqueo
    ADD CONSTRAINT detallearqueo_idarqueo_fkey FOREIGN KEY (idarqueo) REFERENCES public.arqueocaja(idarqueo);
 S   ALTER TABLE ONLY public.detallearqueo DROP CONSTRAINT detallearqueo_idarqueo_fkey;
       public          postgres    false    239    3317    246                       2606    58046 0   detalleformacobro detalleformacobro_idcobro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalleformacobro
    ADD CONSTRAINT detalleformacobro_idcobro_fkey FOREIGN KEY (idcobro) REFERENCES public.cobros(idcobro);
 Z   ALTER TABLE ONLY public.detalleformacobro DROP CONSTRAINT detalleformacobro_idcobro_fkey;
       public          postgres    false    245    3323    247                       2606    41262 %   doctores doctores_idespecialidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.doctores
    ADD CONSTRAINT doctores_idespecialidad_fkey FOREIGN KEY (idespecialidad) REFERENCES public.especialidades(idespecialidad) NOT VALID;
 O   ALTER TABLE ONLY public.doctores DROP CONSTRAINT doctores_idespecialidad_fkey;
       public          postgres    false    225    223    3303                       2606    58119 -   extraccioncaja extraccioncaja_idapertura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.extraccioncaja
    ADD CONSTRAINT extraccioncaja_idapertura_fkey FOREIGN KEY (idapertura) REFERENCES public.aperturacaja(idapertura) NOT VALID;
 W   ALTER TABLE ONLY public.extraccioncaja DROP CONSTRAINT extraccioncaja_idapertura_fkey;
       public          postgres    false    243    3327    249                       2606    57985 ,   extraccioncaja extraccioncaja_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.extraccioncaja
    ADD CONSTRAINT extraccioncaja_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 V   ALTER TABLE ONLY public.extraccioncaja DROP CONSTRAINT extraccioncaja_idusuario_fkey;
       public          postgres    false    243    227    3305                       2606    41267    horarios horarios_iddoctor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.horarios
    ADD CONSTRAINT horarios_iddoctor_fkey FOREIGN KEY (iddoctor) REFERENCES public.doctores(iddoctor) NOT VALID;
 I   ALTER TABLE ONLY public.horarios DROP CONSTRAINT horarios_iddoctor_fkey;
       public          postgres    false    3299    223    221                        2606    41123 !   pacientes pacientes_idciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_idciudad_fkey FOREIGN KEY (idciudad) REFERENCES public.ciudades(idciudad) NOT VALID;
 K   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_idciudad_fkey;
       public          postgres    false    217    3289    215            	           2606    41214    pagos pagos_idpaciente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_idpaciente_fkey FOREIGN KEY (idpaciente) REFERENCES public.pacientes(idpaciente);
 E   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_idpaciente_fkey;
       public          postgres    false    215    235    3285            
           2606    41219    pagos pagos_idservicio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_idservicio_fkey FOREIGN KEY (idservicio) REFERENCES public.servicios(idservicio);
 E   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_idservicio_fkey;
       public          postgres    false    3291    235    219                       2606    41224    pagos pagos_idusuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pagos
    ADD CONSTRAINT pagos_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario);
 D   ALTER TABLE ONLY public.pagos DROP CONSTRAINT pagos_idusuario_fkey;
       public          postgres    false    3305    235    227                       2606    41272 #   personales personales_idciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.personales
    ADD CONSTRAINT personales_idciudad_fkey FOREIGN KEY (idciudad) REFERENCES public.ciudades(idciudad) NOT VALID;
 M   ALTER TABLE ONLY public.personales DROP CONSTRAINT personales_idciudad_fkey;
       public          postgres    false    217    3289    229                       2606    41277 !   servicios servicios_iddoctor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_iddoctor_fkey FOREIGN KEY (iddoctor) REFERENCES public.doctores(iddoctor) NOT VALID;
 K   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_iddoctor_fkey;
       public          postgres    false    223    3299    219                       2606    41282    usuario usuario_idpersonal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_idpersonal_fkey FOREIGN KEY (idpersonal) REFERENCES public.personales(idpersonal) NOT VALID;
 I   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_idpersonal_fkey;
       public          postgres    false    3309    227    229            �   e   x���;
�@��:���䵮9��X�z�B�Y���c��S1����I в����*)H?����a5 �G�)U?uX�]��(����[����y`��0R�      �      x������ � �      �   �  x�}���1EkͿL���] e���Ⱥ0��4I�_΃�&�X�:�"y)2���ߏ��o��HfH3��r�ٽ��=��~ޗ��}�sw�<��K�t���*��[:N�C�vhq&��������<D6a��� 쟺g����v[~��+�^��� >��f���Q�Q�	�J1t�	j��+Fv(ŋ����ÚXL���1Sw?�}O��8��уF�_�1 �N�\~�M�Z�N�G��"�JZ��=@�Bv5�Ť �ֶF�Y�
�f
�Qm�ί	_�X�d�92�8�b4�X�^�t�]Q*���i���
���
_$s��k:s����'g����x8�ύ�j�JZ_�6T�p	MV��k�V�?��g�tXp�+�sA�菣��Jx]����MUR04�<�c�G/0�=�c�A*P}7̟@h���e��4�Z�      �   �   x�EOAR�0<��/`�q�3����"HҤMlH���7�1l
�v$�4���`�`���#�������𢯓&e��_��.��7��%��_��������eW�).�Q*�����"a�gJ����]��D9bh�\�)�"�Z���5լ�ӿm��{�#�q4��=���;�K��4�lt�M��x���!�D�K[W������} ��L�      �      x������ � �      �   X  x���Mr�0���9Aǿ�}�.��4�2CJ&C���+h�l�%|�IO��m.��Z�@:�v�C+{�R4HOt��D�?"��<��S�)�" }d�<�`-|��6����@�	�����̴ƄE�И;]>k��G�Fl�r��������T�������&�Neگ��6�ks�)��Gق�+�Z�{0�~Z�z�Ʈ-gqH�γ�Ғg��k4�c%4.)�*�
�N� '�`֑t��&�� D���2D����k2��<M�ai�1lX���&��&>F4��3��TmR3L�h���p��n���2d���$4lQ)��,�|B٫6��KQ��G1      �      x������ � �      �      x������ � �      �      x������ � �      �   Y   x�34�,��M,�LJ��,I��4�47316"NS3��lNCά,.CsN������d0�idlT�ff�������&�F ]\1z\\\ S��      �   m   x�3�H,���O?�6Q!�(�˔3�(��$?%?/93�ː3���(1993?ϐ���e̙�YT����� @�9\����\��%���\���\���.���
)@�+F��� ��"�      �      x������ � �      �      x������ � �      �   Q   x�3�44�21�20�3��411�9��9��M�8�9�K2��,8��,���y�aKN#+C��Lm� �|      �   �   x�����0�����n0n��^�!9�ɧ�c#�$�]����K��4�Oh��0�/��"�LR�������~�M#�B�#���c�C}���â��Ǌ�c!@�9C�P8�D�a�:�fydn�����=�f�;��Vn��ʔE �㕃-s+�~ٜ%v$"�(�9� \�q
M>Q
4�/�\���I)�i���      �      x������ � �      �   �   x�m��� Eח�1�2ݹ����J$"�����b�Z��pa���P�MLE��k&0�C�K�Ƹ�������ӽ����1E(%�l~(4q���F�184�06�1E7H&�v�:\�	����ƒ�WiPF��)XS�
H!Q*�5�N��m	]����~#��TW�      �   ]   x�3���ⴰ ��f\&����9���y%�E������\�Y�Rbʙ��[��Z��EҌ3���(1993?��9gJj.�ej pqs�=... Fa$�      �   j  x���MK�0���_��d�y��AD����).�ؕE�I#xNS�2̓�I��W7��7w�O��3��V�/��ݤ ,m�.볥�ò@��֣!�g�I�9Za��蓍����ڸ��u���\v�B�E��Ye8/�	��HGZ#QuAP� 8v5x�έ�n��v[H��b0J�,EƣF��#�$`[Ǻ����tUN���FF�2�tNF$RT��0W�6}-�ߐ]� \�"������d���A�"��]!���]E;!'��Ǡ}��hS��U���RC֬���~���8Ȩ�vdtcF!Ӡ�A�6�s ���Oҭ�C���Ũ�����w�<]�[��r9�ۏyz�����b�     