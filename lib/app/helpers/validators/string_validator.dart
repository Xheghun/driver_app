import 'package:string_validator/string_validator.dart';

///Checks if a String input is a valid email format
isTextEmail(String text) => isEmail(text);

///Checks if a String input is conains only numbers
isTextNumeric(String text) => isNumeric(text);
