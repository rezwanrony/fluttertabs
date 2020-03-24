class Laptop{
  String _name;
  String _images;

  Laptop(this._name, this._images);

  String get images => _images;

  set images(String value) {
    _images = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


}