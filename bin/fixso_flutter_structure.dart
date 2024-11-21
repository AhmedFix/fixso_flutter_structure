import 'dart:io';
import 'package:fixso_flutter_structure/fixso_flutter_structure.dart';

void main(List<String> args) {
  // Check if the user provided a target directory
  if (args.isEmpty) {
    print('Usage: dart run fixso_flutter_structure <target_directory>');
    return;
  }

  final String targetDir = args[0];

  // Call the function to generate the project structure
  generateProjectStructure(targetDir);
}
