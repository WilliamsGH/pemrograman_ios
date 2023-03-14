import 'package:flutter/material.dart';
import 'package:uts_2020133002/content/widget/kehadiran.dart';

class DaftarHadir extends StatefulWidget {
  const DaftarHadir({super.key});

  @override
  State<DaftarHadir> createState() => _DaftarHadirState();
}

class _DaftarHadirState extends State<DaftarHadir> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          KehadiranPage(
            name: 'Patrick Limuel',
            nim: '2020133001',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Williams',
            nim: '2020133002',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Vinxencius Lieputra',
            nim: '2020133003',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Vincent Tayanto',
            nim: '2020133004',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Jaden Gil Salim',
            nim: '2020133005',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Very',
            nim: '2020133006',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Noel Julian Lim',
            nim: '2020133007',
            status: 'Absence',
          ),
          KehadiranPage(
            name: 'Charlos Alvaro',
            nim: '2020133008',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Fery Gunawan',
            nim: '2020133009',
            status: 'Hadir',
          ),
          KehadiranPage(
            name: 'Oscar Noverio',
            nim: '2020133010',
            status: 'Hadir',
          ),
        ],
      ),
    );
  }
}