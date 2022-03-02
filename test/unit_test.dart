
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learntesting/counter.dart';
void main()
{
  // test('counter value should be incremented', () async {

  //   // final testWidget = MaterialApp()

  //   final counter = Counter();
  //   counter.increment();

  //   expect(counter.value, 1);


    
  // });

  // if your function has several tests related to one another you can use GROUP

    group('Counter Function', (){

      test('value should start at 0', () {

        expect(Counter().value, 0);
        
      });

      test('value should be incremented', () {

        final counter = Counter();

        counter.increment();

        expect(counter.value, 1);
        
      });


      test('value should be decresed', () {

        final counter = Counter();
        counter.decrement();
        expect(counter.value, -1);
        
      });


    });
}