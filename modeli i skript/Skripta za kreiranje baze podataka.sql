/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     3/31/2024 4:47:59 PM                         */
/*==============================================================*/

/*==============================================================*/
/* Table: ACCESSLOGS                                            */
/*==============================================================*/
create table ACCESSLOGS
(
   ID_KORISNIKA         int not null  comment '',
   ID_LOGA              int not null  comment '',
   IP_ADRESA            varchar(15) not null  comment '',
   VREME_LOGIN          datetime not null  comment '',
   VREME_LOGOUT         datetime not null  comment '',
   primary key (ID_KORISNIKA, ID_LOGA)
);

/*==============================================================*/
/* Table: AKTIVNOSTI                                            */
/*==============================================================*/
create table AKTIVNOSTI
(
   ID_KORISNIKA         int not null  comment '',
   ID_VLASNIKA_FAJLA    int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_AKTIVNOSTI        int not null  comment '',
   AKCIJA               char(10) not null  comment '',
   VREME_AKTIVNOSTI     timestamp not null  comment '',
   primary key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_KORISNIKA, ID_FAJLA, ID_AKTIVNOSTI)
);

/*==============================================================*/
/* Table: DELJENJA                                              */
/*==============================================================*/
create table DELJENJA
(
   ID_KORISNIKA         int not null  comment '',
   ID_PODELE            int not null  comment '',
   KO_JE_PODELIO        int not null  comment '',
   KOME_JE_PODELIO      int not null  comment '',
   VREME_PODELE         datetime not null  comment '',
   primary key (ID_KORISNIKA, ID_PODELE)
);

/*==============================================================*/
/* Table: FAJLOVI                                               */
/*==============================================================*/
create table FAJLOVI
(
   ID_KORISNIKA         int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_FOLDERA           int  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   FAJ_ID_KORISNIKA     int  comment '',
   FAJ_ID_VERZIJE       int  comment '',
   FAJ_ID_TIPA_FAJLA    int  comment '',
   FAJ_ID_FAJLA         int  comment '',
   ID_PREVIEWA          varchar(30)  comment '',
   ID_VERZIJE           int not null  comment '',
   IME                  varchar(25) not null  comment '',
   VELICINA             int not null  comment '',
   DATUM_KREACIJE       datetime not null  comment '',
   primary key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
);

/*==============================================================*/
/* Table: FAJLOVI_ZA_DELJENJE                                   */
/*==============================================================*/
create table FAJLOVI_ZA_DELJENJE
(
   ID_KORISNIKA         int not null  comment '',
   ID_PODELE            int not null  comment '',
   ID_VLASNIKA_FAJLA    int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   primary key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_KORISNIKA, ID_PODELE, ID_FAJLA)
);

/*==============================================================*/
/* Table: FAJLPREVIEW                                           */
/*==============================================================*/
create table FAJLPREVIEW
(
   ID_KORISNIKA         int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_PREVIEWA          varchar(30) not null  comment '',
   IDFAJLA              int not null  comment '',
   PREVIEW_LINK         varchar(35) not null  comment '',
   primary key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA, ID_PREVIEWA)
);

/*==============================================================*/
/* Table: FAVORITI                                              */
/*==============================================================*/
create table FAVORITI
(
   ID_KORISNIKA         int not null  comment '',
   ID_FAVORITA          int not null  comment '',
   DATUM_DODAVANJA      date not null  comment '',
   primary key (ID_KORISNIKA, ID_FAVORITA)
);

/*==============================================================*/
/* Table: FAVORIT_FAJL                                          */
/*==============================================================*/
create table FAVORIT_FAJL
(
   ID_VLASNIKA_FAJLA    int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_KORISNIKA         int not null  comment '',
   ID_FAVORITA          int not null  comment '',
   primary key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_KORISNIKA, ID_FAJLA, ID_FAVORITA)
);

/*==============================================================*/
/* Table: FOLDERI                                               */
/*==============================================================*/
create table FOLDERI
(
   ID_FOLDERA           int not null  comment '',
   ID_KORISNIKA         int  comment '',
   ID_NADFOLDERA        int  comment '',
   IME                  varchar(25) not null  comment '',
   primary key (ID_FOLDERA)
);

