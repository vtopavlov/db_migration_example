CREATE TABLE public.client
(
  id serial NOT NULL,
  client_name text,
  CONSTRAINT client_pkey PRIMARY KEY (id)
);

CREATE TABLE public.phone_number
(
  phone_number text NOT NULL,
  client_id integer NOT NULL,
  CONSTRAINT phone_number_pkey PRIMARY KEY (phone_number, client_id),
  CONSTRAINT phone_number_client_fkey FOREIGN KEY (client_id)
      REFERENCES public.client (id) MATCH FULL
);
