PGDMP                         {            teebay    14.8    14.8 /    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    16454    teebay    DATABASE     j   CREATE DATABASE teebay WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE teebay;
                postgres    false            )           0    0    DATABASE teebay    COMMENT     9   COMMENT ON DATABASE teebay IS 'test application, @2023';
                   postgres    false    3368            �            1259    16488    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    16487    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    215            *           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    214            �            1259    16463 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16462    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    210            +           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    209            �            1259    16480    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    16500    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false            �            1259    16499    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    217            ,           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    216            �            1259    16512    products    TABLE     -  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    quantity integer NOT NULL,
    borrowed integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16511    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    219            -           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    218            �            1259    16470    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16469    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    212            .           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    211            v           2604    16491    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            t           2604    16466    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            x           2604    16503    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            y           2604    16515    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            u           2604    16473    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                      0    16488    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    215   n7                 0    16463 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    210   �7                 0    16480    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    213   &8                  0    16500    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    217   C8       "          0    16512    products 
   TABLE DATA           b   COPY public.products (id, name, category, quantity, borrowed, created_at, updated_at) FROM stdin;
    public          postgres    false    219   �=                 0    16470    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    212   �>       /           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    214            0           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 5, true);
          public          postgres    false    209            1           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 27, true);
          public          postgres    false    216            2           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 21, true);
          public          postgres    false    218            3           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 24, true);
          public          postgres    false    211            �           2606    16496    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    215            �           2606    16498 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    215            {           2606    16468    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    210            �           2606    16486 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    213            �           2606    16507 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    217            �           2606    16510 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    217            �           2606    16519    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    219            }           2606    16479    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    212                       2606    16477    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    212            �           1259    16508 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    217    217                  x������ � �         �   x�]�A� E��0��4�]L~(��J�ahz}��b��_��7�M�A�}�]a��YP��#e~AځO'���Y���OM�x�>��N��[�{n7�F�ӷ���&�g��а���>�����S�}��F]J�X�Nk            x������ � �          �  x����n-��ך�0����K��� �.++�fl�F�j�������
L������������^�ӯ����5����6��������?o;ZV�M��q�QM�Hs[���5�E��٭��)L3�7<�����˷�z{���Å�R�#�����|�|e��h����
_<��54�l2ex�<mH�s��īrm��b�4�=?��Rڮ�C�l�m��Ժ�hG�ܽ�Bd率X�cF���:�jN&e�n֙�_�ү��E;��V��2��٥V���h���̡$�]IKsZ�j�>��;{e�=J����EU�e9j�#�,yM٥e�:g+6�^ۣ���*������OmqyEϮ���s���=+U4�$T1<m�]�v�t4R�0�f�%���ߐ=XV�����j�e�T����	�o�ˌZ�\K-�:l4IӔ%XP[i��U�s������zc�"�ns`+�V1
�+��b?{Wmvb�ݽ��+[�#�Ҏ~k+�0̷E�uH�4g߭[�;9v�{���)pep��j���V��*����ҵ�/QyP�&�$$�6b�d�HU"�
�)�+	�/|�=̯������jž[ixU�ZYתQg�*� :Y[î޺�����0���/��6>��.A�'_r�0��@._���<Ѹ�|�Ac��{��P�`�v��_�RH���'��Ł)���nm0m�Uªb3�=�R[@�Jb	�v<Ы��镯����xjݣ~NE�ڞX��ƞ�(�<������^�h�ܽ��Jq��U�L�����g��Ά���]`�,^����j���hZ��fWC�g�g,\�׾��>>���ao}��U4� ,zA!2�mεA����(W������g4�U������i�Ά��}LL�(�pb`�/���< -��6�y��>_��NW�A��_8.(N�й�|�@��m��}l,���a�!I{�v��Z��%����W�A���D֓�#,��`�*Lq�e�գ.ܦ�u@��p��F�������y���罀�s�D�Mb��T�J��
�Ep!1"V�4g�)"�+_zQ�S;���֪��8vlOlca����a+��H J��C�<�ʗ��_���y��.�/�H��ܼ.��;�J`�l�;�7d�{����xz�r�|��H
n`}�������F�mQ"���֝���@��ϧW�i��uj�����J���t��=�d��;�9p(���ua/X�s����c���|���Dhgġ�{-s���Ļ ��2cR����u���F��H���z�W�����?}��+����(��ٻ#��6���j���B�����q�V�}�U�����������|^H��M$�A�X��	���!�/mP�>���5		�rf�_�O������q�`W)�      "   �   x����n�0���S�@�������4��v襇j�� ���M�Bd�����?�f�����O�?L�μ���g����H#�a�����=t�0_�����A�0����з��_m�l�U�Fc��`o��2��:έ&h� y7�����e�DSk����r.�F�Y#�lQ2B�(d�t[Q���R�4۲Fe�j�J�d+Qc����b�jPFE³��+���*��u���N�w�GD�(��P�&�?j��P         ~  x���K��H���`Q�j��E�|��B+z�@
)I�f�-���rz:z��&��@�%H�8�{����Hqa~ٙ�U�CF�gt�ّ 5d04���5?隢5�F�mY��(�t��1����1=�4>[�A1��Yl�z�\2��n]eq�zN��\�1����澉Y��%���\U6#��`����8�E�:�7�ӁS���)���	��{����IQ��9}{,�j[V��
��Pc�Pp �!�-f�"�'���2�&�z�eG��W\t�Ԙ�$챼�CF�#fu�6��c�cH�U�`Jf����7�c���M���\��	\��Uft�8��:�����]�����,+�m�)B��R�w\B
�a�*�=̗��EcX��s���"e���8b�B����v�/r/y�Y�[�V��3Gy�H�	:�0I����wX���;��skY��tx�*τ]W�'Ìu�_�:m��1��h�ݲ�5(=��V��
2� �\q�a�q#�������~��_����!�&������VY����sWZ�9�"��� ��!�����
���m�yS�YƜmʘ LA�")'��4"���;~7Ҙ�?`�osb�8�4Dr5#2J䚃ﾆ�܀��@��uɔ�8��>N��;�g�����B��a2�4�ݹ�GX�Z�>~���l��Y��:vl�P�Rt�������_��y�v���0^W�m�{�0��E)��;�a"G|�)��[��d���:`��s����K3K�T�w`</:����^T�5����rF���{9 cr�r�Gj�	���2��}���I\]e�=/8�hXa7�V�t��q1������T���b�������̼�'��LL[��:���k��R��9������e]�[m[o[FY�f��z�e7�FӞ�$�m٦e��Y�2�=����V���>��g��i�:!�D�:17�^+OE�ڭ0���7��6���*������J��1�{)^S6gQ����bջ����b����i�޻���[�JPt}KO?cX?I�V3,Їr1��4�05�K)M�׆�iϳ�n��G�0K:C�z�O��2�1���z�k���A�'���1��6��m��j_�Z��'��o�     