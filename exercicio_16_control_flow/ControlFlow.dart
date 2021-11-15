/*
  Control flow statements
  https://dart.dev/guides/language/language-tour#control-flow-statements
     * if and else
     * for loops
     * while and do-while loops
     * break and continue
     * switch and case
     * assert
 */

enum Weather { SUNNY, CLOUDY, COLD, RAINING, SNOWING, OTHER }

void main(List<String> args) {
  var weathers = Weather.values;
  print('===============    FOR   ========================');
  for (var i = 0; i < weathers.length; i++) {
    print(weathers[i].toString());
  }

  print('===============    FOR 2   ========================');
  for (var weather in weathers) {
    print(weather.toString());
  }
  print('===============    WHILE   ========================');
  var index = 0;
  while (index < weathers.length) {
    print(weathers[index].toString());
    index++;
  }
  print('===============    FOR EACH   ========================');
  weathers.forEach((element) {
    print(element.toString());
  });

  print('===============    IF ELSE   ========================');
  weathers.forEach((element) {
    useIfElse(element);
  });

  print('===============    SWITCH   ========================');
  weathers.forEach((element) {
    useSwitch(element);
  });

  print('===============    ASSERT   ========================');
  weathers.forEach((element) {
    useAssert(element);
  });
}

void useIfElse(Weather weather) {
  if (weather == Weather.SUNNY) {
    print('0');
  } else if (weather == Weather.CLOUDY) {
    print('1');
  } else if (weather == Weather.COLD) {
    print('2');
  } else if (weather == Weather.RAINING) {
    print('3');
  } else if (weather == Weather.SNOWING) {
    print('4');
  } else {
    print('ELSE');
  }
}

void useSwitch(Weather weather) {
  switch (weather) {
    case Weather.SUNNY:
      print('0');
      break;
    case Weather.CLOUDY:
      print('1');
      break;
    case Weather.COLD:
      print('2');
      break;
    case Weather.RAINING:
      print('3');
      break;
    case Weather.SNOWING:
      print('4');
      break;
    default:
      print('DEFAULT');
  }
}

void useAssert(Weather weather) {
  assert(
      weather == Weather.SUNNY ||
          weather == Weather.CLOUDY ||
          weather == Weather.COLD ||
          weather == Weather.RAINING ||
          weather == Weather.SNOWING,
      'ERRO, NÃO ESPERADO TIPO => $weather');

  /*
      Para a execução no instante que uma das condições deixa de ser verdadeira, isto deixa de funcionar quando corremos a na versão produção
   */
}


