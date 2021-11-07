// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'quesBank.dart';

class JLang {
  List<Question> quesBank = [
    Question(
        q: 'What is a correct syntax to output "Hello World" in Java?', a: 1),
    Question(q: 'How do you insert COMMENTS in Java code?', a: 2),
    Question(
        q: 'Which data type is used to create a variable that should store text?',
        a: 3),
    Question(q: 'How do you create a variable with the numeric value 5?', a: 2),
    Question(
        q: 'Which method can be used to find the length of a string?', a: 1),
    Question(
        q: 'Which method can be used to return a string in upper case letters?',
        a: 4),
    Question(q: 'How do you create a method in Java?', a: 4),
    Question(
        q: 'What is the correct way to create an object called myObj of MyClass?',
        a: 2),
    Question(
        q: 'Which method can be used to find the highest value of x and y?',
        a: 3),
    Question(
        q: 'Which keyword is used to import a package from the Java API library?',
        a: 3),
  ];

  List<String> opt = [
    'System.out.println("Hello World");',
    'Console.WriteLine("Hello World");',
    'echo("Hello World");',
    'print ("Hello World");',
    '/* This is a comment',
    '// This is a comment ',
    '# This is a comment',
    '@ This is a comment',
    'myString',
    'Txt',
    'String',
    'string',
    'float x = 5;',
    'int x = 5;',
    'num x = 5',
    'x = 5;',
    'length()',
    'getLength()',
    'getSize()',
    'len()',
    'upperCase()',
    'touppercase()',
    'tuc()',
    'toUpperCase()',
    'methodName[]',
    '(methodName)',
    'methodName.',
    'methodName()',
    'class myObj = new MyClass();',
    'MyClass myObj = new MyClass();',
    'new myObj = MyClass();',
    'class MyClass = new myObj();',
    'Math.largest(x,y)',
    'Math.maxNum(x,y)',
    'Math.max(x,y)',
    'Math.maximum(x,y)',
    'getlib',
    'lib',
    'import',
    'package',
  ];
}
