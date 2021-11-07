// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'quesBank.dart';

class CpLang {
  List<Question> quesBank = [
    Question(
        q: 'What is a correct syntax to output "Hello World" in C++?', a: 3),
    Question(
        q: 'Which method can be used to find the length of a string?', a: 1),
    Question(
        q: 'Which header file lets us work with input and output objects?',
        a: 3),
    Question(
        q: 'To declare an array in C++, define the variable type with:', a: 4),
    Question(q: 'Array indexes start with:', a: 2),
    Question(q: 'How do you call a function in C++?', a: 1),
    Question(
        q: 'Which keyword is used to return a value inside a method?', a: 4),
    Question(q: 'Which statement is used to stop a loop?', a: 3),
    Question(
        q: 'How do you create a reference variable of an existing variable?',
        a: 1),
    Question(
        q: 'What is the correct way to create an object called myObj of MyClass?',
        a: 4),
  ];

  List<String> opt = [
    'Console.WriteLine("Hello World");',
    'print ("Hello World");',
    'cout << "Hello World";',
    'System.out.println("Hello World");',
    'length()',
    'getLength()',
    'len()',
    'getSize()',
    '#include <stream>',
    '#include <iosstring>',
    '#include <iostream>',
    '#include <inputstr>',
    '()',
    '{}',
    '<>',
    '[]',
    '1',
    '0',
    '-1',
    '0.1',
    'functionName();',
    'functionName[];',
    'functionName;',
    '(functionName);',
    'break',
    'void',
    'get',
    'return',
    'exit',
    'return',
    'break',
    'stop',
    'With the & operator',
    'With the REF word',
    ' With the * operator',
    'With the ref word',
    'class MyClass = new myObj();',
    'new myObj = MyClass();',
    'class myObj = new MyClass();',
    'MyClass myObj;'
  ];
}
