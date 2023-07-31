import 'package:flutter/material.dart';
import 'package:flutter_app/views/screens/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  final GlobalKey<FormState>_formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                'Register to the Zone',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3),
              ),
              SizedBox(height: 25,),
              Row( 
                  children: [
                    Flexible(child: TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please first name must not be empty';
                        } else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        labelText: 'Firstname',
                        prefixIcon: Icon(Icons.toggle_on),
                      
                      ),
                    
                      ),
                    ),
                    
                    SizedBox(
                      width: 10,

                    ),
                    Flexible(child:TextFormField(
                      validator: (value){
                        if(value!.isEmpty){
                          return 'Please first name must not be empty';
                        }else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        
                        labelText: 'Lastname',
                        prefixIcon: Icon(Icons.person)
                      ),
                      
                    ) ,)
                  ],
                ),
                SizedBox(height: 20,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please first name must not be empty';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    prefixIcon: Icon(Icons.mail)
                  )
                ),
                SizedBox(height: 20,
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please first name must not be empty';
                    }else{
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock)
                  ),
                
                ),
                SizedBox(height: 25,),
                Container(
                  width: MediaQuery.of(context).size.width -200,
                  child: OutlinedButton(onPressed: (){
                    if(_formkey.currentState!.validate()){
                      print('Success');
                    } else{
                      print('Bad');
                    }
                  }, child: Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.cyan.shade400,
                    ),
                  
                  ),
                  
               ),
                ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'continue as a guest',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 5,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Loginscreen();
                  }));
              }, child: Text('Have an account'

              ),),
            ],

            ),
          ),
        ),
      ),


    );
  }


}