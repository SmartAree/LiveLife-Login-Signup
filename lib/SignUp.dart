import 'package:flutter/material.dart';
import 'package:login_signup/LoginPage.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/1.jpg'),
            ),
            Text('Live Life', style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 40.0,
              color: Colors.white,
              letterSpacing: 2.5,
            ),),
            SizedBox(height: 18.0,),
            Text('Meet with new Peoples', style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                letterSpacing: 3.5
            ),),
            SizedBox(height: 20.0,
              width: 250.0,
              child: Divider(
                color: Colors.white,
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.account_circle, color: Colors.green,),
                title: Text('User Name', style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green
                ),),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.green,),
                title: Text('Email', style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green
                ),),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.lock, color: Colors.green,),
                title: Text('Password', style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green
                ),),
              ),
            ),
            RawMaterialButton(onPressed: (){},
              fillColor: Colors.white,
              focusElevation: 4.0,
              hoverElevation: 4.0,
              hoverColor: Colors.green[700],
              child: Text('Sign Up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 20.0,
                ),),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),),
                RawMaterialButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginPage()
                      ));
                },
                  focusElevation: 4.0,
                  hoverElevation: 4.0,
                  hoverColor: Colors.green,
                  child: Text('Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0,
                    ),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ],
            ),
            SizedBox(
              width: 280.0,
              child: Divider(
                thickness: 1.5,
                color: Colors.white,
                indent: 230.0,
              ),)

          ],
        ),
      ),
    );
  }
}
