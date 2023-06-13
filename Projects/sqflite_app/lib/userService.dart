import 'package:sqflite_app/repository.dart';
import 'package:sqflite_app/usermodel.dart';

class UserService {
  late Repository _repository;

  UserService() {
    _repository = Repository();
  }

  saveuser(UserModel userModel) async {
    return await _repository.insertdata("Flower", userModel.UserModelMap());
  }

  readuser() async {
    return await _repository.readalldata("Flower");
  }

  udateuser(UserModel userModel) async {
    return await _repository.updatedata("Flower", userModel.UserModelMap());
  }

  deleteuser(userid) async {
    return await _repository.deleteData("Flower", userid);
  }
}
