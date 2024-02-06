Table "korisnici" {
  id integer [primary key]
  ime char
  prezime char
  email varchar
  lozinka integer
  adresa char
  korisnickoIme char
}

Table "uloge" {
  id integer [primary key]
  naziv varchar
}

Table "korisnici_uloge" {
  korisnik_id integer [ref: > korisnici.id]
  uloga_id integer [ref: > uloge.id]
}

Table "hoteli" {
  id integer [primary key]
  naziv varchar
  adresa varchar
  broj_zvezdica integer
  zemlja char
  prijava char
  odjava char
  politika char
  pogodnosti char
  parking char
}

Table "sobe" {
  id integer [primary key]
  tipSobe varchar
  cenaPoNoci integer
  broj integer
  hotel_id integer [ref: > hoteli.id]
}

Table "rezervacije" {
  id integer [primary key]
  datumPrijave data 
  datumOdjave data
  UkupnaCena integer
  soba_id integer [ref: > sobe.id]
  korisnik_id integer [ref: > korisnici.id]
}

Table "recenzije" {
  id integer [primary key]
  ocena integer
  komentar varchar
  datum_recenzije date
  korisnik_id integer [ref: > korisnici.id]
  hotel_id integer [ref: > hoteli.id]
}
