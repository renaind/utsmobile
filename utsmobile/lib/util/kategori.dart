import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  final ikonPath;
  final namaKategori;

  Kategori({
    required this.ikonPath,
    required this.namaKategori,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.green[200],
            ),
          child: Row(
            children: [
              Image.asset(
                ikonPath,
                height: 50,
              ),
              SizedBox(
                width: 15,

              ),
              Text(namaKategori),
            ],
          ),
      ),
    );
  }
}
