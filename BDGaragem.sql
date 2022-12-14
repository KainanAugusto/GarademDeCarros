PGDMP                     
    z            garagem %   12.12 (Ubuntu 12.12-0ubuntu0.20.04.1) %   12.12 (Ubuntu 12.12-0ubuntu0.20.04.1) 0    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    17105    garagem    DATABASE     y   CREATE DATABASE garagem WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'pt_BR.UTF-8' LC_CTYPE = 'pt_BR.UTF-8';
    DROP DATABASE garagem;
                postgres    false            ?            1259    17167    aluguel    TABLE       CREATE TABLE public.aluguel (
    idaluguel integer NOT NULL,
    dtaaluguel character varying(20) NOT NULL,
    motivoaluguel character varying(20),
    dtadevolucao character varying(20),
    solicitacao integer,
    idcli integer,
    idcarro integer,
    idfunc integer
);
    DROP TABLE public.aluguel;
       public         heap    postgres    false            ?            1259    17165    aluguel_idaluguel_seq    SEQUENCE     ?   CREATE SEQUENCE public.aluguel_idaluguel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.aluguel_idaluguel_seq;
       public          postgres    false    212            ?           0    0    aluguel_idaluguel_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.aluguel_idaluguel_seq OWNED BY public.aluguel.idaluguel;
          public          postgres    false    211            ?            1259    17108    carro    TABLE       CREATE TABLE public.carro (
    idcarro integer NOT NULL,
    placa character varying(20),
    chassi character varying(20),
    ano integer,
    modelo character varying(50),
    montadora character varying(50),
    ultimoaluguel character varying(20),
    disponivel integer
);
    DROP TABLE public.carro;
       public         heap    postgres    false            ?            1259    17106    carro_idcarro_seq    SEQUENCE     ?   CREATE SEQUENCE public.carro_idcarro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.carro_idcarro_seq;
       public          postgres    false    203            ?           0    0    carro_idcarro_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.carro_idcarro_seq OWNED BY public.carro.idcarro;
          public          postgres    false    202            ?            1259    17116    cliente    TABLE     ?   CREATE TABLE public.cliente (
    idcli integer NOT NULL,
    nomecli character varying(50),
    numcnh character varying(20),
    rua character varying(50),
    num integer,
    cep character varying(20),
    cidade character varying(50)
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?            1259    17114    cliente_idcli_seq    SEQUENCE     ?   CREATE SEQUENCE public.cliente_idcli_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.cliente_idcli_seq;
       public          postgres    false    205            ?           0    0    cliente_idcli_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.cliente_idcli_seq OWNED BY public.cliente.idcli;
          public          postgres    false    204            ?            1259    17122    contatocliente    TABLE     r   CREATE TABLE public.contatocliente (
    idcli integer NOT NULL,
    contatocli character varying(20) NOT NULL
);
 "   DROP TABLE public.contatocliente;
       public         heap    postgres    false            ?            1259    17140    contatofunc    TABLE     q   CREATE TABLE public.contatofunc (
    idfunc integer NOT NULL,
    contatofunc character varying(20) NOT NULL
);
    DROP TABLE public.contatofunc;
       public         heap    postgres    false            ?            1259    17134    funcionario    TABLE     x  CREATE TABLE public.funcionario (
    idfunc integer NOT NULL,
    nomefunc character varying(50),
    departamento character varying(20),
    ramal integer,
    turno character varying(20),
    cidade character varying(50),
    rua character varying(50),
    num integer,
    cep character varying(20),
    usuario character varying(255),
    senha character varying(255)
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            ?            1259    17132    funcionario_idfunc_seq    SEQUENCE     ?   CREATE SEQUENCE public.funcionario_idfunc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.funcionario_idfunc_seq;
       public          postgres    false    208            ?           0    0    funcionario_idfunc_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.funcionario_idfunc_seq OWNED BY public.funcionario.idfunc;
          public          postgres    false    207            ?            1259    17150    funcionariogerenciacarro    TABLE     l   CREATE TABLE public.funcionariogerenciacarro (
    idfunc integer NOT NULL,
    idcarro integer NOT NULL
);
 ,   DROP TABLE public.funcionariogerenciacarro;
       public         heap    postgres    false            4           2604    17170    aluguel idaluguel    DEFAULT     v   ALTER TABLE ONLY public.aluguel ALTER COLUMN idaluguel SET DEFAULT nextval('public.aluguel_idaluguel_seq'::regclass);
 @   ALTER TABLE public.aluguel ALTER COLUMN idaluguel DROP DEFAULT;
       public          postgres    false    211    212    212            1           2604    17111    carro idcarro    DEFAULT     n   ALTER TABLE ONLY public.carro ALTER COLUMN idcarro SET DEFAULT nextval('public.carro_idcarro_seq'::regclass);
 <   ALTER TABLE public.carro ALTER COLUMN idcarro DROP DEFAULT;
       public          postgres    false    203    202    203            2           2604    17119    cliente idcli    DEFAULT     n   ALTER TABLE ONLY public.cliente ALTER COLUMN idcli SET DEFAULT nextval('public.cliente_idcli_seq'::regclass);
 <   ALTER TABLE public.cliente ALTER COLUMN idcli DROP DEFAULT;
       public          postgres    false    205    204    205            3           2604    17137    funcionario idfunc    DEFAULT     x   ALTER TABLE ONLY public.funcionario ALTER COLUMN idfunc SET DEFAULT nextval('public.funcionario_idfunc_seq'::regclass);
 A   ALTER TABLE public.funcionario ALTER COLUMN idfunc DROP DEFAULT;
       public          postgres    false    207    208    208            ?          0    17167    aluguel 
   TABLE DATA           z   COPY public.aluguel (idaluguel, dtaaluguel, motivoaluguel, dtadevolucao, solicitacao, idcli, idcarro, idfunc) FROM stdin;
    public          postgres    false    212   ?:       ?          0    17108    carro 
   TABLE DATA           j   COPY public.carro (idcarro, placa, chassi, ano, modelo, montadora, ultimoaluguel, disponivel) FROM stdin;
    public          postgres    false    203   ?:       ?          0    17116    cliente 
   TABLE DATA           P   COPY public.cliente (idcli, nomecli, numcnh, rua, num, cep, cidade) FROM stdin;
    public          postgres    false    205   ?;       ?          0    17122    contatocliente 
   TABLE DATA           ;   COPY public.contatocliente (idcli, contatocli) FROM stdin;
    public          postgres    false    206   ?<       ?          0    17140    contatofunc 
   TABLE DATA           :   COPY public.contatofunc (idfunc, contatofunc) FROM stdin;
    public          postgres    false    209   ?<       ?          0    17134    funcionario 
   TABLE DATA           z   COPY public.funcionario (idfunc, nomefunc, departamento, ramal, turno, cidade, rua, num, cep, usuario, senha) FROM stdin;
    public          postgres    false    208   7=       ?          0    17150    funcionariogerenciacarro 
   TABLE DATA           C   COPY public.funcionariogerenciacarro (idfunc, idcarro) FROM stdin;
    public          postgres    false    210   .>       ?           0    0    aluguel_idaluguel_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.aluguel_idaluguel_seq', 2, true);
          public          postgres    false    211            ?           0    0    carro_idcarro_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.carro_idcarro_seq', 5, true);
          public          postgres    false    202            ?           0    0    cliente_idcli_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cliente_idcli_seq', 5, true);
          public          postgres    false    204            ?           0    0    funcionario_idfunc_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.funcionario_idfunc_seq', 5, true);
          public          postgres    false    207            B           2606    17172    aluguel aluguel_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT aluguel_pkey PRIMARY KEY (idaluguel, dtaaluguel);
 >   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT aluguel_pkey;
       public            postgres    false    212    212            6           2606    17113    carro carro_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.carro
    ADD CONSTRAINT carro_pkey PRIMARY KEY (idcarro);
 :   ALTER TABLE ONLY public.carro DROP CONSTRAINT carro_pkey;
       public            postgres    false    203            8           2606    17121    cliente cliente_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (idcli);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    205            :           2606    17126 "   contatocliente contatocliente_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.contatocliente
    ADD CONSTRAINT contatocliente_pkey PRIMARY KEY (contatocli, idcli);
 L   ALTER TABLE ONLY public.contatocliente DROP CONSTRAINT contatocliente_pkey;
       public            postgres    false    206    206            >           2606    17144    contatofunc contatofunc_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.contatofunc
    ADD CONSTRAINT contatofunc_pkey PRIMARY KEY (idfunc, contatofunc);
 F   ALTER TABLE ONLY public.contatofunc DROP CONSTRAINT contatofunc_pkey;
       public            postgres    false    209    209            <           2606    17139    funcionario funcionario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (idfunc);
 F   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT funcionario_pkey;
       public            postgres    false    208            @           2606    17154 6   funcionariogerenciacarro funcionariogerenciacarro_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.funcionariogerenciacarro
    ADD CONSTRAINT funcionariogerenciacarro_pkey PRIMARY KEY (idfunc, idcarro);
 `   ALTER TABLE ONLY public.funcionariogerenciacarro DROP CONSTRAINT funcionariogerenciacarro_pkey;
       public            postgres    false    210    210            G           2606    17173    aluguel aluguel_idcarro_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT aluguel_idcarro_fkey FOREIGN KEY (idcarro) REFERENCES public.carro(idcarro);
 F   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT aluguel_idcarro_fkey;
       public          postgres    false    203    212    2870            H           2606    17178    aluguel aluguel_idcli_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT aluguel_idcli_fkey FOREIGN KEY (idcli) REFERENCES public.cliente(idcli);
 D   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT aluguel_idcli_fkey;
       public          postgres    false    205    2872    212            I           2606    17183    aluguel aluguel_idfunc_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT aluguel_idfunc_fkey FOREIGN KEY (idfunc) REFERENCES public.funcionario(idfunc);
 E   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT aluguel_idfunc_fkey;
       public          postgres    false    208    2876    212            C           2606    17127 (   contatocliente contatocliente_idcli_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contatocliente
    ADD CONSTRAINT contatocliente_idcli_fkey FOREIGN KEY (idcli) REFERENCES public.cliente(idcli);
 R   ALTER TABLE ONLY public.contatocliente DROP CONSTRAINT contatocliente_idcli_fkey;
       public          postgres    false    206    205    2872            D           2606    17145 #   contatofunc contatofunc_idfunc_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contatofunc
    ADD CONSTRAINT contatofunc_idfunc_fkey FOREIGN KEY (idfunc) REFERENCES public.funcionario(idfunc);
 M   ALTER TABLE ONLY public.contatofunc DROP CONSTRAINT contatofunc_idfunc_fkey;
       public          postgres    false    209    208    2876            E           2606    17155 >   funcionariogerenciacarro funcionariogerenciacarro_idcarro_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.funcionariogerenciacarro
    ADD CONSTRAINT funcionariogerenciacarro_idcarro_fkey FOREIGN KEY (idcarro) REFERENCES public.carro(idcarro);
 h   ALTER TABLE ONLY public.funcionariogerenciacarro DROP CONSTRAINT funcionariogerenciacarro_idcarro_fkey;
       public          postgres    false    2870    203    210            F           2606    17160 =   funcionariogerenciacarro funcionariogerenciacarro_idfunc_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.funcionariogerenciacarro
    ADD CONSTRAINT funcionariogerenciacarro_idfunc_fkey FOREIGN KEY (idfunc) REFERENCES public.funcionario(idfunc);
 g   ALTER TABLE ONLY public.funcionariogerenciacarro DROP CONSTRAINT funcionariogerenciacarro_idfunc_fkey;
       public          postgres    false    210    2876    208            ?   F   x?3?44?74?7202??LLO??AD9?8?9??8?????3SR?JR9??b?&??@?1z\\\ ??R      ?   ?   x?E?Kn?0@???b*?34?Jr?BLP?KT??>nQ???E????yQ?)Q?|?r%X???v?????|??????D5?NZ^?Mx?l0??ǌB~??g?d5?E?"?H?"??*??????i?C????:ɬ?w?Y?[՘?]5?l???;??4???3?W?j??j#?'w?z??̱??? vD|      ?   ?   x?U??n?0?g?)??H??=?)ҩ@??S:????ҧ/ݟ?8???N??,n??%U@?Ŷc&襊???SV?W)g???#Û?ˇ??(?q%?tVwH?TX]"a`?>?"CrO?6?E!?????q	?_?e??WI1?42th??YLH???#?F?O&? S?窀1>?I^?O??=m;0?H?Eܳݢ??my??Z???K?L@? ﷻ????W?`?      ?   >   x?%???0B?o?Ӥ!?]?k??]??eS̙?????0?5?YB?V?9?Z?sx
e~      ?   =   x?ɹ?0?à?tO/?_6???b?a5b?鮑??L??N??)?A??ZO?????      ?   ?   x???Ok?@GϓO?O??i6?(-ڊ???$;?:#c????ےR?^
s???=[b??/`a?|@??p=?"?T-?????1?h?%Y*FHG??????,#wT??=?+o(?~GŬp?????a?7????|??>ȅR/?6H?Q?չ??+???`E?>?,I???C?r?=?š??1?*?)0??Ū^?ҵjwSzy*?ʹ}?͒f?$?'??nP      ?      x?3?4?2?4bS.cN# 6?????? '?      