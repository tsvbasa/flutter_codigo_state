import 'package:flutter/material.dart';
import 'package:flutter_codigo_state/pages/register_page.dart';
import 'package:flutter_codigo_state/providers/counter_provider.dart';
import 'package:flutter_codigo_state/providers/person_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // CounterProvider _counterProvider = Provider.of<CounterProvider>(context);
    PersonProvider _personProvider = Provider.of<PersonProvider>(context);
    print(_personProvider.checkPerson);
    // print(_personProvider.personData!.name);

    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nombres: Angela Veronica",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Apellidos: Tellez Arevalo",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Dirección: Av. Cayma 123",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            // Text(_counterProvider.counter.toString()),
            // ElevatedButton(
            //     onPressed: () {
            //       // _counterProvider.addCounter();
            //     },
            //     child: Text(
            //       "Add",
            //     )),
          ],
        ),
      ),
    );
  }
}
