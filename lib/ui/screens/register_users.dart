import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: RichText(
                  text: const TextSpan(
                      text: 'Se Connecter',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      )),
                ),
                ),
                // SizedBox(height: 15.0),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: RichText(
                  text: const TextSpan(
                      text: 'En utilisant nos services, vous acceptez \n nos Conditions et Déclarations de \n confidentialité',
                      style: TextStyle(
                        color: Colors.black,
                        // fontSize: 30.0,
                      )),
                ),
                ),
                const SizedBox(height: 50.0,),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Mot de passe',
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/Home'),
                        child: Text(
                          'Se connecter'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 30.0),
                      child: const Text('Mot de passe oublié ? Cliquez'),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: -10)
                      ),
                      onPressed:() => {},
                      child: const Text('ici')
                    ),
                  ],
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        onPressed: () => {},
                        child: const Text('Se connecter via Google')
                      ),
                      Container(
                        child: const Text('Vous êtes nouveau ici ? Créer un compte'),
                      ),
                      const Text('')
                    ],
                  ),
                ),
                               
                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                //   child: RichText(
                //     text: const TextSpan(
                //       text: 'Mot de passe oublié ',
                //       style: TextStyle(
                //         color: Colors.black
                //       ),
                //       children: [
                //         TextButton(onPressed: onPressed, child: child)
                //       ]
                //     ),
                    
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}