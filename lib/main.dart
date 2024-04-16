import 'package:flutter/material.dart';
import 'tarefas.dart'; // Importando o arquivo tarefas.dart

void main() => runApp(HelpDApp());

class HelpDApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelpD',
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        hintColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue[800],
          ),
          button: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue[800],
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
      home: HelpDScreen(),
    );
  }
}

class HelpDScreen extends StatefulWidget {
  @override
  _HelpDScreenState createState() => _HelpDScreenState();
}

class _HelpDScreenState extends State<HelpDScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HelpD'),
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _isLoggedIn
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bem-vindo ao HelpD!',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TarefasScreen()),
                        );
                      },
                      child: Text('Iniciar'),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLoggedIn = false;
                          _usernameController.clear();
                          _passwordController.clear();
                        });
                      },
                      child: Text('Sair'),
                    ),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/logo7.png',
                    height: 50,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Usuário',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Verificar usuário e senha (lógica simples para demonstração)
                      if (_usernameController.text == 'user' &&
                          _passwordController.text == 'password') {
                        setState(() {
                          _isLoggedIn = true;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Usuário ou senha incorretos'),
                          ),
                        );
                      }
                    },
                    child: Text('Entrar'),
                  ),
                ],
              ),
      ),
    );
  }
}
