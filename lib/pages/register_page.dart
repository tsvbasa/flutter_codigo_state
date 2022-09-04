import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  onPressed: () {},
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