/*==============================================================*/
/* Table: ISTORIJE                                              */
/*==============================================================*/
create table ISTORIJE
(
   ID_KORISNIKA         int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_ISTORIJE          int not null  comment '',
   AKCIJA               char(10) not null  comment '',
   VREME_IZMENE         timestamp not null  comment '',
   primary key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA, ID_ISTORIJE)
);

/*==============================================================*/
/* Table: KOMENTARI                                             */
/*==============================================================*/
create table KOMENTARI
(
   FAJ_ID_KORISNIKA     int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_KORISNIKA         int not null  comment '',
   ID_KOMENTARA         int not null  comment '',
   TEKST_KOMENTARA      text not null  comment '',
   VREME_KOMENTARA      timestamp not null  comment '',
   primary key (FAJ_ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA, ID_KORISNIKA, ID_KOMENTARA)
);

/*==============================================================*/
/* Table: KOME_JE_PODELJENO                                     */
/*==============================================================*/
create table KOME_JE_PODELJENO
(
   ID_POSILJAOCA        int not null  comment '',
   ID_PODELE            int not null  comment '',
   ID_PRIMAOCA          int not null  comment '',
   primary key (ID_POSILJAOCA, ID_PODELE, ID_PRIMAOCA)
);

/*==============================================================*/
/* Table: KORISNICI                                             */
/*==============================================================*/
create table KORISNICI
(
   ID_KORISNIKA         int not null  comment '',
   STO_ID_KORISNIKA     int  comment '',
   ID_STORAGEA          int  comment '',
   USERNAME             varchar(25) not null  comment '',
   EMAIL                varchar(25) not null  comment '',
   PASSWORD             varchar(21) not null  comment '',
   primary key (ID_KORISNIKA)
);

/*==============================================================*/
/* Table: LABELI                                                */
/*==============================================================*/
create table LABELI
(
   ID_KORISNIKA         int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_LABELE            int not null  comment '',
   IME                  varchar(25) not null  comment '',
   primary key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA, ID_LABELE)
);

/*==============================================================*/
/* Table: METADATA                                              */
/*==============================================================*/
create table METADATA
(
   ID_KORISNIKA         int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   ID_METADATE          int not null  comment '',
   KLJUC                int not null  comment '',
   VREDNOST             varchar(100) not null  comment '',
   primary key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA, ID_METADATE)
);

/*==============================================================*/
/* Table: NOTIFIKACIJE                                          */
/*==============================================================*/
create table NOTIFIKACIJE
(
   ID_NOTIFIKACIJE      int not null  comment '',
   ID_KORISNIKA         int  comment '',
   TIP_NOTIFIKACIJE     varchar(25) not null  comment '',
   PORUKA               text not null  comment '',
   JEL_PROCITANA        bool not null  comment '',
   VREME_NOTIFIKACIJE   timestamp not null  comment '',
   primary key (ID_NOTIFIKACIJE)
);

/*==============================================================*/
/* Table: PERMISIJE                                             */
/*==============================================================*/
create table PERMISIJE
(
   ID_PERMISIJE         int not null  comment '',
   ID_VLASNIKA_FAJLA    int  comment '',
   ID_VERZIJE           int  comment '',
   ID_TIPA_FAJLA        int  comment '',
   ID_FAJLA             int  comment '',
   ID_KORISNIKA         int  comment '',
   TIP                  char(3) not null  comment '',
   primary key (ID_PERMISIJE)
);

/*==============================================================*/
/* Table: PODESAVANJA                                           */
/*==============================================================*/
create table PODESAVANJA
(
   ID_KORISNIKA         int not null  comment '',
   ID_PODESAVANJA       int not null  comment '',
   VREDNOST_PODESAVANJA varchar(25) not null  comment '',
   primary key (ID_KORISNIKA, ID_PODESAVANJA)
);

