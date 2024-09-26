import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(), // Halaman awal ketika program pertama dijalankan
    ));

class home extends StatelessWidget {
  // Ubah nama kelas menjadi 'home'
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFEDDFE0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("images/profile.jpg"),
                      ),
                      Text(
                        "Fania Nirmala",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFC75B7A)),
                      ),
                      Text(
                        "Vocational High School Student at SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFFC75B7A)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },
                        child: Text('See More'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
