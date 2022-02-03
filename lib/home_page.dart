import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(2),
                    height: 40,
                    width: 40,
                    child: const InkWell(
                      splashColor: Colors.black,
                      child: SizedBox(
                        width: 55,
                        height: 55,
                        child: Icon(Icons.menu),
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Hi, Selorm!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                  const SizedBox(width: 110),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('images/me.PNG'), fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              DefaultTabController(
                length: 2,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TabBar(
                    padding: const EdgeInsets.all(5),
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.black.withOpacity(0.5),
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.bold),
                    tabs: const [
                      Tab(
                        text: 'Today',
                      ),
                      Tab(
                        text: 'Upcoming',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 120,
                width: 500,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: const Alignment(-0.85, -0.65),
                      child: Text(
                        'Select your food',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.65, -0.05),
                      child: Text(
                        "It's time for you to select your meals for     ",
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.90, -0.15),
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        size: 18,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.88, 0.50),
                      child: Text(
                        "the upcoming week",
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                    ),
                  ],
                ),
                /*child: const InkWell(
                  child: SizedBox(
                    height: 50,
                    child: Image(
                      image: AssetImage('images/shallow-pan-of-food1.png'),
                    ),
                  ),
                ),*/
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 9, 163, 78),
                  image: const DecorationImage(
                    image: AssetImage(
                      'images/Asset 1.png',
                    ),
                    fit: BoxFit.none,
                    alignment: Alignment.bottomRight,
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(255, 161, 223, 186),
                    width: 7,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 170,
                width: 350,
                child: Stack(
                  children: <Widget>[
                    const Align(
                      alignment: Alignment(-0.85, -0.80),
                      child: Text(
                        'Food Delivery',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.20, -0.80),
                      child: Image.asset(
                        'images/shallow-pan-of-food.png',
                        fit: BoxFit.cover,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.90, -1.00),
                      child: InkWell(
                        splashColor: Colors.black,
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.90, 0.10),
                      child: Image.asset(
                        'images/tukey.jpg',
                        fit: BoxFit.cover,
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.15, -0.10),
                      child: Text(
                        "French Fries with ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.27, 0.25),
                      child: Text(
                        "BBQ Turkey Wings & Coleslaw",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                    ),
                    /*const Divider(
                      height: 180,
                      thickness: 5,
                      color: Colors.black,
                    ),*/
                    Align(
                      alignment: const Alignment(-0.90, 0.90),
                      child: Icon(
                        FontAwesomeIcons.clock,
                        size: 15,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.65, 0.90),
                      child: Text(
                        "10:00 AM - 11:30 AM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 248, 239),

                  /*image: const DecorationImage(
                    image: AssetImage(
                      'images/shallow-pan-of-food.png',
                    ),
                    
                    fit: BoxFit.fill,
                    alignment: Alignment.bottomRight,
                  ),*/
                  border: Border.all(
                    color: const Color.fromARGB(255, 161, 223, 186),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 145,
                width: 350,
                child: Stack(
                  children: <Widget>[
                    const Align(
                      alignment: Alignment(-0.85, -0.70),
                      child: Text(
                        'Home Cleaning',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.15, -0.75),
                      child: Image.asset(
                        'images/flat-home-icon-8.jpg',
                        fit: BoxFit.cover,
                        height: 25,
                        width: 25,
                      ),
                    ),
                    Align(
                      alignment: const Alignment(0.90, -1.00),
                      child: InkWell(
                        splashColor: Colors.black,
                        child: SizedBox(
                          width: 55,
                          height: 55,
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.50, -0.15),
                      child: Text(
                        "Your  cleaner is coming to get your home in ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.85, 0.25),
                      child: Text(
                        "pristine condtition",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    /*const Divider(
                      height: 180,
                      thickness: 5,
                      color: Colors.black,
                    ),*/
                    Align(
                      alignment: const Alignment(-0.90, 0.90),
                      child: Icon(
                        FontAwesomeIcons.clock,
                        size: 15,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Align(
                      alignment: const Alignment(-0.65, 0.90),
                      child: Text(
                        "10:00 AM - 11:30 AM",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 239, 227),

                  /*image: const DecorationImage(
                    image: AssetImage(
                      'images/shallow-pan-of-food.png',
                    ),
                    
                    fit: BoxFit.fill,
                    alignment: Alignment.bottomRight,
                  ),*/
                  border: Border.all(
                    color: const Color.fromARGB(255, 240, 216, 140),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.green),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.black.withOpacity(0.5),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black.withOpacity(0.5),
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline_rounded,
              color: Colors.black.withOpacity(0.5),
            ),
            label: 'Gardener',
          ),
        ],
      ),
    );
  }
}
