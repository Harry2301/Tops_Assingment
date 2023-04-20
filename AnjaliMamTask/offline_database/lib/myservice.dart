import 'package:flutter/material.dart';
import 'package:offline_database/mymodel.dart';
import 'package:offline_database/repository.dart';

class MyService {
  //obj creation of repository

  late Repository _repository;

  MyService() {
    _repository = Repository();
  }

  //to save data
  saveUser(Student student) async {
    return await _repository.insertData("STUDENT", student.StudendMap());
  }

  //to read data
  readAllUsers(Student student) async {
    return await _repository
      ..readData("STUDENT");
  }

  //update data
  updateData(Student student) async {
    return await _repository.updateData("STUDENT", student.StudendMap());
  }

  //deleteData
  deleteUser(itemID) async {
    return await _repository.deleteDataByID("STUDENT", itemID);
  }

  //read specific user
  readSpecificUser(itemID) async {
    return await _repository.readDataByID("STUDENT", itemID);
  }
}
