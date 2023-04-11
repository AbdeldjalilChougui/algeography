class DairaModel {
  String? model;
  DairaFields? dairaFields;
  int? pk;

  DairaModel({this.model, this.dairaFields, this.pk});

  DairaModel.fromJson(Map<String, dynamic> json) {
    model = json['model'];
    dairaFields =
    json['fields'] != null ? new DairaFields.fromJson(json['fields']) : null;
    pk = json['pk'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model'] = this.model;
    if (this.dairaFields != null) {
      data['fields'] = this.dairaFields!.toJson();
    }
    data['pk'] = this.pk;
    return data;
  }
}

class DairaFields {
  String? arName;
  String? name;
  int? wilaya;

  DairaFields({this.arName, this.name, this.wilaya});

  DairaFields.fromJson(Map<String, dynamic> json) {
    arName = json['ar_name'];
    name = json['name'];
    wilaya = json['wilaya'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ar_name'] = this.arName;
    data['name'] = this.name;
    data['wilaya'] = this.wilaya;
    return data;
  }
}