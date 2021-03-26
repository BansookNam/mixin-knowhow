import 'dart:async';

void delay(Function func, {int milliseconds = 300}) async {
  Timer(Duration(milliseconds: milliseconds), () {
    func();
  });
}

Timer delayTimer(Function func, {int milliseconds = 300}) {
  return Timer(Duration(milliseconds: milliseconds), () {
    func();
  });
}

Future sleep(int milliSec) {
  return Future.delayed(Duration(milliseconds: milliSec), () => {});
}

Future sleepWhile(bool Function() predict, {milliSeconds = 200}) async {
  while (predict()) {
    await sleep(milliSeconds);
  }
}
