import 'dart:io';
import 'dart:convert';

main(List<String> args) async {
  var process = await Process.start('ls', ['-la'],
      workingDirectory: 'exercicio_06_command_line');

  process.stdout.transform(utf8.decoder).forEach((element) {
    writeDir(element);
  });
}

void writeDir(String element) async {
  await Process.run('rm', ['-rf', 'dir.txt'],
          workingDirectory: 'exercicio_06_command_line')
      .then((value) => print(value.stdout));

  new File('exercicio_06_command_line/dir.txt')
      .writeAsStringSync('${element}', mode: FileMode.write);
}