/*==============================================================*/
/* Table: SPAM                                                  */
/*==============================================================*/
create table SPAM
(
   ID_KORISNIKA         int not null  comment '',
   ID_SPAMA             int not null  comment '',
   RAZLOG               text not null  comment '',
   DATUM_REPORTA        date not null  comment '',
   primary key (ID_KORISNIKA, ID_SPAMA)
);

/*==============================================================*/
/* Table: SPAM_FAJL                                             */
/*==============================================================*/
create table SPAM_FAJL
(
   ID_KORISNIKA         int not null  comment '',
   ID_SPAMA             int not null  comment '',
   ID_VLASNIKA_FAJLA    int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   primary key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_KORISNIKA, ID_SPAMA, ID_FAJLA)
);

/*==============================================================*/
/* Table: STORAGE                                               */
/*==============================================================*/
create table STORAGE
(
   ID_KORISNIKA         int not null  comment '',
   ID_STORAGEA          int not null  comment '',
   TOTAL                int not null  comment '',
   USED                 int not null  comment '',
   primary key (ID_KORISNIKA, ID_STORAGEA)
);

/*==============================================================*/
/* Table: TIPOVIFAJLOVA                                         */
/*==============================================================*/
create table TIPOVIFAJLOVA
(
   ID_TIPA_FAJLA        int not null  comment '',
   IME                  varchar(25) not null  comment '',
   ICON                 longblob  comment '',
   primary key (ID_TIPA_FAJLA)
);

/*==============================================================*/
/* Table: TRASH                                                 */
/*==============================================================*/
create table TRASH
(
   ID_KORISNIKA         int not null  comment '',
   ID_TRASHA            int not null  comment '',
   DATUM_BRISANJA       date not null  comment '',
   primary key (ID_KORISNIKA, ID_TRASHA)
);

/*==============================================================*/
/* Table: TRASH_FAJL                                            */
/*==============================================================*/
create table TRASH_FAJL
(
   ID_KORISNIKA         int not null  comment '',
   ID_TRASHA            int not null  comment '',
   ID_VLASNIKA_FAJLA    int not null  comment '',
   ID_VERZIJE           int not null  comment '',
   ID_TIPA_FAJLA        int not null  comment '',
   ID_FAJLA             int not null  comment '',
   primary key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_KORISNIKA, ID_TRASHA, ID_FAJLA)
);

/*==============================================================*/
/* Table: VERZIJE                                               */
/*==============================================================*/
create table VERZIJE
(
   ID_VERZIJE           int not null  comment '',
   VREME_VERZIJE        date not null  comment '',
   NOTES                text not null  comment '',
   primary key (ID_VERZIJE)
);

alter table ACCESSLOGS add constraint FK_ACCESSLO_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table AKTIVNOSTI add constraint FK_AKTIVNOS_AKTIVNOST_FAJLOVI foreign key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table AKTIVNOSTI add constraint FK_AKTIVNOS_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table DELJENJA add constraint FK_DELJENJA_KO_JE_POD_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table FAJLOVI add constraint FK_FAJLOVI_FAJLPREVI_FAJLPREV foreign key (FAJ_ID_KORISNIKA, FAJ_ID_VERZIJE, FAJ_ID_TIPA_FAJLA, FAJ_ID_FAJLA, ID_PREVIEWA)
      references FAJLPREVIEW (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA, ID_PREVIEWA) on delete restrict on update restrict;

alter table FAJLOVI add constraint FK_FAJLOVI_FOLDER_SA_FOLDERI foreign key (ID_FOLDERA)
      references FOLDERI (ID_FOLDERA) on delete restrict on update restrict;

alter table FAJLOVI add constraint FK_FAJLOVI_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table FAJLOVI add constraint FK_FAJLOVI_TIP_FAJLA_TIPOVIFA foreign key (ID_TIPA_FAJLA)
      references TIPOVIFAJLOVA (ID_TIPA_FAJLA) on delete restrict on update restrict;

alter table FAJLOVI add constraint FK_FAJLOVI_VERZIJA_F_VERZIJE foreign key (ID_VERZIJE)
      references VERZIJE (ID_VERZIJE) on delete restrict on update restrict;

