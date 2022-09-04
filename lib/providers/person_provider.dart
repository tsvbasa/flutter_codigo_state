import 'package:flutter/material.dart';
import 'package:flutter_codigo_state/models/person_model.dart';

class PersonProvider extends ChangeNotifier {

  PersonModel? _personModel;

  bool get checkPerson => _personModel != null;

  // PersonModel? get personData => _personModel;

  //Metodo para agregar un PersonModel

  addNewPerson(PersonModel model){
    _personModel = model;
    notifyListeners();
  }

}