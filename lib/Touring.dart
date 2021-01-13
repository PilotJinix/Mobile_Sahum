import 'package:flutter/material.dart';
import 'package:suhamv1_app/SlideController.dart';

class Touring extends StatefulWidget{
  @override
  _TouringState createState() => _TouringState();
}

class _TouringState extends State<Touring> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SlideController(
        judul: "BERGABUNGLAH",
        deskripsi:
        "Dengan Memajukan UMKM Indonesia",
        gambar: "assets/logo.png"),
    SlideController(
        judul: "INVESTOR",
        deskripsi:
        "Investasikan Uang Anda Pada UMKM Indonesia ",
        gambar: "assets/logo.png"),
    SlideController(
        judul: "RAIH KEUNTUNGAN",
        deskripsi:
        "Dapatkan Hasil Investasi Dengan Cara Yang Mudah",
        gambar: "assets/logo.png"),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.blue
                                : Colors.blue.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 200),
                  height: 50,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(35)),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  )
                      : Icon(
                    Icons.navigate_next,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}