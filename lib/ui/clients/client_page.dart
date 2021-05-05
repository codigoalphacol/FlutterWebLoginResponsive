import 'package:dashboard/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';


//stf

class ClientPage extends StatefulWidget {
  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  

  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _stockController = new TextEditingController();

  final myController = TextEditingController();
  
  DateTime selectedDate;

  @override
  initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: [
            Container(
          color: Colors.grey,
          //height: height,
          padding: const EdgeInsets.all(20.0),
          child: Material(
            elevation: 20,
            child: BootstrapContainer(
              fluid: true,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Clients'),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'Name',
                                icon: Icon(Icons.person),
                              ),
                            )),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                icon: Icon(Icons.email),
                              ),
                            )),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _stockController,
                              decoration: InputDecoration(
                                labelText: 'phone',
                                icon: Icon(Icons.phone),
                              ),
                            )),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _stockController,
                              decoration: InputDecoration(
                                labelText: 'Twitter',
                                icon: Icon(Icons.signal_cellular_4_bar),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'Address',
                                icon: Icon(Icons.streetview),
                              ),
                            )),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'City',
                                icon: Icon(Icons.location_city),
                              ),
                            )),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _stockController,
                              decoration: InputDecoration(
                                labelText: 'State',
                                icon: Icon(Icons.store),
                              ),
                            )),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: _stockController,
                              decoration: InputDecoration(
                                labelText: 'P Code',
                                icon: Icon(Icons.code),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BootstrapRow(
                    height: 60, //es obligatorio poner una altura al container
                    children: [
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.blue,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {},
                            child: Text('Add'),
                          ),
                        ),
                      ),
                      BootstrapCol(
                        sizes: 'col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3',
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            //style: TextButton.styleFrom(primary: Colors.red),
                            style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.red,
                              onSurface: Colors.grey,
                            ),
                            onPressed: () {
                              navKey.currentState.pushNamed('/dashboard');
                            },
                            child: Text('Cancel'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      ),
    );
  }
}
