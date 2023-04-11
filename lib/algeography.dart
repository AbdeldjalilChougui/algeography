import 'dart:convert';
import 'package:algeography/models/daira_model.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/services.dart';
import 'package:algeography/models/wilaya_model.dart';

// Loading big files from assets with buffer (Without Isolate)
extension AssetBundleX on AssetBundle {
  Future<String> loadStringWithoutIsolate(String key) async {
    final ByteData data = await load(key);

    return utf8.decode(data.buffer.asUint8List());
  }
}

class Algeography {
  // Get All Wilayas
  Future<List<WilayaModel>?> getAllWilayas () async {
    List<WilayaModel>? wilayasList = [];

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      wilayasList.add(WilayaModel.fromJson(wilaya));
    }

    return wilayasList;
  }

  // Get All Wilayas Names
  Future<List<String>?> getAllWilayasNames () async {
    List<String>? wilayasNames = [];

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      wilayasNames.add(WilayaModel.fromJson(wilaya).wilayaFields!.name!);
    }

    return wilayasNames;
  }

  // Get All Wilayas Arabic Names
  Future<List<String>?> getAllWilayasArabicNames () async {
    List<String>? wilayasNames = [];

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      wilayasNames.add(WilayaModel.fromJson(wilaya).wilayaFields!.arName!);
    }

    return wilayasNames;
  }





  // Get All Dairas
  Future<List<DairaModel>?> getAllDairas () async {
    List<DairaModel>? dairasList = [];

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      dairasList.add(DairaModel.fromJson(daira));
    }

    return dairasList;
  }

  // Get All Dairas Names
  Future<List<String>?> getAllDairasNames () async {
    List<String>? dairasNames = [];

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      dairasNames.add(DairaModel.fromJson(daira).dairaFields!.name!);
    }

    return dairasNames;
  }

  // Get All Dairas Arabic Names
  Future<List<String>?> getAllDairasArabicNames () async {
    List<String>? dairasNames = [];

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      dairasNames.add(DairaModel.fromJson(daira).dairaFields!.arName!);
    }

    return dairasNames;
  }





  // Get Wilaya By Number
  Future<WilayaModel?> getWilaya ({int? number}) async {
    WilayaModel? wilayaModel;

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      if (wilaya["pk"] == number) {
        wilayaModel = WilayaModel.fromJson(wilaya);
        break;
      }
    }

    return wilayaModel;
  }

  // Get Wilaya By Name
  Future<WilayaModel?> getWilayaByName ({String? name}) async {
    WilayaModel? wilayaModel;

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      if (wilaya["fields"]["name"].toLowerCase() == name!.toLowerCase()
         || wilaya["fields"]["ar_name"] == name) {
        wilayaModel = WilayaModel.fromJson(wilaya);
        break;
      }
    }

    return wilayaModel;
  }

  // Get Wilaya Number Using Name (Eng + Ar)
  Future<int?> getWilayaNumber ({String? name}) async {
    WilayaModel? wilayaModel;

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      if (wilaya["fields"]["name"].toLowerCase() == name!.toLowerCase()
          || wilaya["fields"]["ar_name"] == name) {
        wilayaModel = WilayaModel.fromJson(wilaya);
        break;
      }
    }

    if (wilayaModel == null) {
      return null;
    }
    return wilayaModel.pk;
  }

  // Get Wilaya Name Using Number
  Future<String?> getWilayaName ({int? number}) async {
    WilayaModel? wilayaModel;

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      if (wilaya["pk"] == number) {
        wilayaModel = WilayaModel.fromJson(wilaya);
        break;
      }
    }

    if (wilayaModel == null) {
      return null;
    }
    return wilayaModel.wilayaFields!.name;
  }

  // Get Wilaya Arabic Name Using Number
  Future<String?> getWilayaArabicName ({int? number}) async {
    WilayaModel? wilayaModel;

    final jsonText = await rootBundle.loadString('assets/wilaya.json', cache: true);
    var wilayas = json.decode(jsonText);

    for (var wilaya in wilayas) {
      if (wilaya["pk"] == number) {
        wilayaModel = WilayaModel.fromJson(wilaya);
        break;
      }
    }

    if (wilayaModel == null) {
      return null;
    }
    return wilayaModel.wilayaFields!.arName;
  }





  // Get Daira
  Future<DairaModel?> getDaira ({int? number}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["pk"] == number) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    return dairaModel;
  }

  // Get Daira By Name
  Future<DairaModel?> getDairaByName ({String? name}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["fields"]["name"].toLowerCase() == name!.toLowerCase()
          || daira["fields"]["ar_name"] == name) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    return dairaModel;
  }

  // Get Daira Number Using Name (Eng + Ar)
  Future<int?> getDairaNumber ({String? name}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["fields"]["name"].toLowerCase() == name!.toLowerCase()
          || daira["fields"]["ar_name"] == name) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    return dairaModel.pk;
  }

  // Get Daira Name Using Number
  Future<String?> getDairaName ({int? number}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["pk"] == number) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    return dairaModel.dairaFields!.name;
  }

  // Get Daira Arabic Name Using Number
  Future<String?> getDairaArabicName ({int? number}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["pk"] == number) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    return dairaModel.dairaFields!.arName;
  }





  // Get Wilaya Number Of Daira Using Daira Number
  Future<int?> getWilayaNumOfDairaByNumber({int? dairaNumber}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["pk"] == dairaNumber) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    return dairaModel.dairaFields!.wilaya;
  }

  // Get Wilaya Number Of Daira Using Daira Name
  Future<int?> getWilayaNumOfDairaByName({String? dairaName}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["fields"]["name"].toLowerCase() == dairaName!.toLowerCase()
          || daira["fields"]["ar_name"] == dairaName) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    return dairaModel.dairaFields!.wilaya;
  }

  // Get Wilaya Name Of Daira Using Daira Number
  Future<String?> getWilayaNameOfDairaByNumber({int? dairaNumber}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["pk"] == dairaNumber) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    var wilayaName = await getWilayaName(number: dairaModel.dairaFields!.wilaya);

    if (wilayaName == null) {
      return null;
    }
    return wilayaName;
  }

  // Get Wilaya Name Of Daira Using Daira Name
  Future<String?> getWilayaNameOfDairaByName({String? dairaName}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["fields"]["name"].toLowerCase() == dairaName!.toLowerCase()
          || daira["fields"]["ar_name"] == dairaName) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    var wilayaName = await getWilayaName(number: dairaModel.dairaFields!.wilaya);

    if (wilayaName == null) {
      return null;
    }
    return wilayaName;
  }

  // Get Wilaya Arabic Name Of Daira Using Daira Number
  Future<String?> getWilayaArabicNameOfDairaByNumber({int? dairaNumber}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["pk"] == dairaNumber) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    var wilayaName = await getWilayaArabicName(number: dairaModel.dairaFields!.wilaya);

    if (wilayaName == null) {
      return null;
    }
    return wilayaName;
  }

  // Get Wilaya Arabic Name Of Daira Using Daira Name
  Future<String?> getWilayaArabicNameOfDairaByName({String? dairaName}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["fields"]["name"].toLowerCase() == dairaName!.toLowerCase()
          || daira["fields"]["ar_name"] == dairaName) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    var wilayaName = await getWilayaArabicName(number: dairaModel.dairaFields!.wilaya);

    if (wilayaName == null) {
      return null;
    }
    return wilayaName;
  }

  // Get Wilaya Of Daira Using Daira Number
  Future<WilayaModel?> getWilayaOfDairaByNumber({int? dairaNumber}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["pk"] == dairaNumber) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    var wilaya = await getWilaya(number: dairaModel.dairaFields!.wilaya);

    if (wilaya == null) {
      return null;
    }
    return wilaya;
  }

  // Get Wilaya Of Daira Using Daira Name
  Future<WilayaModel?> getWilayaOfDairaByName({String? dairaName}) async {
    DairaModel? dairaModel;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    for (var daira in dairas) {
      if (daira["fields"]["name"].toLowerCase() == dairaName!.toLowerCase()
          || daira["fields"]["ar_name"] == dairaName) {
        dairaModel = DairaModel.fromJson(daira);
        break;
      }
    }

    if (dairaModel == null) {
      return null;
    }
    var wilaya = await getWilaya(number: dairaModel.dairaFields!.wilaya);

    if (wilaya == null) {
      return null;
    }
    return wilaya;
  }





  // Get All Dairas Of a Wilaya Using Wilaya Number
  Future<List<DairaModel>?> getAllDairasOfWilaya({int? wilayaNumber}) async {
    List<DairaModel>? dairasList;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    dairasList = [];

    for (var daira in dairas) {
      if (daira["fields"]["wilaya"] == wilayaNumber) {
        dairasList.add(DairaModel.fromJson(daira));
      }
    }

    return dairasList;
  }

  // Get All Dairas Names Of a Wilaya Using Wilaya Number
  Future<List<String>?> getAllDairasNamesOfWilaya({int? wilayaNumber}) async {
    List<String>? dairasNames;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    dairasNames = [];

    for (var daira in dairas) {
      if (daira["fields"]["wilaya"] == wilayaNumber) {
        dairasNames.add(DairaModel.fromJson(daira).dairaFields!.name!);
      }
    }

    return dairasNames;
  }

  // Get All Dairas Arabic Names Of a Wilaya Using Wilaya Number
  Future<List<String>?> getAllDairasArabicNamesOfWilaya({int? wilayaNumber}) async {
    List<String>? dairasArabicNames;

    final jsonText = await rootBundle.loadStringWithoutIsolate('assets/daira.json');
    var dairas = json.decode(jsonText);

    dairasArabicNames = [];

    for (var daira in dairas) {
      if (daira["fields"]["wilaya"] == wilayaNumber) {
        dairasArabicNames.add(DairaModel.fromJson(daira).dairaFields!.arName!);
      }
    }

    return dairasArabicNames;
  }





  // Get All Dairas Of a Wilaya Using Wilaya Name
  Future<List<DairaModel>?> getAllDairasOfWilayaByName({String? wilayaName}) async {
    int? wilayaNumber = await getWilayaNumber(name: wilayaName);
    List<DairaModel>? dairaModel = [];

    dairaModel = await getAllDairasOfWilaya(wilayaNumber: wilayaNumber);

    return dairaModel;
  }

  // Get All Dairas Names Of a Wilaya Using Wilaya Name
  Future<List<String>?> getAllDairasNamesOfWilayaByName({String? wilayaName}) async {
    var wilayaNumber = await getWilayaNumber(name: wilayaName);
    List<String>? dairaModel = [];

    dairaModel = await getAllDairasNamesOfWilaya(wilayaNumber: wilayaNumber);

    return dairaModel;
  }

  // Get All Dairas Arabic Names Of a Wilaya Using Wilaya Name
  Future<List<String>?> getAllDairasArabicNamesOfWilayaByName({String? wilayaName}) async {
    var wilayaNumber = await getWilayaNumber(name: wilayaName);
    List<String>? dairaModel = [];

    dairaModel = await getAllDairasArabicNamesOfWilaya(wilayaNumber: wilayaNumber);

    return dairaModel;
  }
}