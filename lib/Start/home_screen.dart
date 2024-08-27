import 'package:flutter/material.dart';
import 'package:agnence_tunis/Start/HomeBottomBar.dart';
import 'package:agnence_tunis/model/RecommendCard.dart';
import 'package:agnence_tunis/model/RecommendedCard.dart';
import 'package:agnence_tunis/model/place_model.dart';
import 'package:agnence_tunis/screen/PostScreen.dart';
import 'package:agnence_tunis/widget/home-app-bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedCategoryIndex = 0;

  final List<String> category = [
    'All Places',
    'Sousse',
    'Mounastir',
    'Mahdia',
    'Hammamet',
  ];

  @override
  Widget build(BuildContext context) {
    // Filtrer les lieux en fonction de la catégorie sélectionnée
    List<PlaceInfo> filteredPlaces = _filterPlaces();

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: homeAppbar(),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: places.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RecommendCard(
                        placeInfo: places[index],
                        press: () {
                          _showLoadingAndNavigate(context, places[index]);
                        },
                      ),
                    );
                  },
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      for (int i = 0; i < category.length; i++)
                        Container(
                          height: 45,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                _selectedCategoryIndex = i;
                              });
                            },
                            child: Text(
                              category[i],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredPlaces.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RecommendedCard(
                        placeInfo: filteredPlaces[index],
                        press: () {
                          _showLoadingAndNavigate(context, filteredPlaces[index]);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: HomeBottomBar(),
      ),
    );
  }

  List<PlaceInfo> _filterPlaces() {
    if (_selectedCategoryIndex == 0) {
      // Retourner tous les lieux si "All Places" est sélectionné
      return places;
    } else {
      // Retourner les lieux filtrés en fonction de la catégorie sélectionnée
      String selectedCategory = category[_selectedCategoryIndex].trim();
      return places.where((place) => place.location == selectedCategory).toList();
    }
  }

  void _showLoadingAndNavigate(BuildContext context, PlaceInfo placeInfo) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // Simuler un délai de chargement
    await Future.delayed(Duration(seconds: 2));

    // Fermer le dialog
    Navigator.of(context).pop();

    // Naviguer vers la page de détails de l'hôtel
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PostScreen(placeInfo: placeInfo),
      ),
    );
  }
}
