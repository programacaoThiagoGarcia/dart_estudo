import 'dart:io';
import 'dart:convert';

Future<void> main(List<String> args) async {
  var host = 'https://jsonplaceholder.typicode.com/posts';
  Map<String, dynamic> _json = {'title': 'foo', 'body': 'bar', 'userId': 1};

  await makePostRequest(host, _json).catchError((e) {
    print(e.cause.toUpperCase());
  }).then((value) => {print(value)});

  final host_get = 'https://jsonplaceholder.typicode.com/todos/1';

  await makeGetRequest(host_get).catchError((e) {
    print(e.cause.toUpperCase());
  }).then((value) => {print(value)});
}

//POST body
Future<Map<String, dynamic>> makePostRequest(
    String url, Map<String, dynamic> body) async {
  final cliente = HttpClient();

  HttpClientRequest post =
      await cliente.postUrl(Uri.parse(url)).whenComplete(() => cliente.close());

  final _jsonString = json.encode(body);
  List<int> bodyBytes = utf8.encode(_jsonString);
  post.headers.set('content-type', 'application/json');
  post.add(bodyBytes);

  HttpClientResponse post_response = await post.close();

  if (post_response.statusCode > 299) {
    throw ConnectError('Erro ${post_response.statusCode}');
  }
  final resp = await utf8.decodeStream(post_response);
  return json.decode(resp);
}

//GET
Future<Map<String, dynamic>> makeGetRequest(String url) async {
  HttpClient cliente = HttpClient();
  final request =
      await cliente.getUrl(Uri.parse(url)).whenComplete(() => cliente.close());
  HttpClientResponse response = await request.close();

  if (response.statusCode < 299) {
    return throw ConnectError('Erro ${response.statusCode}');
  }

  final body = await utf8.decodeStream(response);
  return json.decode(body);
}

//=============================================================================
//                           Request usando closure
//=============================================================================

Future<void> testePost(
    void Function(Map<String, dynamic>? resp, String? err) completion) async {
  var host = 'https://jsonplaceholder.typicode.com/posts';
  Map<String, dynamic> _json = {'title': 'foo', 'body': 'bar', 'userId': 1};
  try {
    var post_body = await makePostRequest(host, _json);
    completion(post_body, null);
  } catch (err) {
    completion(null, err.toString());
  }
}

// Para testar bast descomentar este método

// main(List<String> args) {
//   print('Make request...');
//   testePost((resp, err) {
//     if (err != null) {
//       print('Make conclude');
//       print(err);
//       return;
//     }
//     print('Make conclude');
//     print(resp);
//   });
// }

class ConnectError implements Exception {
  String cause;
  ConnectError(this.cause);
}

Never connectError() => throw ConnectError('Erro na conexão');
