import 'package:flutter/material.dart';
import 'package:pamoja_eccomerce/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    border: Border.all(color: Colors.blue),
                  ),
                  child: CircleAvatar(radius: 70, child: Text('f')),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Falcon master',
                  style: TextTheme.of(context).titleLarge,
                ),
              ),

              Center(
                child: Text(
                  'falconmaster@example.com',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _infoColumn(Icons.group, '55k', 'followers'),
                      _infoColumn(Icons.person, '1.2k', 'following'),
                      _infoColumn(Icons.photo_camera, '150', 'posts'),

                      ElevatedButton(
                        onPressed: () {
                          print("Followed!");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent, 
                          foregroundColor: Colors.white, 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 12,
                          ),
                        ),
                        child: Text(
                          "Follow",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    // borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    // borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 30),
              
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.tealAccent],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'forget password?',
                    style: TextStyle(color: Colors.grey[400]),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/facebook.png'),
                      radius: 30,
                    ),
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    foregroundImage: AssetImage('assets/apple.png'),
                    radius: 30,
                  ),
                  SizedBox(width: 10),
                  CircleAvatar(
                    foregroundImage: AssetImage('assets/google.png'),
                    radius: 30,
                  ),
                ],
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Dont have an account? Sign up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _infoColumn(IconData icon, String value, String text) {
  return Column(
    children: [
      Icon(icon, size: 28, color: Colors.grey),
      Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      Text(text, style: TextStyle(color: Colors.grey)),
    ],
  );
}
