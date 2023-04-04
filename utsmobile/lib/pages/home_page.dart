// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:utsmobile/util/cabangtoko.dart';
import 'package:utsmobile/util/kategori.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //nama user (section)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Halo,",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Eisa Kurnia Sari",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),

                  //foto profil user
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.person,
                      // color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            //card isinya -> taukah kamu manfaat buah?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //gambar di dalam card
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network(
                        "https://assets10.lottiefiles.com/packages/lf20_nz20vA.json"),
                    ),
                    SizedBox(
                      width: 20,
                    ),

                    //teks taukah kamu manfaat buah? + cont.tombol 'mulai'
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Taukah Kamu Manfaat Buah?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            "Dapatkan manfaat kesehatan terbaik dari alam dengan buah-buahan segar di Aneka Toko!",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.green[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                "Mulai",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),
            //searching bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Cari buah-buahan",
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            //bagian kategori buah lokal-impor-olahan (pake horizontal listview)
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Kategori(
                    namaKategori: "Buah Lokal",
                    ikonPath: "lib/ikon/buahlokal.png",
                  ),
                  Kategori(
                    namaKategori: "Buah Impor",
                    ikonPath: "lib/ikon/buahimpor.png",
                  ),
                  Kategori(
                    namaKategori: "Olahan Buah",
                    ikonPath: "lib/ikon/buaholahan.png",
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            //list cabang toko(listview horizontal juga)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cabang Aneka Toko",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "Selengkapnya",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cabangToko(
                    cabangTokoPath: "lib/foto/toko1.png",
                    statusToko: "Buka",
                    namaCabang: "Aneka Buah Ulu",
                    alamatCabang: "Jl. Bhayangkara",
                  ),
                  cabangToko(
                    cabangTokoPath: "lib/foto/toko2.png",
                    statusToko: "Buka",
                    namaCabang: "Aneka Buah Seberang",
                    alamatCabang: "Jl. Cipto Mangun Kusumo",
                  ),
                  cabangToko(
                    cabangTokoPath: "lib/foto/toko3.png",
                    statusToko: "Buka",
                    namaCabang: "Aneka Buah Sungai Kunjang",
                    alamatCabang: "Jl. Untung Suropati",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
