import './todos/todo_provider.dart';
import './todos/learn_map.dart';
import 'package:path/path.dart';
import 'dart:io';

void main() {
  checkFile("test.text");
}

Future<void> trackDevice() async {
  final List<String> command =
      Platform.isLinux ? ['ls', '-l'] : ['cmd', '/c', 'type nul > example.txt'];

  //try catch
  try {
    Process process = await Process.start(command.first, command.sublist(1));

    //Success output
    process.stdout.transform(SystemEncoding().decoder).listen((data) {
      print('Output: $data');
    });

    //Error output
    process.stderr.transform(SystemEncoding().decoder).listen((data) {
      print('STDERR: $data');
    });
    int exitCode = await process.exitCode;
    print('Exit code: $exitCode');
  } catch (e) {
    print('🔥trackDevice error: ${e}');
  }
}

//TODO: complete the project
Future<void> checkFile(String file) async {
  print(Platform.isWindows);
  try {} catch (e) {
    print("🔥CheckFile: $e");
  }
}
