-- phpMyAdmin SQL Dump
-- versi 4.6.4
-- https://www.phpmyadmin.net/
--
-- Tuan rumah: localhost:3306
-- Waktu Pembuatan: 25 Mar 2019 pukul 14:34
-- Versi server: 5.6.33
-- Versi PHP: 7.0.12

SET SQL_MODE =  " NO_AUTO_VALUE_ON_ZERO " ;
SET zona_waktu =  " +00:00 " ;


/* !40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */ ;
/* !40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */ ;
/* !40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */ ;
/* !40101 SET NAMA utf8mb4 */ ;

--
-- Basis data: `wpu_login`
--

-------------------------------------------------- _ --------

--
-- Struktur tabel untuk tabel `pengguna`
--

BUAT  TABEL ` pengguna` (
  ` id`  int ( 11 ) TIDAK NULL ,
  ` nama` varchar  ( 128 ) TIDAK NULL,
  ` email` varchar  ( 128 ) TIDAK NULL,
  ` image` varchar  ( 128 ) TIDAK NULL,
  ` password` varchar  ( 256 ) BUKAN NULL,
  ` role_id`  int ( 11 ) TIDAK NULL ,
  ` is_active`  int ( 1 ) TIDAK NULL ,
  ` date_created` int  ( 11 ) BUKAN NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8;

--
-- Membuang data untuk tabel `pengguna`
--

INSERT  INTO ` user` ( ` id` , ` name` , ` email` , ` image` , ` password` , ` role_id` , ` is_active` , ` date_created` ) NILAI _ _ _ _ _ _ _ _
( 5 , ' Sandhika Galih ' , ' sandhikagalih@unpas.ac.id ' , ' profile1.jpg ' , ' $2y$10$nXnrqGQTjpvg58OtOB / N.evYQjVlz7KIW37oUSQSQ2EgNMD890Dgrzq , 1521202 ' , 1521202890Dgrzq ,
( 6 , ' Doddy Ferdiansyah ' , ' doddy@gmail.com ' , ' profile.jpg ' , ' $2y$10$FhGzXwwTWLN/yonJpDLR0.nKoeWlKWBoRG9bsk0jOAgbJ007XzeFO ' , 2 , 1 , 1552285263 ,
( 11 , ' Sandhika Galih ' , ' sandhikagalih@gmail.com ' , ' default.jpg ' , ' $2y$10$0QYEK1pB2L.Rdo.ZQsJO5eeTSpdzT7PvHaEwsuEyGSs0J1Qf5BoSq ' , 2 , 1354 , 155315 , 135

-------------------------------------------------- _ --------

--
-- Struktur tabel untuk tabel `user_access_menu`
--

BUAT  TABEL ` user_access_menu` (
  ` id`  int ( 11 ) TIDAK NULL ,
  ` role_id`  int ( 11 ) TIDAK NULL ,
  ` menu_id` int  ( 11 ) BUKAN NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8;

--
-- Membuang data untuk tabel `user_access_menu`
--

INSERT  INTO ` user_access_menu` ( ` id` , ` role_id` , ` menu_id` ) NILAI _ _ _
( 1 , 1 , 1 ),
( 3 , 2 , 2 ),
( 7 , 1 , 3 ),
( 8 , 1 , 2 );

-------------------------------------------------- _ --------

--
-- Struktur tabel untuk tabel `user_menu`
--

BUAT  TABEL ` user_menu` (
  ` id`  int ( 11 ) TIDAK NULL ,
  ` menu` varchar  ( 128 )BUKAN NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8;

--
-- Membuang data untuk tabel `user_menu`
--

INSERT  INTO ` user_menu` ( ` id` , ` menu` ) NILAI _ _
( 1 , ' Admin ' ),
( 2 , ' Pengguna ' ),
( 3 , ' Menu ' );

-------------------------------------------------- _ --------

--
-- Struktur tabel untuk tabel `user_role`
--

BUAT  TABEL ` user_role` (
  ` id`  int ( 11 ) TIDAK NULL ,
  ` peran` varchar  ( 128 ) TIDAK NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8;

--
-- Membuang data untuk tabel `user_role`
--

INSERT  INTO ` user_role` ( ` id` , ` role` ) NILAI _ _
( 1 , ' Administrator ' ),
( 2 , ' Anggota ' );

-------------------------------------------------- _ --------

--
-- Struktur tabel untuk tabel `user_sub_menu`
--

BUAT  TABEL ` user_sub_menu` (
  ` id`  int ( 11 ) TIDAK NULL ,
  ` menu_id`  int ( 11 ) TIDAK NULL ,
  ` title` varchar  ( 128 )TIDAK NULL ,
  ` url` varchar  ( 128 ) TIDAK NULL,
  ` ikon` varchar  ( 128 ) TIDAK NULL,
  ` is_active `  int ( 1 ) BUKAN NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8;

--
-- Membuang data untuk tabel `user_sub_menu`
--

INSERT  INTO ` user_sub_menu` ( ` id` , ` menu_id` , ` title` , ` url` , ` icon` , ` is_active` ) NILAI _ _ _ _ _ _
( 1 , 1 , ' Dashboard ' , ' admin ' , ' fas fa-fw fa-tachometer-alt ' , 1 ),
( 2 , 2 , ' Profil Saya ' , ' pengguna ' , ' fas fa-fw fa-pengguna ' , 1 ),
( 3 , 2 , ' Edit Profil ' , ' pengguna/edit ' , ' fas fa-fw fa-user-edit ' , 1 ),
( 4 , 3 , ' Manajemen Menu ' , ' menu ' , ' fas fa-fw fa-folder ' , 1 ),
( 5 , 3 , ' Submenu Management ' , ' menu/submenu ' , ' fas fa-fw fa-folder-open ' , 1 ),
( 7 , 1 , ' Role ' , ' admin/role ' , ' fas fa-fw fa-user-tie ' , 1 ),
( 8 , 2 , ' Ubah Kata Sandi ' , ' pengguna/ganti kata sandi ' , ' fas fa-fw fa-key ' , 1 );

-------------------------------------------------- _ --------

--
-- Struktur tabel untuk tabel `user_token`
--

BUAT  TABEL ` user_token` (
  ` id`  int ( 11 ) TIDAK NULL ,
  ` email` varchar  ( 128 ) TIDAK NULL,
  ` token` varchar  ( 128 )TIDAK NULL ,
  ` date_created` int  ( 11 ) BUKAN NULL
) ENGINE = CHARSET DEFAULT InnoDB = utf8;

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `pengguna`
--
ALTER  TABLE  ` pengguna `
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER  TABLE  ` user_access_menu `
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- Indeks untuk tabel `user_menu`
--
ALTER  TABLE  ` menu_pengguna `
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- Indeks untuk tabel `user_role`
--
ALTER  TABLE  ` peran_pengguna` _
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER  TABLE  ` pengguna_sub_menu` _
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- Indeks untuk tabel `user_token`
--
ALTER  TABLE  ` pengguna_token` _
  TAMBAHKAN KUNCI UTAMA ( ` id ` );

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER  TABLE  ` pengguna `
  MODIFY` id` int (  11 ) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT = 12 ;
--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER  TABLE  ` user_access_menu `
  MODIFY` id` int (  11 ) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT = 10 ;
--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER  TABLE  ` menu_pengguna `
  MODIFY` id` int (  11 ) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT = 5 ;
--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER  TABLE  ` peran_pengguna` _
  MODIFY` id` int (  11 ) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT = 3 ;
--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER  TABLE  ` pengguna_sub_menu` _
  MODIFY` id` int (  11 ) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT = 9 ;
--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER  TABLE  ` pengguna_token` _
  MODIFY` id` int (  11 ) NOT NULL AUTO_INCREMENT , AUTO_INCREMENT = 9 ;
/* !40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */ ;
/* !40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */ ;
/* !40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */ ;
