import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../controller/HomeController.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GetBuilder<HomeController>(
        builder: (controller)
    {
      return Drawer(
        elevation: 6,
        child: Column(children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ListTile(

              trailing: const Icon(Icons.settings),

            ),
          ),


          ListTile(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
              leading: const Icon(Icons.star),
              title: Column(
                children: [
                  const Text(
                    'Favorite Location',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              trailing: IconButton(icon: Icon(Icons.help), onPressed: () {},)

          ),
          ListTile(

              title: TextButton(

                child:
                   Row(
                     children: [
                       Icon(Icons.location_on,size: 16,color: Colors.black,),
                       SizedBox(width: 5,),
                       Text(
                        '${controller.currentWeatherData.name}',
                        style: TextStyle(fontSize: 16,color:Colors.black),
                  ),
                       Spacer(),
                       Row(

                         children: [
                           Icon(Icons.sunny,color: Colors.yellow,),
                           Text("${(controller.currentWeatherData.main!.temp! - 273.15).round().toString()}\u2103",style: TextStyle(color:Colors.black),),
                         ],
                       )
                     ],
                   ),
                onPressed: (){},
              ),


          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/settings-screen');
            },
            leading: const Icon(Icons.location_on_outlined),
            title: const Text(
              'Other Locations',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(

            title: TextButton(

              child:
              Row(
                children: [
                  Icon(Icons.location_on,size: 16,color: Colors.black,),
                  SizedBox(width: 5,),
                  Text(
                    '${controller.dataList[1].name}',
                    style: TextStyle(fontSize: 16,color:Colors.black),
                  ),
                  Spacer(),
                  Row(

                    children: [
                      Icon(Icons.sunny,color: Colors.yellow,),
                      Text("${(controller.dataList[1].main!.temp! - 273.15).round().toString()}\u2103",style: TextStyle(color:Colors.black),),
                    ],
                  )
                ],
              ),
              onPressed: (){},
            ),


          ),
          ListTile(

            title: TextButton(

              child:
              Text("Manage Locations"),
              onPressed: (){},
            ),


          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/contact-screen');
            },
            leading: const Icon(Icons.help),
            title: const Text(
              'Report Wrong Location',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/contact-screen');
            },
            leading: const Icon(Icons.headset),
            title: const Text(
              'Contact Us',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ]),
      );
    },

    ));


  }
  }
