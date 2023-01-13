import 'package:flutter/material.dart';
import 'package:planealo_app/models/placepri_model.dart';
import 'package:planealo_app/models/search_model.dart';
import 'package:planealo_app/pages/departments/departments_page.dart';
import 'package:planealo_app/pages/detailscreen/detail_screen.dart';
import 'package:planealo_app/pages/producto/list_departament2.dart';

class Search extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView(
      // itemCount: depart.length,
      children: [
        //LISTA DE DEPARTAMENTOS
        const ListDepartament2(),
      ],
      scrollDirection: Axis.horizontal,
      // itemBuilder: (context, index) {
      // return
      // },
    );
    // ListView.builder(
    //   padding: const EdgeInsets.only(left: 15, right: 15),
    //   itemCount: depart.length,
    //   scrollDirection: Axis.vertical,
    //   itemBuilder: (context, index) {
    //     return Row(
    //       children: [
    //         DepartmentsPage(
    //           searchModel: depart[index],
    //           press: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                 builder: (context) => DetailScreen(
    //                   placeInfo: placesp[index],
    //                 ),
    //               ),
    //             );
    //           },
    //         )
    //       ],
    //     );
    //   },
    // );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView(
      // itemCount: depart.length,
      children: [
        //LISTA DE DEPARTAMENTOS
        const ListDepartament2(),
      ],
      scrollDirection: Axis.horizontal,
      // itemBuilder: (context, index) {
      // return
      // },
    );
    // ListView.builder(
    //   padding: const EdgeInsets.only(left: 15, right: 15),
    //   itemCount: depart.length,
    //   scrollDirection: Axis.vertical,
    //   itemBuilder: (context, index) {
    //     return Row(
    //       children: [
    //         DepartmentsPage(
    //           searchModel: depart[index],
    //           press: () {
    //             Navigator.push(
    //               context,
    //               MaterialPageRoute(
    //                 builder: (context) => DetailScreen(
    //                   placeInfo: placesp[index],
    //                 ),
    //               ),
    //             );
    //           },
    //         ),
    //       ],
    //     );
    //   },
    // );
    // return ListView.builder(
    //   itemCount: recentSearch.length,
    //   itemBuilder: (context, index) {
    //     return ListTile(
    //       title: Text(recentSearch[index]),
    //       trailing: const Icon(
    //         Icons.arrow_forward_ios,
    //       ),
    //       onTap: () {},
    //     );
    //   },
    // );
  }
}
