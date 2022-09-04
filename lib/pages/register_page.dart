import 'package:flutter/material.dart';
import 'package:flutter_codigo_state/models/person_model.dart';
import 'package:flutter_codigo_state/providers/counter_provider.dart';
import 'package:flutter_codigo_state/providers/person_provider.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // CounterProvider _counterProvider = Provider.of(context);
    PersonProvider _personProvider = Provider.of<PersonProvider>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          // Text(_counterProvider.counter.toString()),
        ],
        title: Text("Register Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(hintText: "Nompre"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: lastNameController,
                decoration: InputDecoration(hintText: "Apellidos"),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(hintText: "Dirección"),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  )),
                  onPressed: () {
                    PersonModel person = PersonModel(
                      name: nameController.text,
                      lastName: lastNameController.text,
                      address: addressController.text,
                    );
                    _personProvider.addNewPerson(person);
                  },
                  child: Text("Guardar"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      primary: Colors.redAccent),
                  onPressed: () {},
                  child: Text("Eliminar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
