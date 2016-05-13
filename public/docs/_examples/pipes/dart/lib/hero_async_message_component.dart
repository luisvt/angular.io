// #docregion

import 'dart:async';

import 'package:angular2/angular2.dart';
import 'package:rxdart/src/observable.dart';
import 'package:rxdart/src/observable/stream.dart';

// Initial view: "Message: "
// After 500ms: Message: You are my Hero!"

@Component(
    selector: 'hero-message',
    template: '''
    <h2>Async Hero Message and AsyncPipe</h2>

    <p>Message: {{ message | async }}</p>

    <button (click)="resend()">Resend</button>''',
    pipes: const [AsyncPipe])
class HeroAsyncMessageComponent {
  Observable<String> message;

  HeroAsyncMessageComponent() {
    resend();
  }

  resend() {
    message = observable(new StreamController().stream).interval(const Duration(milliseconds: 500))
        .map((i) => messages[i])
        .take(messages.length);
  }

  List<String> messages = [
    'You are my hero!',
    'You are the best hero!',
    'Will you be my hero?'
  ];
}
// #enddocregion

// Alternative message$ formula:
// this.message$ = Observable.fromArray(this.messages)
//   .map(message => Observable.timer(500).map(() => message))
//   .concatAll();
