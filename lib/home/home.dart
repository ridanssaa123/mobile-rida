import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //creating static data in lists
  List catNames = [
    "SIP-LK",
    "MANAJEMEN SURAT",
    'SI HRD',
    'SARPRAS',
    'APPLE',
    'BERKAS',
  ];

  List aNames = [
    "INSENTIF",
    'SIKAD',
    'SIKEMAS',
    'SIMPLE',
  ];

  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF618DFD),
    Color(0xFFFC7F7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
  ];

  List<Color> aColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF618DFD),
    Color(0xFFFC7F7F),
  ];

  List<Icon> catIcons = [
    Icon(Icons.casino_outlined, color: Colors.white, size: 30),
    Icon(Icons.file_download_done_sharp, color: Colors.white, size: 30),
    Icon(Icons.notes_rounded, color: Colors.white, size: 30),
    Icon(Icons.scale_outlined, color: Colors.white, size: 30),
    Icon(Icons.chair_alt_rounded, color: Colors.white, size: 30),
    Icon(Icons.storage_outlined, color: Colors.white, size: 30),
  ];

  List<Icon> aIcons = [
    Icon(Icons.money, color: Colors.white, size: 30),
    Icon(Icons.school_outlined, color: Colors.white, size: 30),
    Icon(Icons.computer, color: Colors.white, size: 30),
    Icon(Icons.handshake_outlined, color: Colors.white, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 237, 74),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Image.asset(
                //       'images/logo.png',
                //       width: 50,
                //       height: 50,
                //     ),
                //     Icon(
                //       Icons.notifications,
                //       size: 30,
                //       color: Colors.white,
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/logo.png',
                          width: 30,
                          height: 30,
                        ),
                        Text(
                          "UMKT",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Welcome, UMKT ",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Icon(
                      Icons.book_online,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "Ridha Anisa Soldzu Parnga",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.white),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Icon(
                      Icons.email,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "2011102441241@umkt.ac.id",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.white),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: [
                    Icon(
                      Icons.house,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "S1 Fakultas Sains dan Teknologi",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          wordSpacing: 2,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  // controller: _searchQueryController,
                  decoration: InputDecoration(
                    labelText: 'search',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kepegawaian",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          catNames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Akademik",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  itemCount: aNames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: aColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: aIcons[index],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          aNames[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xFF674AEF),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
