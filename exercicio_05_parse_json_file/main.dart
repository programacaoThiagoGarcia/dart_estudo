import 'dart:convert';
import 'dart:io';
import 'Companies.dart';

main(List<String> args) {
// Leitura de um arquio
  File file = new File('quinto_programa_parse_json_file/file.json');
  Stream<List<int>> inputStream = file.openRead();
  inputStream.transform(utf8.decoder).transform(new LineSplitter()).listen(
      (String line) {
    print('$line');
  }, onDone: () {
    print('File is now closed.');
  }, onError: (e) {
    print(e.toString());
  });

  Stream<List<int>> inputStream2 = file.openRead();
  inputStream2
      .transform(utf8.decoder)
      .transform(new LineSplitter())
      .forEach((element) {
    convert(element);
  });
}

void convert(String txt) async {
  var parsedJson = json.decode(txt);
  var companies = Companies.fromJson(parsedJson);

  for (final company in companies.company!) {
    writeFile(company);
  }

  var process = await Process.start('ls', ['-l'],
      workingDirectory: 'exercicio_05_parse_json_file');

  process.stdout.transform(utf8.decoder).forEach((element) {
    writeDir(element);
  });

  for (final item in companies.company!) {
    await Process.run('rm', ['-rf', '${item.sName}.txt'],
            workingDirectory: 'exercicio_05_parse_json_file')
        .then((value) => print(value.stdout));
  }
}

//Escrever um Arquivo
void writeFile(Company company) {
  new File('exercicio_05_parse_json_file/companies.txt')
      .writeAsStringSync('${company.sName}\n', mode: FileMode.append);
}

void writeDir(String element) async {
  await Process.run('rm', ['-rf', 'dir.txt'],
          workingDirectory: 'exercicio_05_parse_json_file')
      .then((value) => print(value.stdout));

  new File('exercicio_05_parse_json_file/dir.txt')
      .writeAsStringSync('${element}', mode: FileMode.write);
}
