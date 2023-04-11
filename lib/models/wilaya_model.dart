class WilayaModel {
  String? model;
  int? pk;
  WilayaFields? wilayaFields;

  WilayaModel({this.model, this.pk, this.wilayaFields});

  WilayaModel.fromJson(Map<String, dynamic> json) {
    model = json['model'];
    pk = json['pk'];
    wilayaFields =
    json['fields'] != null ? new WilayaFields.fromJson(json['fields']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['model'] = this.model;
    data['pk'] = this.pk;
    if (this.wilayaFields != null) {
      data['fields'] = this.wilayaFields!.toJson();
    }
    return data;
  }
}

class WilayaFields {
  String? name;
  String? arName;

  WilayaFields({this.name, this.arName});

  WilayaFields.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    arName = json['ar_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['ar_name'] = this.arName;
    return data;
  }
}