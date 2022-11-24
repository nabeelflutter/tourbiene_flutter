class FaceBookDrawer {
  Map? _map = {};
  FaceBookDrawer(this._map);
  Map? getMap() {
    return _map;
  }

  set setMap(Map map) {
    _map = map;
  }
}
