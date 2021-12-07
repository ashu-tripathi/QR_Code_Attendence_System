class RegexValidator {
  static String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  static String validateUserName(String value) {
    Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Invalid username';
    else
      return null;
  }

  static String validatePassword(String value) {
    Pattern pattern = r'^(?=.*[0-9@_]+.*)(?=.*[a-zA-Z@_]+.*)[0-9a-zA-Z@_]{6,}$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Invalid Password, include letters and numbers';
    else
      return null;
  }
}
