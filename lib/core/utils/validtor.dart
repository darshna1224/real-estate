class Validation {
  Validation._();
  static emailidValidation(String value) {
    RegExp regExp = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    if (value == "") {
      return "Please enter your email address.";
    } else if (!regExp.hasMatch(value)) {
      return "Please enter a valid email address.";
    }

    return null;
  }

  static phoneValidation(String value) {
    if (value == "" || value.isEmpty) {
      return 'Please enter phone number';
    }
    if (value.length != 10) {
      return 'Please enter correct phone number';
    }
  }

  static nameValidation(String value) {
    if (value == "" || value.isEmpty) {
      return 'Please enter your name';
    }
  }
}
