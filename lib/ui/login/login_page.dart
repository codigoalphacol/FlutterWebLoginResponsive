import 'package:dashboard/constants/styles.dart';
import 'package:dashboard/main_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

//stf

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

 

  @override
  Widget build(BuildContext context) {
    AppScale _scale = AppScale(context);

    double height = MediaQuery.of(context).size.height;

    //sm for small screens > 575px and < 768px
    // md for medium screens > 767px and < 992px
    // lg for large screens > 991px and < 1200px
    // xl for extra large screens > 1199px

    return Scaffold(
      body: SingleChildScrollView(
        child: BootstrapContainer(
          fluid: true,
          decoration: BoxDecoration(color: Colors.blue),
          children: [
            Material(
              elevation: 20,
              child: BootstrapContainer(
                fluid: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BootstrapRow(
                      height:
                          height, //es obligatorio poner una altura al container
                      children: [
                        BootstrapCol(
                          sizes:
                              'col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 col-sm-6',
                          //orders: 'order-4 order-sm-4 order-md-4 order-lg-4 order-xl-4',
                          invisibleForSizes: 'sm',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //height: _scale.labelDim * 21,
                              height: height - 50,
                              color: Colors.black,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: FlutterLogo(
                                          size: _scale.labelDim * 12)),
                                  Expanded(
                                    flex: 6,
                                    child: Text(
                                      'Flutter',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: _scale.labelDim * 3),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        BootstrapCol(
                          sizes: 'col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6',
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.grey,
                              height: height - 50,
                              //height: _scale.labelDim * 21,
                              padding: const EdgeInsets.all(20.0),
                              child: Material(
                                elevation: 20,
                                child: BootstrapContainer(
                                  fluid: true,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: BootstrapRow(
                                        height:
                                            60, //es obligatorio poner una altura al container
                                        children: [
                                          BootstrapCol(
                                            sizes:
                                                'col-12 col-sm-12 col-md-6 col-lg- col-xl-12',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                  child: FlutterLogo(
                                                      size:
                                                          _scale.labelDim * 5)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: BootstrapRow(
                                        height:
                                            60, //es obligatorio poner una altura al container
                                        children: [
                                          BootstrapCol(
                                            sizes:
                                                'col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12',
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  controller: _nameController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Name',
                                                    icon: Icon(Icons.person),
                                                  ),
                                                )),
                                          ),
                                          BootstrapCol(
                                            sizes:
                                                'col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12',
                                            child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: TextField(
                                                  obscureText: true,
                                                  controller:
                                                      _passwordController,
                                                  decoration: InputDecoration(
                                                    labelText: 'Password',
                                                    icon: Icon(Icons.email),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: BootstrapRow(
                                        height:
                                            60, //es obligatorio poner una altura al container
                                        children: [
                                          BootstrapCol(
                                            sizes:
                                                'col-12 col-sm-6 col-md-6 col-lg-4 col-xl-6',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  primary: Colors.white,
                                                  backgroundColor: Colors.blue,
                                                  onSurface: Colors.grey,
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (BuildContext
                                                                  context) =>
                                                              MyDashboard()));
                                                },
                                                child: Text(
                                                  'Login',
                                                 
                                                ),
                                              ),
                                            ),
                                          ),
                                          BootstrapCol(
                                            sizes:
                                                'col-12 col-sm-6 col-md-6 col-lg-4 col-xl-6',
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: TextButton(
                                                style: TextButton.styleFrom(
                                                  primary: Colors.white,
                                                  backgroundColor: Colors.red,
                                                  onSurface: Colors.grey,
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          MyDashboard(),
                                                    ),
                                                  );
                                                },
                                                child: Text(
                                                  'Cancel'
                                                ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


