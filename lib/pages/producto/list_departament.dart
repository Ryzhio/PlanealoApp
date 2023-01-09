import 'package:flutter/material.dart';
import 'package:planealo_app/models/search_model.dart';
import 'package:planealo_app/pages/departments/departments_page.dart';
import 'package:planealo_app/pages/departments/departments_page2.dart';
import 'package:planealo_app/pages/departments/departments_page3.dart';
import 'package:planealo_app/pages/departments/departments_page4.dart';
import 'package:planealo_app/pages/departments/departments_page5.dart';
import 'package:planealo_app/pages/departments/departments_page6.dart';
import 'package:planealo_app/pages/departments/departments_page7.dart';
import 'package:planealo_app/pages/departments/departments_page8.dart';
import 'package:planealo_app/pages/departments/departments_page9.dart';
import 'package:planealo_app/pages/departments/departments_page10.dart';
import 'package:planealo_app/pages/departments/departments_page11.dart';
import 'package:planealo_app/pages/departments/departments_page12.dart';
import 'package:planealo_app/pages/departments/departments_page13.dart';
import 'package:planealo_app/pages/departments/departments_page14.dart';
import 'package:planealo_app/pages/departments/departments_page15.dart';
import 'package:planealo_app/pages/departments/departments_page16.dart';
import 'package:planealo_app/pages/departments/departments_page17.dart';
import 'package:planealo_app/pages/departments/departments_page18.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail1_piura/detail_depart.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail2_lambayeque/detail_depart2.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail3_loreto/detail_depart3.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail4_lima/detail_depart4.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail5_arequipa/detail_depart5.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail6_ica/detail_depart6.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail7_cusco/detail_depart7.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail8_puno/detail_depart8.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail9_amazonas/detail_depart9.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail10_madre%20de%20dios/detail_depart10.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail11_tacna/detail_depart11.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail12_tumbes/detail_depart12.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail13_la%20libertad/detail_depart13.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail14_ayacucho/detail_depart14.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail15_cajamarca/detail_depart15.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail16_junin/detail_depart16.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail17_moquegua/detail_depart17.dart';
import 'package:planealo_app/pages/detailscreen/detail_departament/detail18_ancash/detail_depart18.dart';

class ListDepartament extends StatefulWidget {
  const ListDepartament({super.key});

  @override
  State<ListDepartament> createState() => _ListDepartamentState();
}

class _ListDepartamentState extends State<ListDepartament> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //DEPARTAMENTO 01
        DepartmentsPage(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 02
        DepartmentsPage2(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart2(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 03
        DepartmentsPage3(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart3(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 04
        DepartmentsPage4(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart4(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 05
        DepartmentsPage5(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart5(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 06
        DepartmentsPage6(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart6(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 07
        DepartmentsPage7(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart7(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 08
        DepartmentsPage8(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart8(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 09
        DepartmentsPage9(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart9(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 10
        DepartmentsPage10(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart10(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 11
        DepartmentsPage11(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart11(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 12
        DepartmentsPage12(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart12(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 13
        DepartmentsPage13(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart13(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 14
        DepartmentsPage14(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart14(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 15
        DepartmentsPage15(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart15(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 16
        DepartmentsPage16(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart16(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 17
        DepartmentsPage17(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart17(),
              ),
            );
          },
        ),
        //DEPARTAMENTO 18
        DepartmentsPage18(
          searchModel: depart.first,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailDepart18(),
              ),
            );
          },
        ),
      ],
    );
  }
}
