// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class cabangToko extends StatelessWidget {
  final String cabangTokoPath;
  final String statusToko;
  final String namaCabang;
  final String alamatCabang;

  cabangToko({
    required this.cabangTokoPath,
    required this.statusToko,
    required this.namaCabang,
    required this.alamatCabang,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // ikon toko
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                cabangTokoPath,
                height: 80,
                ),
            ),

            SizedBox(height: 8),
    
            // status toko
            Row(
              children: [
                Icon(
                  Icons.store,
                  color: Colors.green[700],
                  ),
                Text(
                  statusToko,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                  ),
                ],
              ),

              SizedBox(height: 8),
    
            // nama toko
            Text(
              namaCabang,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              ),
              SizedBox(height: 3),
    
            // alamat toko
            Text(
              alamatCabang,
              style: TextStyle(
                fontSize: 12
              ),
              ),
            
          ],
        ),
      ),
    );
  }
}