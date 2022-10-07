import 'package:flutter/material.dart';

import '../widgets/cutrom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        title: Text(
          'Chat App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 20,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Chat Name',
                              style:
                                  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 5),
                              child: Text('02:00 pm',style: Theme.of(context).textTheme.caption!.copyWith(fontSize: 15),),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                              'how are you? z cx czc  zx cz xcx zczxczxczxcxzcxzcxz',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
