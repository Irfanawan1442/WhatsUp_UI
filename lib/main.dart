import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            bottom: TabBar(tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              Tab(child: Text("Chat", style: TextStyle(color: Colors.white))),
              Tab(
                child: Text("Status", style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text("Calls", style: TextStyle(color: Colors.white)),
              ),
            ]),
            actions: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://pics.craiyon.com/2023-09-11/c1b49bb79c194a82b61e9985345fc89c.webp"),
              ),
              SizedBox(
                width: 5,
              ),
              PopupMenuButton(
                  itemBuilder: (
                context,
              ) =>
                      [
                        PopupMenuItem(child: Text("New Group")),
                        PopupMenuItem(child: Text("Setting")),
                      ])
            ],
          ),
          body: TabBarView(
            children: [
              Text("Camera"),
              ListView.builder(
                  itemCount: 99,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://pics.craiyon.com/2023-09-11/c1b49bb79c194a82b61e9985345fc89c.webp"),),
                       title: Text("F"),
                      subtitle: Text("kasy ho "),
                      trailing: Text("5.23 PM"),

                    );

                  }),
              ListView.builder(
                  itemCount: 99,
                  itemBuilder: (context,index){
                    return ListTile(
                     leading: Padding(
                       padding: const EdgeInsets.only(top:8.0),
                       child: Container(

                         decoration: BoxDecoration(
                        shape: BoxShape.circle,
                           border: Border.all(color: Colors.green,
                           width:4
                           ),
                         ),
                         child: CircleAvatar(
                           radius: 30,
                           backgroundImage: NetworkImage("https://pics.craiyon.com/2023-11-27/5xPOqGXeS9KH8SJ0Bn2DyQ.webp"),),

                       ),
                     ),

                      title: Text("F"),
                      subtitle: Text("Today"),
                    );
                  }),
              ListView.builder(
                  itemCount: 99,
                  itemBuilder: (context,index){
                    return Container(
                      child:ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage("https://pics.craiyon.com/2023-11-16/BYyBoEL8Ti23TXl-XAncGA.webp"),),
                        title: Text("F"),
                        subtitle: Text("Today, 5:34 pm"),
                        trailing: Icon(Icons.phone),
                      )
                    );

                  })
            ],
          )
        ));
  }
}
