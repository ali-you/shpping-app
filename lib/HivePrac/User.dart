import 'package:hive/hive.dart';
part 'User.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject{
  @HiveField(0)
  String username;
  @HiveField(1)
  String password;

  User({this.username, this.password});
}


// flutter packages pub run build_runner build
