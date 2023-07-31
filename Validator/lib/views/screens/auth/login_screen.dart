import 'package:flutter/material.dart';
import 'package:flutter_app/views/screens/auth/Register_screen.dart';


class Loginscreen extends StatelessWidget {
    final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Oxlade Playground',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3, 
                  fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Please email should be entered';
                  
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              TextFormField(
                validator: (value){
                  if (value!.isEmpty){
                    return 'The password cannot be empty';

                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
  
                  labelText: 'Password' 
                ),
              ),
              SizedBox(height: 20,),
             Container(
              width: MediaQuery.of(context).size.width -200,
               child: OutlinedButton(onPressed: (){
                 if(_formkey.currentState!.validate()){
                      print('Success');
                    } else{
                      print('Bad');
                    };
               }, child: Text('LOGIN'),),
             ),

             
              TextButton(
                onPressed: () {},
                child: Text(
                  'continue as guest',
                  style: TextStyle(
                    
                    color: Colors.cyan,
                    fontSize: 14, letterSpacing: 5, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
                child: Text(
                  "I don't have an account yet",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
}
}