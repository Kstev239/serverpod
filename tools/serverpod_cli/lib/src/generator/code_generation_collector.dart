import 'dart:io';

import 'package:serverpod_cli/analyzer.dart';

/// A [CodeAnalysisCollector] that also keeps track of generated files.
class CodeGenerationCollector extends CodeAnalysisCollector {
  /// All the errors reported.
  @override
  final List<SourceSpanException> errors = [];

  /// All the generated files reported.
  final Set<File> generatedFiles = {};

  @override
  void addError(SourceSpanException error) {
    errors.add(error);
  }

  @override
  void addErrors(List<SourceSpanException> errors) {
    this.errors.addAll(errors);
  }

  @override
  String toString() {
    var out = '';

    out += 'Found ${errors.length} error${errors.length == 1 ? '' : 's'}.\n';
    out += '\n';

    for (var error in errors) {
      out += '$error\n\n';
    }

    return out;
  }

  @override
  void printErrors() {
    if (errors.isEmpty) {
      return;
    }
    stdout.write(toString());
  }

  @override
  void clearErrors() {
    errors.clear();
  }

  /// Report a generated file.
  void addGeneratedFile(File file) {
    generatedFiles.add(file);
  }

  /// Clear the list of generated files.
  void clearGeneratedFiles() {
    generatedFiles.clear();
  }
}
