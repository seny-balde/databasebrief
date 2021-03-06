PGDMP     6    )    
            z           produit_locaux    14.3    14.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    produit_locaux    DATABASE     j   CREATE DATABASE produit_locaux WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE produit_locaux;
                postgres    false            ?            1259    16425    admins    TABLE     S   CREATE TABLE public.admins (
    admin_id integer NOT NULL,
    user_id integer
);
    DROP TABLE public.admins;
       public         heap    postgres    false            ?            1259    16410    clients    TABLE     U   CREATE TABLE public.clients (
    client_id integer NOT NULL,
    user_id integer
);
    DROP TABLE public.clients;
       public         heap    postgres    false            ?            1259    16490    produits    TABLE     ?   CREATE TABLE public.produits (
    id_produit integer NOT NULL,
    nom_produit character varying(50),
    quantite_produit integer,
    prix_produit integer
);
    DROP TABLE public.produits;
       public         heap    postgres    false            ?            1259    16405    users    TABLE     ?   CREATE TABLE public.users (
    user_id integer NOT NULL,
    nom character varying(40),
    prenom character varying(30),
    adresse character varying(20)
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16495    votes    TABLE     ?   CREATE TABLE public.votes (
    produit_vote character varying(10),
    client_id integer NOT NULL,
    id_produit integer NOT NULL
);
    DROP TABLE public.votes;
       public         heap    postgres    false                      0    16425    admins 
   TABLE DATA           3   COPY public.admins (admin_id, user_id) FROM stdin;
    public          postgres    false    211   ?                 0    16410    clients 
   TABLE DATA           5   COPY public.clients (client_id, user_id) FROM stdin;
    public          postgres    false    210   ?                 0    16490    produits 
   TABLE DATA           [   COPY public.produits (id_produit, nom_produit, quantite_produit, prix_produit) FROM stdin;
    public          postgres    false    212   ?                 0    16405    users 
   TABLE DATA           >   COPY public.users (user_id, nom, prenom, adresse) FROM stdin;
    public          postgres    false    209   3                 0    16495    votes 
   TABLE DATA           D   COPY public.votes (produit_vote, client_id, id_produit) FROM stdin;
    public          postgres    false    213   ?       p           2606    16429    admins admins_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (admin_id);
 <   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_pkey;
       public            postgres    false    211            n           2606    16414    clients clients_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    210            r           2606    16494    produits produits_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.produits
    ADD CONSTRAINT produits_pkey PRIMARY KEY (id_produit);
 @   ALTER TABLE ONLY public.produits DROP CONSTRAINT produits_pkey;
       public            postgres    false    212            l           2606    16409    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    209            t           2606    16499    votes votes_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT votes_pkey PRIMARY KEY (client_id, id_produit);
 :   ALTER TABLE ONLY public.votes DROP CONSTRAINT votes_pkey;
       public            postgres    false    213    213            v           2606    16430    admins admins_user_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 D   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_user_id_fkey;
       public          postgres    false    211    3180    209            u           2606    16415    clients clients_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 F   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_user_id_fkey;
       public          postgres    false    3180    210    209            w           2606    16500    votes votes_client_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT votes_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.clients(client_id);
 D   ALTER TABLE ONLY public.votes DROP CONSTRAINT votes_client_id_fkey;
       public          postgres    false    213    3182    210            x           2606    16505    votes votes_id_produit_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.votes
    ADD CONSTRAINT votes_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES public.produits(id_produit);
 E   ALTER TABLE ONLY public.votes DROP CONSTRAINT votes_id_produit_fkey;
       public          postgres    false    213    3186    212                  x?3?4?22?4?????? ^?             x???4?2??4?22?4?24?4?????? )^+         %   x?3??M?K/M?4?4?2??/?R9-8͸b???? ??&         t   x?=?K
?0CךS??~OS(J<?!?<q??oi?Oz?sR?zG?qZA??:?8??폒?%'??`]k9jLn>5Ţ?Madp????Ħ?b????a?U????5l?U??YD???3O         "   x??M?K/M???4??/?S9-9??b???? w?     