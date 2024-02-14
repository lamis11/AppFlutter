import 'package:exercice/signin/screens/signin.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List _listItem = [
    Data(image: 'assets/img1.png', text: "Coretex"),
    Data(image: 'assets/img2.png', text: "Split"),
    Data(image: 'assets/img3.png', text: "Jobi"),
    Data(image: 'assets/img12.png', text: "WeCode Land"),
  ];

  final List<Map<String, String>> _listItem2 = [
    {'image': 'assets/img4.png'},
    {'image': 'assets/img5.png'},
    {'image': 'assets/img6.png'},
    {'image': 'assets/img7.png'},
    {'image': 'assets/img8.png'},
    {'image': 'assets/img9.png'},
    {'image': 'assets/img10.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/home.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Accelerate your digital transformation \n'
                    '             through Agile Mobile apps',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signinscreen(),
                  ),
                );
              },

              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff31D281), // background
                    onPrimary: Color(0xff31D281), // foreground
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    elevation: 0.0,
                    minimumSize: Size(250, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signinscreen()),
                    );
                  },
                  child: Text(
                    "Sign in ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                'Case Studies',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _listItem.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_listItem[index].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(_listItem[index].text,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ],
                );
              },
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                'They trust us ',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: _listItem2.length,
                itemBuilder: (context, index) {

                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(_listItem2[index]["image"]!),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );

                },
              ),

            ),
            SizedBox(height: 40),

          ],
        ),
      ),
    );
  }
}

class Data {
  String image;
  String text;
  Data({required this.image, required this.text});
}
