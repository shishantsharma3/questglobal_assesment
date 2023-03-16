import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  TextEditingController mobileController = TextEditingController();

  List<String> categories = [
    'Category 1',
    'Category 2',
    'Category 3',
    'Category 4',
  ];

  void addCategories(String categoryName) {
    setState(() {
      if (categories.contains(categoryName)) {
        categories.remove(categoryName);
      }
      categories.add(categoryName);
      mobileController.text = '';
    });
  }

  void removeCategories(String categoryName) {
    setState(() {
      categories.remove(categoryName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
          backgroundColor: const Color(0xFF00008B),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: false,
          titleSpacing: 0,
          title: const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Product Categories",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Roboto-Medium.ttf',
                    fontWeight: FontWeight.w500)),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 16),
                Wrap(
                  spacing: 24,
                  children: categories.map(
                    (category) {
                      return Chip(
                        onDeleted: () {
                          removeCategories(category);
                        },
                        deleteIcon: const Icon(Icons.remove_circle),
                        label: Text(category),
                      );
                    },
                  ).toList(),
                ),
                const SizedBox(height: 40),
                const Text(
                  'Enter the Category and press enter to add it.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: mobileController,
                  onSubmitted: (category) {
                    addCategories(category);
                  },
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: 'Enter Category Name',
                    hintText: 'Enter Category Name',
                    labelStyle: const TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
