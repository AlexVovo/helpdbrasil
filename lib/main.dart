import 'package:flutter/material.dart';
import 'package:helpdepressao/tarefas.dart';

void main() => runApp(const HelpDApp());

class HelpDApp extends StatelessWidget {
  const HelpDApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelpD',
      theme: ThemeData(
        primaryColor: Colors.blue[800],
        hintColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue[800],
          ),
          labelLarge: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue[800],
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
      home: const HelpDScreen(),
    );
  }
}

class HelpDScreen extends StatefulWidget {
  const HelpDScreen({Key? key});

  @override
  _HelpDScreenState createState() => _HelpDScreenState();
}

class _HelpDScreenState extends State<HelpDScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HelpD'),
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
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TarefasScreen(),
                          ),
                        );
                      },
                      child: const Text('Iniciar'),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _isLoggedIn = false;
                          _usernameController.clear();
                          _passwordController.clear();
                        });
                      },
                      child: const Text('Sair'),
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
                  const SizedBox(height: 20),
                  TextField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Usuário',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Verificar usuário e senha (lógica simples para demonstração)
                      if (_usernameController.text == 'admin' &&
                          _passwordController.text == '1234') {
                        setState(() {
                          _isLoggedIn = true;
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Usuário ou senha incorretos'),
                          ),
                        );
                      }
                    },
                    child: const Text('Entrar'),
                  ),
                ],
              ),
      ),
    );
  }
}
