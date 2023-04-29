import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formState = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController(),
      _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 160,
              width: 140,
              decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .primaryColor
                      .withOpacity(0.75),
                  borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(100))),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 240,
              width: 180,
              decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .primaryColor
                      .withOpacity(0.82),
                  borderRadius:
                  BorderRadius.only(topRight: Radius.circular(100))),
            ),
          ),
          Form(
            key: _formState,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 18),
              children: [
                SizedBox(height: 132),
                FlutterLogo(size: 132),
                SizedBox(height: 32),
                Center(
                  child: Text(
                    'Login with Flutter',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 32),
                TextFormField(
                  controller: _userNameController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(label: Text('Username')),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(label: Text('Password')),
                ),
                SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Forgot Password'),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                FractionallySizedBox(
                  widthFactor: .5,
                  child: Container(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => _loginHandler(context),
                      style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                      child: Text('Login'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _loginHandler(BuildContext context) {
    print('UserName is ${_userNameController.text}');
    print('Password is ${_passwordController.text}');
    // ScaffoldMessenger.of(context).showSnackBar(
    //   SnackBar(
    //     content: Text('Login is Pressed'),
    //   ),
    // );
  }
}
