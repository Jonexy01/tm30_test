import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/person.png'),
        actions: [
          IconButton(
            color: Colors.blue,
            onPressed: () {}, 
            icon: Icon(Icons.logout)
          ),
          TextButton(
            onPressed: () {}, 
            child: Text('Log Out')
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            alignment: Alignment.centerLeft,
            height: 120,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 120,
                    maxHeight: 50,
                  ),
                  child: Text(
                    'Welcome, Wade Flores',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Northern Foreshore Estate')
              ],
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Pending Payments',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              subtitle: TextButton.icon(
                onPressed: () {}, 
                icon: Icon(Icons.payment, color: Colors.amber.shade900,), 
                label: Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'N50,000.00',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.amber.shade900
                      ),
                    )
                  ),
                ),
              ),
              trailing: ElevatedButton(
                onPressed: () {}, 
                child: Text(
                  'Pay All',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  side: MaterialStateProperty.all(BorderSide(style: BorderStyle.solid))
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/person.png'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/person.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/person.png'),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/person.png'),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Estate Dues',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ]
      ),
    );
  }
}