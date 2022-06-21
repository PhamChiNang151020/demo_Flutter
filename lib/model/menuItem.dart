class ItemMenu {
  String? name;
  String? icon;
  String? screen;

  ItemMenu({this.name, this.icon, this.screen});

  ItemMenu.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
    screen = json['screen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['screen'] = this.screen;
    return data;
  }
}
