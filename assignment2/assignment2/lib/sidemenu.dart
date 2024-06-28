import 'package:flutter/material.dart';
import 'Fabtabs.dart';

class Sidemenu extends StatefulWidget {
  const Sidemenu({super.key});

  @override
  State<Sidemenu> createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(

            accountName: const Text('Umwari Bénie'),
            accountEmail: const Text('umwaribenie5@gmail.com', style: TextStyle(fontSize: 17),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('assets/usericon.jpg')),
            ),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(image: AssetImage('assets/background.jpg'),fit:
                BoxFit.cover)
            ),
          ),


          ListTile(

            leading: Icon(Icons.login_sharp),
            title: Text("Sign in",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),

            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Fabtabs(selectedIndex:0)))

            },
          ),
          ListTile(

            leading: Icon(Icons.person_pin),
            title: Text("Sign up",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Fabtabs(selectedIndex:1)))

            },
          ),

          ListTile(

            leading: Icon(Icons.calculate),
            title: Text("Calculator",style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Fabtabs(selectedIndex:2)))

            },
          ),


        ],


      ),


    );
  }
}