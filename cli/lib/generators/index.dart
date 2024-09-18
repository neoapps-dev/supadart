import 'package:yaml/yaml.dart';
import 'swagger/swagger.dart';
import 'standalone/exports.dart';
import 'standalone/enums.dart';
import 'standalone/duration_fromstring.dart';
import 'standalone/client_extension.dart';
import 'standalone/supadart_abstract_class.dart';
import 'utils/string_formatters.dart';
import 'class/class.dart';

List<GeneratedFile> supadartRun(
  DatabaseSwagger swagger,
  bool isDart,
  bool isSeparated,
  YamlMap? mappings,
) {
  final dartClasses = generateDartClasses(swagger, mappings);

  final clientExtension = generateClientExtension(swagger);
  final modelExports = generateExports(swagger, mappings);
  final enums = generateEnums(swagger);

  bool needsIntl = false;
  bool needsDartConvert = false;
  bool needsDurationFromString = false;
  for (var dartClass in dartClasses) {
    final classCode = dartClass.classCode;
    if (classCode.contains("DateFormat")) {
      needsIntl = true;
    }
    if (classCode.contains("json.") ||
        classCode.contains("jsonDecode") ||
        classCode.contains("jsonEncode")) {
      needsDartConvert = true;
    }
    if (classCode.contains("Duration")) {
      needsDurationFromString = true;
    }
    // Exit early if all conditions are met
    if (needsIntl && needsDartConvert && needsDurationFromString) break;
  }

  final supadartGenerator = SupadartGenerator(
    clientExtension: clientExtension,
    dartClasses: dartClasses,
    modelExports: modelExports,
    enums: enums,
    isDart: isDart,
    needsIntl: needsIntl,
    needsDartConvert: needsDartConvert,
    needsDurationFromString: needsDurationFromString,
    mappings: mappings,
  );
  return isSeparated
      ? supadartGenerator.generateDartModelFilesSeparated()
      : supadartGenerator.generateClassesSingleFile();
}

class GeneratedFile {
  final String fileName;
  final String fileContent;

  GeneratedFile({
    required this.fileName,
    required this.fileContent,
  });
}

class SupadartGenerator {
  final String clientExtension;
  final List<DartClass> dartClasses;
  final String modelExports;
  final String enums;

  // Package imports
  final bool isDart;
  final bool needsIntl;
  final bool needsDartConvert;

  // Function Imports
  final bool needsDurationFromString;

  final YamlMap? mappings;

  SupadartGenerator({
    required this.clientExtension,
    required this.dartClasses,
    required this.modelExports,
    required this.enums,
    required this.isDart,
    required this.needsIntl,
    required this.needsDartConvert,
    required this.needsDurationFromString,
    required this.mappings,
  });

  List<GeneratedFile> generateClassesSingleFile() {
    String code = "";

    code += getSupadartHeader(true);
    code += dartClasses.map((c) => c.classCode).join("\n");

    return [
      GeneratedFile(fileName: "generated_classes.dart", fileContent: code)
    ];
  }

  List<GeneratedFile> generateDartModelFilesSeparated() {
    List<GeneratedFile> output = [];

    final buffer = StringBuffer()..writeln('''
// ignore_for_file: non_constant_identifier_names, camel_case_types, file_namesimport, file_names, unnecessary_null_comparison
// WARNING: This code is auto-generated by Supadart.
// WARNING: Modifications may be overwritten. Please make changes in the Supadart configuration.
import 'supadart_header.dart';
''');

    output.addAll(dartClasses.map((dartClass) => GeneratedFile(
          fileName: classNameToFileName(dartClass.className),
          fileContent: '$buffer\n${dartClass.classCode}',
        )));

    output.add(GeneratedFile(
      fileName: "supadart_exports.dart",
      fileContent: modelExports,
    ));

    final supadartHeader = getSupadartHeader(false);
    output.add(GeneratedFile(
      fileName: "supadart_header.dart",
      fileContent: supadartHeader,
    ));

    return output;
  }

  String getSupadartHeader(
    bool isSingleFile,
  ) {
    final supadartImports = [
      "// ignore_for_file: non_constant_identifier_names, camel_case_types, file_namesimport, file_names, unnecessary_null_comparison",
      "\n",
      "// WARNING: This code is auto-generated by Supadart.",
      "// WARNING: Modifications may be overwritten. Please make changes in the SudaDart configuration.",
      "\n",
      "// SDK",
      isDart
          ? "import 'package:supabase/supabase.dart';"
          : "import 'package:supabase_flutter/supabase_flutter.dart';",
      "\n",
      needsIntl
          ? """
          // INTL is an official package from Dart and is used for parsing dates
          // flutter pub add intl or dart pub add intl
          ${isSingleFile ? "import" : "export"} 'package:intl/intl.dart';
          """
          : "// No Intl package needed",
      needsDartConvert
          ? "${isSingleFile ? "import" : "export"} 'dart:convert';"
          : "// No Dart Convert needed",
      "// Supadart Class",
      supadartAbstractClass,
      "\n",
      "// Supabase Client Extension",
      clientExtension,
      "\n",
      "// Enums",
      enums,
      "// Utils",
      needsDurationFromString ? durationFromStringExtension : "",
    ];
    return supadartImports.join("\n");
  }
}
