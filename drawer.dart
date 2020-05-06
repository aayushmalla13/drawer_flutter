import 'package:flutter/material.dart';
import 'about.dart';


class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName:Text('Aayush') ,
                  accountEmail: Text('aayushmalla56@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg'),
                  ),
                ),
              
                Divider(
                  color: Colors.grey,
                  height:4.0 ,
                ),
                ListTile(
                  selected: value,
                  title: Text('About Page'),
                  onTap: (){
                    setState(() {
                      value = !value;

                   
                    
                    print('From Tap $value');
                      Navigator.of(context).pop(
                        
                     
                      );//pops the drawer
                                          print('From Tap $value');
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (BuildContext context)=> AboutPage(!value)
                    // ));
                     });
                  },
                ),
            ],
          ),
        );
  }
}