CREATE TABLE korisnici (
  id integer PRIMARY KEY,
  ime char,
  prezime char,
  email varchar(255),
  sifra integer
);

CREATE TABLE uloge (
  id integer PRIMARY KEY,
  naziv varchar(255)
);

CREATE TABLE korisnici_uloge (
  korisnik_id integer,
  uloga_id integer
);

CREATE TABLE hoteli (
  id integer PRIMARY KEY,
  naziv varchar(255),
  adresa varchar(255),
  broj_zvezdica integer
);

CREATE TABLE sobe (
  id integer PRIMARY KEY,
  tip varchar(255),
  cena integer,
  dostupnost varchar(255),
  hotel_id integer
);

CREATE TABLE rezervacije (
  id integer PRIMARY KEY,
  tip varchar(255),
  cena integer,
  dostupnost varchar(255),
  soba_id integer,
  korisnik_id integer
);

CREATE TABLE recenzije (
  id integer PRIMARY KEY,
  ocena integer,
  komentar varchar(255),
  datum_recenzije date,
  korisnik_id integer,
  hotel_id integer
);

ALTER TABLE korisnici_uloge ADD FOREIGN KEY (korisnik_id) REFERENCES korisnici (id);

ALTER TABLE korisnici_uloge ADD FOREIGN KEY (uloga_id) REFERENCES uloge (id);

ALTER TABLE sobe ADD FOREIGN KEY (hotel_id) REFERENCES hoteli (id);

ALTER TABLE rezervacije ADD FOREIGN KEY (soba_id) REFERENCES sobe (id);

ALTER TABLE rezervacije ADD FOREIGN KEY (korisnik_id) REFERENCES korisnici (id);

ALTER TABLE recenzije ADD FOREIGN KEY (korisnik_id) REFERENCES korisnici (id);

ALTER TABLE recenzije ADD FOREIGN KEY (hotel_id) REFERENCES hoteli (id);
