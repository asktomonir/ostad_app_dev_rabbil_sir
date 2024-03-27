import 'package:flutter/material.dart';
void main () {
  runApp (const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build (BuildContext context) {
    return const MaterialApp(home: HomeActivity(),);
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});
  MySnackBar(message, context){
   return  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold (
     appBar: AppBar (
       title: Text("Inventory App"),
       titleSpacing: 10,
       toolbarHeight: 60,
       toolbarOpacity: 1,
       elevation: 6,
       backgroundColor: Colors.red,
       actions: [
         IconButton(onPressed: (){MySnackBar('I am comment',context);}, icon: Icon(Icons.comment)),
         IconButton(onPressed: (){MySnackBar('I am search',context);}, icon: Icon(Icons.search)),
         IconButton(onPressed: (){MySnackBar('I am settings',context);}, icon: Icon (Icons.settings)),
         IconButton(onPressed: (){MySnackBar('I am email',context);}, icon: Icon (Icons.email)),
       ],

     ),

     floatingActionButton: FloatingActionButton(
       elevation: 10,
       child: Icon(Icons.add),
       onPressed: (){
         MySnackBar("I am floating action bar", context);
       },
     ),
     bottomNavigationBar: BottomNavigationBar(
       currentIndex: 0,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contract"),
         BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
       ],

       onTap: (int index){
         if (index == 0) {
           MySnackBar("I am Home button menue", context);
         }
         if (index == 1) {
           MySnackBar("I am Contact button menue", context);
         }
         if (index == 2) {
           MySnackBar("I am profile button menue", context);
         }

       },

     ),
     drawer: Drawer(
       child: ListView (
         children: [
           DrawerHeader(
            padding: EdgeInsets.all(0),
            child: UserAccountsDrawerHeader (
              decoration: BoxDecoration(color: Colors.amber),
              accountName: Text('Moniruzzaman Sikder'),
              accountEmail: Text('asktomonir@gmail.com'),

       )
     ),
           ListTile(
               title: Text("Home"),
               leading: Icon(Icons.home),
               onTap:(){MySnackBar("Home", context);}),
           ListTile(
               title: Text("Contract"),
               leading: Icon(Icons.contacts),
               onTap: () {MySnackBar('Contract', context);}),
           ListTile(
               title: Text("Profile"),
               leading: Icon(Icons.person),
               onTap: () {MySnackBar('Profile', context);}),
           ListTile(
               title: Text("Email"),
               leading: Icon(Icons.email),
               onTap: () {MySnackBar('Email', context);}),
           ListTile(
               title: Text("Phone"),
               leading: Icon(Icons.phone),
               onTap: () {MySnackBar('Phone', context);}),
         ],
       )
     ),
     endDrawer: Drawer(
         child: ListView (
           children: [
             DrawerHeader(
                 padding: EdgeInsets.all(0),
                 child: UserAccountsDrawerHeader (
                   decoration: BoxDecoration(color: Colors.amber),
                   accountName: Text('Moniruzzaman Sikder'),
                   accountEmail: Text('asktomonir@gmail.com'),

                 )
             ),


             ListTile(
                 title: Text("Home"),
                 leading: Icon(Icons.home),
                 onTap:(){MySnackBar("Home", context);}),
             ListTile(title: Text("Contract"), leading: Icon(Icons.contacts),onTap: () {MySnackBar('Contract', context);}),
             ListTile(title: Text("Profile"), leading: Icon(Icons.person),onTap: () {MySnackBar('Profile', context);}),
             ListTile(title: Text("Email"),leading: Icon(Icons.email),onTap: () {MySnackBar('Email', context);}),
             ListTile(title: Text("Phone"),leading: Icon(Icons.phone),onTap: () {MySnackBar('Phone', context);}),
           ],
         )
     ),
body:  Row (
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(height: 100, width: 100, child: Image.network("https://cdn.rabbil.com/photos/images/2022/11/05/rabbil.jpg"),),
    Container(height: 100, width: 100, child: Image.network("https://cdn.rabbil.com/photos/images/2022/11/05/rabbil.jpg"),),
    Container(height: 100, width: 100, child: Image.network("https://cdn.rabbil.com/photos/images/2022/11/05/rabbil.jpg"),)

  ],
),

     // body: Container (
     //   height: 250,
     //   width: 250,
     //   alignment: Alignment.center,
     //   margin: EdgeInsets.all(40),
     //   padding: EdgeInsets.all(50),
     //   child: Text('text'),
     //   decoration: BoxDecoration (
     //   color: Colors.blue,
     //   border: Border.all(
     //   color: Colors.black, width: 2,
     //   )
     //   ),
     // ),

     
     
   );
  }
}