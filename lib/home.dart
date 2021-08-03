import 'package:flutter/material.dart';
import 'package:hello_world/routes_const.dart';

class HomeView extends StatelessWidget {
  final Map<String, dynamic> data_usuario;
  const HomeView ({Key key, this.data_usuario}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(50.0),
            ),
            // Text('Bienvenido a Opticenter Móvil',
            // style: TextStyle(fontSize: 25),),
            Image.asset(
              "assets/home/logo-cliente.png",
              scale: 0.7,
            ),
          ],
        ),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.only(top: 0.00),
            child: Column(
              children: <Widget>[
                new CircleAvatar(
                  radius: 60.0,
                  backgroundImage: new NetworkImage(
                      'https://i.pinimg.com/originals/27/d5/43/27d543fa70d0c61057f7557d88b04b04.png'),
                ),
                new Text("${data_usuario['nombre']} ${data_usuario['apellidos']}",style: TextStyle(fontSize: 18, color: Colors.white),),
              ],
            ),
            // child: new UserAccountsDrawerHeader(
            //   accountName: new Text('User Prueba'),
            //   accountEmail: new Text(''),
            //   decoration: BoxDecoration(
            //     color: Colors.orangeAccent,
            //   ),
            //   currentAccountPicture: new CircleAvatar(
            //     radius: 60.0,
            //     backgroundImage: new NetworkImage(
            //         'https://i.pinimg.com/originals/27/d5/43/27d543fa70d0c61057f7557d88b04b04.png'),
            //   ),
            // ),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio', style: TextStyle(fontSize: 16)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('Prueba', style: TextStyle(fontSize: 16)),
            onTap: () {
              Navigator.pushNamed(context, Gallery, arguments: data_usuario);
            },
          ),
          ListTile(
            leading: Icon(Icons.highlight_off),
            title: Text('Cerrar Sesión', style: TextStyle(fontSize: 16)),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      )),
    );
  }
}
