import 'package:add_min/screens/home/provider/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff383838),
        appBar: AppBar(
          elevation: 00,
          title: Text('Count App'),
          actions: [
            IconButton(tooltip: 'Reset',
                onPressed: () {
                  Provider.of<HomeProvider>(context, listen: false).reset();
                },
                icon: Icon(Icons.lock_reset))
          ],
          centerTitle: true,
          backgroundColor: Color(0xff383838),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<HomeProvider>(
                builder: (context, provider, _) {
                  return Text(
                    '${provider.i}',
                    style: TextStyle(color: Color(0xffffffff), fontSize: 20),
                  );
                },
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xff7dd72f)),
                      onPressed: () {
                        Provider.of<HomeProvider>(context, listen: false)
                            .count();
                      },
                      child: Text(
                        '+',
                        style:
                            TextStyle(color: Color(0xff000000), fontSize: 20),
                      )),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xff3eccff)),
                      onPressed: () {
                        Provider.of<HomeProvider>(context, listen: false).mul();
                      },
                      child: Text(
                        '2X',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700),
                      )),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xffea64c7)),
                      onPressed: () {
                        Provider.of<HomeProvider>(context, listen: false)
                            .mul3();
                      },
                      child: Text(
                        '3X',
                        style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700),
                      )),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Color(0xffb06200)),
                      onPressed: () {
                        Provider.of<HomeProvider>(context, listen: false)
                            .mul4();
                      },
                      child: Text('4X')),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xffefff46)),
                    onPressed: () {
                      Provider.of<HomeProvider>(context, listen: false).minus();
                    },
                    child: Text('-',
                        style:
                            TextStyle(color: Color(0xff000000), fontSize: 30)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
