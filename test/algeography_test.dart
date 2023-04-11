import 'package:algeography/models/daira_model.dart';
import 'package:algeography/models/wilaya_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:algeography/algeography.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('getAllWilayas', () async {
    Algeography algeographyPlugin = Algeography();
    List<WilayaModel>? wilayasList = await algeographyPlugin.getAllWilayas();

    print('${wilayasList![18].wilayaFields!.arName}   ----   expected    =======>    سطيف');
  });

  test('getAllWilayasNames', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? wilayasNames = await algeographyPlugin.getAllWilayasNames();

    print('${wilayasNames![18]}   ----   expected    =======>    Setif');
  });

  test('getAllWilayasArabicNames', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? wilayasArabicNames = await algeographyPlugin.getAllWilayasArabicNames();

    print('${wilayasArabicNames![18]}  ----   expected    =======>    سطيف');
  });




  test('getAllDairas', () async {
    Algeography algeographyPlugin = Algeography();
    List<DairaModel>? dairasList = await algeographyPlugin.getAllDairas();

    print('${dairasList![119].dairaFields!.arName}  ----   expected    =======>    الأربعاء');
  });

  test('getAllDairasNames', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasNames = await algeographyPlugin.getAllDairasNames();

    print('${dairasNames![119]}  ----   expected    =======>    Larbaa');
  });

  test('getAllDairasArabicNames', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasArabicNames = await algeographyPlugin.getAllDairasArabicNames();

    print('${dairasArabicNames![119]}  ----   expected    =======>    الأربعاء');
  });




  test('getWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilaya(number: 19);

    print(wilayaModel != null ? '${wilayaModel.wilayaFields!.arName}  ----   expected    =======>    سطيف'
        : "No wilaya found (try between 1 & 58)");
  });

  test('getWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilaya(number: 179);

    print(wilayaModel != null ? wilayaModel.wilayaFields!.arName
        : "No wilaya found (try between 1 & 58)  ----   expected    =======>    No wilaya found (try between 1 & 58)");
  });

  test('getWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilayaByName(name: 'setif');

    print(wilayaModel != null ? '${wilayaModel.wilayaFields!.arName}  ----   expected    =======>    سطيف'
        : "No wilaya found with this name");
  });

  test('getWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilayaByName(name: 'سطيف');

    print(wilayaModel != null ? '${wilayaModel.wilayaFields!.arName}  ----   expected    =======>    سطيف'
        : "No wilaya found with this name");
  });

  test('getWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilayaByName(name: 'etif');

    print(wilayaModel != null ? wilayaModel.wilayaFields!.arName
        : "No wilaya found with this name  ----   expected    =======>    No wilaya found with this name");
  });

  test('getWilayaNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? wilayaNumber = await algeographyPlugin.getWilayaNumber(name: "سطيف");

    print(wilayaNumber != null ? '$wilayaNumber  ----   expected    =======>    19'
        : "No wilaya found with this name");
  });

  test('getWilayaNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? wilayaNumber = await algeographyPlugin.getWilayaNumber(name: "Setif");

    print(wilayaNumber != null ? '$wilayaNumber  ----   expected    =======>    19'
        : "No wilaya found with this name");
  });

  test('getWilayaNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? wilayaNumber = await algeographyPlugin.getWilayaNumber(name: "طيف");

    print(wilayaNumber != null ? wilayaNumber
        : "No wilaya found with this name  ----   expected    =======>    No wilaya found with this name");
  });

  test('getWilayaName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaName(number: 19);

    print(wilayaName != null ? '$wilayaName  ----   expected    =======>    Setif' : "No wilaya found (try between 1 & 58)");
  });

  test('getWilayaName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaName(number: 191);

    print(wilayaName != null ? wilayaName
        : "No wilaya found (try between 1 & 58)  ----   expected    =======>    No wilaya found (try between 1 & 58)");
  });

  test('getWilayaArabicName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaArabicName(number: 19);

    print(wilayaName != null ? '$wilayaName  ----   expected    =======>    سطيف'
        : "No wilaya found (try between 1 & 58)");
  });

  test('getWilayaArabicName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaArabicName(number: 119);

    print(wilayaName != null ? wilayaName
        : "No wilaya found (try between 1 & 58)  ----   expected    =======>    No wilaya found (try between 1 & 58)");
  });




  test('getDaira', () async {
    Algeography algeographyPlugin = Algeography();
    DairaModel? dairaModel = await algeographyPlugin.getDaira(number: 19);

    print(dairaModel != null ? '${dairaModel.dairaFields!.arName}  ----   expected    =======>    الشلف'
        : "No daira found (try between 1 & 547)");
  });

  test('getDaira', () async {
    Algeography algeographyPlugin = Algeography();
    DairaModel? dairaModel = await algeographyPlugin.getDaira(number: 1719);

    print(dairaModel != null ? dairaModel.dairaFields!.arName
        : "No daira found (try between 1 & 547)  ----   expected    =======>    No daira found (try between 1 & 547)");
  });

  test('getDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    DairaModel? dairaModel = await algeographyPlugin.getDairaByName(name: 'azzaba');

    print(dairaModel != null ? '${dairaModel.dairaFields!.arName}  ----   expected    =======>    عزابة'
        : "No daira found with this name");
  });

  test('getDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    DairaModel? dairaModel = await algeographyPlugin.getDairaByName(name: 'عزابة');

    print(dairaModel != null ? '${dairaModel.dairaFields!.arName}  ----   expected    =======>    عزابة'
        : "No daira found with this name");
  });

  test('getDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    DairaModel? dairaModel = await algeographyPlugin.getDairaByName(name: 'azza');

    print(dairaModel != null ? dairaModel.dairaFields!.arName
        : "No daira found with this name  ----   expected    =======>    No daira found with this name");
  });

  test('getDairaNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? dairaNumber = await algeographyPlugin.getDairaNumber(name: "عزابة");

    print(dairaNumber != null ? '$dairaNumber  ----   expected    =======>    269'
        : "No daira found with this name");
  });

  test('getDairaNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? dairaNumber = await algeographyPlugin.getDairaNumber(name: "azzaba");

    print(dairaNumber != null ? '$dairaNumber  ----   expected    =======>    269'
        : "No daira found with this name");
  });

  test('getDairaNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? dairaNumber = await algeographyPlugin.getDairaNumber(name: "عزاب");

    print(dairaNumber != null ? dairaNumber
        : "No daira found with this name  ----   expected    =======>    No daira found with this name");
  });

  test('getDairaName', () async {
    Algeography algeographyPlugin = Algeography();
    String? dairaName = await algeographyPlugin.getDairaName(number: 19);

    print(dairaName!=null ? '$dairaName  ----   expected    =======>    Chlef'
        : "No daira found (try between 1 & 547)");
  });

  test('getDairaName', () async {
    Algeography algeographyPlugin = Algeography();
    String? dairaName = await algeographyPlugin.getDairaName(number: 1911);

    print(dairaName!=null ? dairaName
        : "No daira found (try between 1 & 547)  ----   expected    =======>    No daira found (try between 1 & 547)");
  });

  test('getDairaArabicName', () async {
    Algeography algeographyPlugin = Algeography();
    String? dairaArabicName = await algeographyPlugin.getDairaArabicName(number: 1);

    print(dairaArabicName!=null ? '$dairaArabicName  ----   expected    =======>    أولف'
        : "No daira found (try between 1 & 547)");
  });

  test('getDairaArabicName', () async {
    Algeography algeographyPlugin = Algeography();
    String? dairaArabicName = await algeographyPlugin.getDairaArabicName(number: 1119);

    print(dairaArabicName!=null ? dairaArabicName
        : "No daira found (try between 1 & 547)  ----   expected    =======>    No daira found (try between 1 & 547)");
  });




  test('getWilayaNumOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? wilayaNumber = await algeographyPlugin.getWilayaNumOfDairaByNumber(dairaNumber: 119);

    print(wilayaNumber != null ? '$wilayaNumber  ----   expected    =======>    9'
        : "No daira found (try between 1 & 547)");
  });

  test('getWilayaNumOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    int? wilayaNumber = await algeographyPlugin.getWilayaNumOfDairaByNumber(dairaNumber: 1119);

    print(wilayaNumber != null ? wilayaNumber
        : "No daira found (try between 1 & 547)  ----   expected    =======>    No daira found (try between 1 & 547)");
  });

  test('getWilayaNumOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    int? wilayaNumber = await algeographyPlugin.getWilayaNumOfDairaByName(dairaName: "azzaba");

    print(wilayaNumber != null ? '$wilayaNumber  ----   expected    =======>    21'
        : "No daira found (try between 1 & 547)");
  });

  test('getWilayaNumOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    int? wilayaNumber = await algeographyPlugin.getWilayaNumOfDairaByName(dairaName: "if");

    print(wilayaNumber != null ? wilayaNumber
        : "No daira found by this name  ----   expected    =======>    No daira found by this name");
  });

  test('getWilayaNameOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaNameOfDairaByNumber(dairaNumber: 119);

    print(wilayaName != null ? '$wilayaName  ----   expected    =======>    Blida'
        : "No daira found (try between 1 & 547)");
  });

  test('getWilayaNameOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaNameOfDairaByNumber(dairaNumber: 1119);

    print(wilayaName != null ? wilayaName
        : "No daira found (try between 1 & 547)  ----   expected    =======>    No daira found (try between 1 & 547)");
  });

  test('getWilayaNameOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaNameOfDairaByName(dairaName: "azzaba");

    print(wilayaName != null ? '$wilayaName  ----   expected    =======>    Skikda'
        : "No daira found (try between 1 & 547)");
  });

  test('getWilayaNameOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaNameOfDairaByName(dairaName: "if");

    print(wilayaName != null ? wilayaName
        : "No daira found by this name  ----   expected    =======>    No daira found by this name");
  });

  test('getWilayaArabicNameOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaArabicNameOfDairaByNumber(dairaNumber: 119);

    print(wilayaName != null ? '$wilayaName  ----   expected    =======>    البليدة' : "No daira found (try between 1 & 547)");
  });

  test('getWilayaArabicNameOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaArabicNameOfDairaByNumber(dairaNumber: 1119);

    print(wilayaName != null ? wilayaName
        : "No daira found (try between 1 & 547)  ----   expected    =======>    No daira found (try between 1 & 547)");
  });

  test('getWilayaArabicNameOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaArabicNameOfDairaByName(dairaName: "azzaba");

    print(wilayaName != null ? '$wilayaName  ----   expected    =======>    سكيكدة'
        : "No daira found (try between 1 & 547)");
  });

  test('getWilayaArabicNameOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    String? wilayaName = await algeographyPlugin.getWilayaArabicNameOfDairaByName(dairaName: "if");

    print(wilayaName != null ? wilayaName
        : "No daira found by this name  ----   expected    =======>    No daira found by this name");
  });

  test('getWilayaOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilayaOfDairaByNumber(dairaNumber: 119);

    print(wilayaModel!= null ? '${wilayaModel.wilayaFields!.arName}  ----   expected    =======>    البليدة'
        : "No daira found (try between 1 & 547)");
  });

  test('getWilayaOfDairaByNumber', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilayaOfDairaByNumber(dairaNumber: 1119);

    print(wilayaModel!= null ? wilayaModel.wilayaFields!.arName
        : "No daira found (try between 1 & 547)  ----   expected    =======>    No daira found (try between 1 & 547)");
  });

  test('getWilayaOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilayaOfDairaByName(dairaName: "azzaba");

    print(wilayaModel!= null ? '${wilayaModel.wilayaFields!.arName}  ----   expected    =======>    سكيكدة'
        : "No daira found by this name");
  });

  test('getWilayaOfDairaByName', () async {
    Algeography algeographyPlugin = Algeography();
    WilayaModel? wilayaModel = await algeographyPlugin.getWilayaOfDairaByName(dairaName: "if");

    print(wilayaModel!= null ? wilayaModel.wilayaFields!.arName
        : "No daira found by this name  ----   expected    =======>    No daira found by this name");
  });




  test('getAllDairasOfWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    List<DairaModel>? dairasList = await algeographyPlugin.getAllDairasOfWilaya(wilayaNumber: 19);

    print(dairasList!.isNotEmpty ? '${dairasList.length}  ----   expected    =======>    20'
        : "No dairas found for this wilaya");
  });

  test('getAllDairasOfWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    List<DairaModel>? dairasList = await algeographyPlugin.getAllDairasOfWilaya(wilayaNumber: 198);

    print(dairasList!.isNotEmpty ? dairasList.length
        : "Error has occurred (Wrong Wilaya Number)  ----   expected    =======>    Error has occurred (Wrong Wilaya Number)");
  });

  test('getAllDairasNamesOfWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasNames = await algeographyPlugin.getAllDairasNamesOfWilaya(wilayaNumber: 19);

    print(dairasNames!.isNotEmpty ? '${dairasNames.length}  ----   expected    =======>    20'
        : "No dairas found for this wilaya");
  });

  test('getAllDairasNamesOfWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasNames = await algeographyPlugin.getAllDairasNamesOfWilaya(wilayaNumber: 198);

    print(dairasNames!.isNotEmpty ? dairasNames.length
        : "Error has occurred (Wrong Wilaya Number)  ----   expected    =======>    Error has occurred (Wrong Wilaya Number)");
  });

  test('getAllDairasArabicNamesOfWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasArabicNames = await algeographyPlugin.getAllDairasArabicNamesOfWilaya(wilayaNumber: 19);

    print(dairasArabicNames!.isNotEmpty ? '${dairasArabicNames.length}  ----   expected    =======>    20'
        : "No dairas found for this wilaya");
  });

  test('getAllDairasArabicNamesOfWilaya', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasArabicNames = await algeographyPlugin.getAllDairasArabicNamesOfWilaya(wilayaNumber: 198);

    print(dairasArabicNames!.isNotEmpty ? dairasArabicNames.length
        : "Error has occurred (Wrong Wilaya Number)  ----   expected    =======>    Error has occurred (Wrong Wilaya Number)");
  });




  test('getAllDairasOfWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    List<DairaModel>? dairasList = await algeographyPlugin.getAllDairasOfWilayaByName(wilayaName: "SkiKdA");

    print(dairasList!.isNotEmpty ? '${dairasList.length}  ----   expected    =======>    13'
        : "Error has occurred");
  });

  test('getAllDairasOfWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    List<DairaModel>? dairasList = await algeographyPlugin.getAllDairasOfWilayaByName(wilayaName: "name");

    print(dairasList!.isNotEmpty ? dairasList.length
        : "Error has occurred (Wrong Wilaya Name)  ----   expected    =======>    Error has occurred (Wrong Wilaya Name)");
  });

  test('getAllDairasNamesOfWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasList = await algeographyPlugin.getAllDairasNamesOfWilayaByName(wilayaName: "سطيف");

    print(dairasList!.isNotEmpty ? '${dairasList.length}  ----   expected    =======>    20'
        : "Error has occurred");
  });

  test('getAllDairasNamesOfWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasList = await algeographyPlugin.getAllDairasNamesOfWilayaByName(wilayaName: "مي");

    print(dairasList!.isNotEmpty ? dairasList.length
        : "Error has occurred (Wrong Wilaya Name)  ----   expected    =======>    Error has occurred (Wrong Wilaya Name)");
  });

  test('getAllDairasArabicNamesOfWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasList = await algeographyPlugin.getAllDairasArabicNamesOfWilayaByName(wilayaName: "setif");

    print(dairasList!.isNotEmpty ? '${dairasList.length}  ----   expected    =======>    20'
        : "Error has occurred");
  });

  test('getAllDairasArabicNamesOfWilayaByName', () async {
    Algeography algeographyPlugin = Algeography();
    List<String>? dairasList = await algeographyPlugin.getAllDairasArabicNamesOfWilayaByName(wilayaName: "set");

    print(dairasList!.isNotEmpty ? dairasList.length
        : "Error has occurred (Wrong Wilaya Name)  ----   expected    =======>    Error has occurred (Wrong Wilaya Name)");
  });
}