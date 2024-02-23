CREATE TABLE IF NOT EXISTS public."Receipt"
(
    receipt_id integer NOT NULL DEFAULT nextval('"Receipt_receipt_id_seq"'::regclass),
    payment_date date NOT NULL,
    amount_paid integer NOT NULL,
    CONSTRAINT "Receipt_pkey" PRIMARY KEY (receipt_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Receipt"
    OWNER to postgres;