alter table FAJLOVI_ZA_DELJENJE add constraint FK_FAJLOVI__FAJLOVI_Z_DELJENJA foreign key (ID_KORISNIKA, ID_PODELE)
      references DELJENJA (ID_KORISNIKA, ID_PODELE) on delete restrict on update restrict;

alter table FAJLOVI_ZA_DELJENJE add constraint FK_FAJLOVI__FAJLOVI_Z_FAJLOVI foreign key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table FAJLPREVIEW add constraint FK_FAJLPREV_FAJLPREVI_FAJLOVI foreign key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table FAVORITI add constraint FK_FAVORITI_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table FAVORIT_FAJL add constraint FK_FAVORIT__FAVORIT_F_FAJLOVI foreign key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table FAVORIT_FAJL add constraint FK_FAVORIT__FAVORIT_F_FAVORITI foreign key (ID_KORISNIKA, ID_FAVORITA)
      references FAVORITI (ID_KORISNIKA, ID_FAVORITA) on delete restrict on update restrict;

alter table FOLDERI add constraint FK_FOLDERI_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table FOLDERI add constraint FK_FOLDERI_SUBFOLDER_FOLDERI foreign key (ID_NADFOLDERA)
      references FOLDERI (ID_FOLDERA) on delete restrict on update restrict;

alter table ISTORIJE add constraint FK_ISTORIJE_ISTORIJA__FAJLOVI foreign key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table KOMENTARI add constraint FK_KOMENTAR_KOMENTARI_FAJLOVI foreign key (FAJ_ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table KOMENTARI add constraint FK_KOMENTAR_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table KOME_JE_PODELJENO add constraint FK_KOME_JE__KOME_JE_P_DELJENJA foreign key (ID_POSILJAOCA, ID_PODELE)
      references DELJENJA (ID_KORISNIKA, ID_PODELE) on delete restrict on update restrict;

alter table KOME_JE_PODELJENO add constraint FK_KOME_JE__KOME_JE_P_KORISNIC foreign key (ID_PRIMAOCA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table KORISNICI add constraint FK_KORISNIC_KORISNIKO_STORAGE foreign key (STO_ID_KORISNIKA, ID_STORAGEA)
      references STORAGE (ID_KORISNIKA, ID_STORAGEA) on delete restrict on update restrict;

alter table LABELI add constraint FK_LABELI_LABELA_FA_FAJLOVI foreign key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table METADATA add constraint FK_METADATA_METAPODAC_FAJLOVI foreign key (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table NOTIFIKACIJE add constraint FK_NOTIFIKA_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table PERMISIJE add constraint FK_PERMISIJ_PERMISIJE_FAJLOVI foreign key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table PERMISIJE add constraint FK_PERMISIJ_STA_KORIS_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table PODESAVANJA add constraint FK_PODESAVA_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table SPAM add constraint FK_SPAM_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table SPAM_FAJL add constraint FK_SPAM_FAJ_SPAM_FAJL_SPAM foreign key (ID_KORISNIKA, ID_SPAMA)
      references SPAM (ID_KORISNIKA, ID_SPAMA) on delete restrict on update restrict;

alter table SPAM_FAJL add constraint FK_SPAM_FAJ_SPAM_FAJL_FAJLOVI foreign key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

alter table STORAGE add constraint FK_STORAGE_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table TRASH add constraint FK_TRASH_KORISNIKO_KORISNIC foreign key (ID_KORISNIKA)
      references KORISNICI (ID_KORISNIKA) on delete restrict on update restrict;

alter table TRASH_FAJL add constraint FK_TRASH_FA_TRASH_FAJ_TRASH foreign key (ID_KORISNIKA, ID_TRASHA)
      references TRASH (ID_KORISNIKA, ID_TRASHA) on delete restrict on update restrict;

alter table TRASH_FAJL add constraint FK_TRASH_FA_TRASH_FAJ_FAJLOVI foreign key (ID_VLASNIKA_FAJLA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA)
      references FAJLOVI (ID_KORISNIKA, ID_VERZIJE, ID_TIPA_FAJLA, ID_FAJLA) on delete restrict on update restrict;

