import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pharmacy", style: GoogleFonts.lato()),
        actions: const [Icon(Icons.shopping_cart_outlined)],
      ),
      drawer: const Drawer(),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: [
              const SizedBox(height: 120), // Adjust to make space for the fixed image

              // Title and subtitle
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                  text: const TextSpan(
                    text: "Pharmacy ",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    children: [
                      TextSpan(
                        text: "Haven\n\n",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 21, 0),
                        ),
                      ),
                      TextSpan(
                        text: "Your Trusted Health,\n",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(119, 63, 42, 42),
                        ),
                      ),
                      TextSpan(
                        text: "Source, Anytime,\n",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(119, 63, 42, 42),
                        ),
                      ),
                      TextSpan(
                        text: "Anywhere",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(119, 63, 42, 42),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),

              // First divider
              const Divider(),
              const SizedBox(height: 10), // Add the search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              // Categories section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const Text("See all", style: TextStyle(fontSize: 15)),
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    myPanadolCard(
                      image: "images/21532495_6463385.svg",
                      text: "Skin Care",
                    ),
                    myPanadolCard(
                      image: "images/18407478_5995227.svg",
                      text: "Brain Section",
                    ),
                    myPanadolCard(
                      image: "images/15577656_5642613.svg",
                      text: "Sex Medication",
                    ),
                    myPanadolCard(
                      image: "images/13955738_5416078.svg",
                      text: "Advil",
                    ),
                    myPanadolCard(
                      image: "images/7230627_3588966.svg",
                      text: "Aspirin",
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 20),

              // Best Seller section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Best Seller", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const Text("See all", style: TextStyle(fontSize: 15)),
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    myPanadolCard(
                      image: "images/Tropex.jpg",
                      text: "Panadol 500 mg",
                    ),
                    myPanadolCard(
                      image: "images/shopping-bag.png",
                      text: "Paracetamol 500 mg",
                    ),
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Vyndaqel 20 mg",
                    ),
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Onpattro",
                    ),
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Excedrin",
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 20), // Almost finished section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Almost finished", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const Text("See all", style: TextStyle(fontSize: 15)),
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Oxlumo 94.5 mg",
                    ),
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Paracetamol 500 mg",
                    ),
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Givlaari 189 mg/ml",
                    ),
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Sudafed",
                    ),
                    myPanadolCard(
                      image: "images/NoResult.svg",
                      text: "Onpattro",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          Positioned(
            top: 20, // Adjust this value to position the image
            left: 10, // Adjust this value to position the image
            child: Container(
              width: 100, // Adjust the width as needed
              height: 100, // Adjust the height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Svg("images/storeWelcome.svg"),
                  fit: BoxFit.contain, // Adjust the fit as needed
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.store_mall_directory_outlined),
            title: const Text("Store"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.qr_code_scanner_rounded),
            title: const Text("QR"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.inventory_sharp),
            title: const Text("Inventory"),
            selectedColor: const Color.fromARGB(255, 232, 80, 91),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.attach_money),
            title: const Text("Invoices"),
            selectedColor: const Color(0xff263238),
          ),
        ],
      ),
    );
  }

  Padding myPanadolCard({required String image, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Column(
        children: [
          Container(
            height: 180,
            width: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: Svg(image), // Assuming `image` is an SVG
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  blurRadius: 7,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 180,
            decoration: BoxDecoration(
              color: const Color(0xff263238),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              border: Border(
                right: BorderSide(
                  color: Colors.red,
                  width: 3.0,
                ),
                bottom: BorderSide(
                  color: Colors.red,
                  width: 3.0,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0.0, 5),
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
