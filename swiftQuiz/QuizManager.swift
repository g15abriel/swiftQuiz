//
//  QuizManager.swift
//  swiftQuiz
//
//  Created by CLAUDIA MALHEIROS on 12/4/21.
//

import Foundation

class QuizManager {
    
    private let quizes: [(question: String, correctAnswer: String, options: [String])] = [
            (question: "print(2 + 2)", correctAnswer: "4",
             options: ["22", "4", "Erro", "2 + 2"]),
            (question: "print(3 * 2)", correctAnswer: "6",
             options: ["6", "3 * 2", "5", "23"]),
            (question: "print(4 / 2)", correctAnswer: "2",
             options: ["6", "4", "2", "8"]),
            (question: "print(3 + 7)", correctAnswer: "10",
             options: ["10", "4", "5", "3 + 7"]),
            (question: "print(5 * 3)", correctAnswer: "15",
             options: ["6", "5 * 3", "15", "53"]),
            (question: "print(9 / 3)", correctAnswer: "3",
             options: ["3", "4", "2", "8"]),
            (question: "print(100 / 10)", correctAnswer: "10",
             options: ["1", "100", "50", "10"]),
            (question: "print(5 + 3)", correctAnswer: "8",
             options: ["10", "5", "8", "6"]),
            (question: "print(10 * 4)", correctAnswer: "40",
             options: ["14", "40", "104", "10"]),
            (question: "print(12 / 3)", correctAnswer: "4",
             options: ["3", "4", "2", "8"]),
            //10
            (question:
                """
                    let a = 1
                    print(a+4)
                """, correctAnswer: "5",
             options: ["1", "5", "4", "6"]),
            (question:
                """
                    let a = 4
                    let b = 5
                    print(a+b)
                """, correctAnswer: "9",
             options: ["9", "5", "1", "6"]),
            (question:
                """
                    let a = 3
                    let b = 6
                    print(a * b)
                """, correctAnswer: "18",
             options: ["9", "18", "3", "6"]),
            (question:
                """
                    let a = 10
                    let b = 5
                    print(a / b)
                """, correctAnswer: "2",
             options: ["5", "15", "10", "2"]),
            (question:
                """
                    let a = 23
                    let b = 6
                    print(a+b)
                """, correctAnswer: "29",
             options: ["29", "19", "27", "30"]),
            (question:
                """
                    let a = 1
                    let b = 2
                    print(b+4)
                """, correctAnswer: "6",
             options: ["1", "5", "4", "6"]),
            (question:
                """
                    let a = 4
                    let b = 7
                    print(a+3)
                """, correctAnswer: "7",
             options: ["9", "7", "11", "4"]),
            (question:
                """
                    let a = 3
                    let b = 6
                    print(b * 2)
                """, correctAnswer: "12",
             options: ["3", "12", "5", "7"]),
            (question:
                """
                    let a = 10
                    let b = 5
                    print(b / 5)
                """, correctAnswer: "1",
             options: ["5", "2", "10", "1"]),
            (question:
                """
                    let a = 4
                    let b = 8
                    print(a+b)
                """, correctAnswer: "12",
             options: ["12", "4", "8", "10"]),
            //20
           (question: "print(\"az\" + \"bt\")", correctAnswer: "\"azbt\"",
            options: ["Erro", "\"az\"", "\"azbt\"", "\"bt\""]),
           (question: "print(\"1\" + \"a\")", correctAnswer: "\"1a\"",
            options: ["1", "a", "Erro", "\"1a\""]),
            (question: "print(\"1\" + \"1\")", correctAnswer: "\"11\"",
             options: ["11", "\"2\"", "\"11\"", "\"1 1\""]),
            (question: "print(\"bd\" + \"ac\")", correctAnswer: "\"bdac\"",
             options: ["\"bdac\"", "\"bd\"", "Erro", "\"ac\""]),
            (question: "print(\"mo\" + \"ty\")", correctAnswer: "\"moty\"",
             options: ["\"mo\"", "Erro", "\"ty\"", "\"moty\""]),
            (question: "print(\"12\" + \"24\")", correctAnswer: "\"1224\"",
             options: ["Erro", "\"1224\"", "36", "\"36\""]),
            (question: "print(\"az\" + \"32\")", correctAnswer: "\"az32\"",
             options: ["\"az32\"", "\"az\"", "Erro", "\"32\""]),
             (question: "print(\"11\" + \"11\")", correctAnswer: "\"1111\"",
              options: ["11", "\"22\"", "\"11\"", "\"1111\""]),
             (question: "print(\"gh\" + \"jl\")", correctAnswer: "\"ghjl\"",
              options: ["Erro", "\"gh\"", "\"ghjl\"", "\"jl\""]),
             (question: "print(\"ma\" + \"ker\")", correctAnswer: "\"maker\"",
              options: ["\"ma\"", "Erro", "\"ker\"", "\"maker\""]),
            //30
            (question:
                """
                    var a = 1
                    a = 3
                    print(a+3)
                """, correctAnswer: "6",
             options: ["6", "4", "3", "1"]),
            (question:
                """
                    var a = 3
                    a = 5
                    print(a*3)
                """, correctAnswer: "15",
             options: ["8", "9", "15", "5"]),
            (question:
                """
                    var a = 4
                    a = a + 2
                    print(a*2)
                """, correctAnswer: "12",
             options: ["12", "8", "15", "10"]),
            (question:
                """
                    var a = 1
                    var b = 6
                    a = 3
                    print(b / a)
                """, correctAnswer: "2",
             options: ["6", "1", "3", "2"]),
            (question:
                """
                    var a = 2
                    var b = a
                    a = 10
                    print(a / b)
                """, correctAnswer: "5",
             options: ["10", "5", "8", "2"]),
            (question:
                """
                    var a = 4
                    a = a + 2
                    print(a+3)
                """, correctAnswer: "9",
             options: ["6", "4", "3", "9"]),
            (question:
                """
                    var a = 8
                    a = a - 4
                    print(a*3)
                """, correctAnswer: "12",
             options: ["12", "8", "10", "4"]),
            (question:
                """
                    var a = 7
                    var b = 5
                    print(b*2)
                """, correctAnswer: "10",
             options: ["13", "11", "10", "14"]),
            (question:
                """
                    var a = 10
                    var b = 6
                    a = 2
                    print(b / a)
                """, correctAnswer: "3",
             options: ["6", "1", "3", "2"]),
            (question:
                """
                    var a = 2
                    var b = a
                    a = 20
                    print(a / b)
                """, correctAnswer: "10",
             options: ["10", "5", "8", "2"]),
            //40
            (question:
                """
                    func s(a: Int,b:Int) -> Int{
                        return a+b
                    }
                
                    print( s(a:5, b:3) )
                """, correctAnswer: "8",
             options: ["8", "5", "3", "2"]),
            (question:
                """
                    func fec(a: Int) -> Int{
                        return a*a
                    }
                    print( fec(a: 2) )
                """, correctAnswer: "4",
             options: ["2", "8", "1", "4"]),
            (question:
                """
                    func p(a: Int) -> Int{
                        return a
                    }
                    print( p(a: 2) + 5 )
                """, correctAnswer: "7",
             options: ["2", "7", "5", "3"]),
            (question:
                """
                    func tuc(a: Int, b:Int) -> Int{
                        return b/a
                    }
                    print( tuc(a: 3, b: 9) )
                """, correctAnswer: "3",
             options: ["12", "4", "3", "6"]),
            (question:
                """
                   func printSomething() {
                      print("Adoro funções")
                   }
                   printSomething()
                """, correctAnswer: "Adoro funções",
                     options: ["Nada", "printSomething()", "Adoro funções", "Erro"]),
            (question:
                """
                    func t() -> Int{
                        return 7
                    }
                    print( t() - 1 )
                """, correctAnswer: "6",
             options: ["6", "2", "3", "5"]),
            (question:
                """
                   func printS() {
                      print(5+2)
                   }
                   printS()
                """, correctAnswer: "7",
                     options: ["5+2", "printS()", "7", "Erro"]),
            (question:
                """
                   func nullei() -> Int {
                      return 3-2
                   }
                   print( nullei() + 4)
                """, correctAnswer: "5",
                     options: ["1", "5", "3", "4"]),
            (question:
                """
                   func nlei() -> Int {
                      return 5*2
                   }
                   print( nlei()/2 )
                """, correctAnswer: "5",
                     options: ["1", "4", "5", "3"]),
            (question:
                """
                   func every() -> Int {
                      return 2*3
                   }
                   let b = every()
                   print(b + 4)
                """, correctAnswer: "10",
                     options: ["10", "6", "8", "4"]),
            //50
            (question: "print(2 == 2)", correctAnswer: "true",
             options: ["2==2", "false", "2", "true"]),
            (question: "print(5 != 2)", correctAnswer: "true",
             options: ["5", "true", "5!=2", "false"]),
            (question: "print(4 == '4')", correctAnswer: "false",
             options: ["false", "true", "4", "4 == '4'"]),
            (question: "print(3 != 3)", correctAnswer: "false",
             options: ["3", "false", "3 != 3", "true"]),
            (question: "print(50 == 50)", correctAnswer: "true",
             options: ["true", "50", "false", "Erro"]),
            (question: "print(20 == 20)", correctAnswer: "true",
             options: ["20==20", "false", "20", "true"]),
            (question: "print(51 != 20)", correctAnswer: "true",
             options: ["51", "true", "51!=20", "false"]),
            (question: "print(42 == '42')", correctAnswer: "false",
             options: ["false", "true", "42", "42 == '42'"]),
            (question: "print(34 != 34)", correctAnswer: "false",
             options: ["34", "false", "34 != 34", "true"]),
            (question: "print(60 == 60)", correctAnswer: "true",
             options: ["true", "60", "false", "Erro"]),
            //60
            (question: "print(20 < 34)", correctAnswer: "true",
             options: ["20 < 34", "false", "20", "true"]),
            (question:
                """
                    let a = 4
                    print(a < 3)
                """, correctAnswer: "false",
             options: ["4 < 3", "3", "true", "false"]),
            (question: "print(34 < 30)", correctAnswer: "false",
             options: ["false", "true", "34 < 30", "34"]),
            (question:
                """
                    let a = 45
                    a = a - 30
                    print(a > 10)
                """, correctAnswer: "true",
             options: ["true", "15", "10", "false"]),
            (question: "print(10 > 2)", correctAnswer: "true",
             options: ["true", "10 > 2", "2", "false"]),
            (question:
                """
                    let a = 45
                    let b = 15
                    a = a/b
                    print(a == 3)
                """, correctAnswer: "true",
             options: ["a == 3", "3", "true", "false"]),
            (question: "print(5 < 2)", correctAnswer: "false",
             options: ["5 < 2", "7", "true", "false"]),
            (question: "print(2 < 2)", correctAnswer: "false",
             options: ["false", "2 < 2", "true", "2"]),
            (question:
                """
                    let a = 5
                    let b = 15
                    print(a < b)
                """, correctAnswer: "true",
             options: ["true", "a < b", "Erro", "false"]),
            (question:
                """
                    let a = 10
                    let b = a
                    a = a / 2
                    print(b < a)
                """, correctAnswer: "false",
             options: ["b < a", "false", "true", "Erro"]),
            //70
            (question:
                """
                    var b = 2
                    if (1 < 4){
                        b = 3
                    }
                    print(b + 2)
                """, correctAnswer: "5",
             options: ["4", "2", "5", "b + 2"]),
            (question:
                """
                    var a = 4
                    if (5 < 4){
                        a = 2
                    }
                    print(a * 3)
                """, correctAnswer: "12",
             options: ["6", "12", "a * 3", "4"]),
            (question:
                """
                    var a = 2
                    if (a < 2){
                        a = 4
                    } else {
                        a = 6
                    }
                    print(a * 10)
                """, correctAnswer: "60",
             options: ["60", "20", "40", "a * 10"]),
            (question:
                """
                    var b = 10
                    if (10 > 9){
                        b = 5
                    }
                    print(b + 3)
                """, correctAnswer: "8",
             options: ["13", "8", "12", "7"]),
            (question:
                """
                    var a = 6
                    if (a > 3){
                        a = 2
                    } else {
                        a = 4
                    }
                    print(a * 10)
                """, correctAnswer: "20",
             options: ["60", "20", "40", "a * 10"]),
            (question:
                """
                    var a = 20
                    if (10 < 14){
                        a = 12
                    }
                    print(a + 2)
                """, correctAnswer: "14",
             options: ["24", "22", "14", "a + 2"]),
            (question:
                """
                    var a = 7
                    if (6 < 3){
                        a = 5
                    }
                    print(a * 3)
                """, correctAnswer: "21",
             options: ["21", "12", "15", "18"]),
            (question:
                """
                    var a = 13
                    if (a < 10){
                        a = 4
                    } else {
                        a = 6
                    }
                    print(a * 2)
                """, correctAnswer: "12",
             options: ["20", "8", "12", "40"]),
            (question:
                """
                    var b = 5
                    if (b > 3){
                        b = 2
                    }
                    print(b + 3)
                """, correctAnswer: "5",
             options: ["5", "8", "3", "7"]),
            (question:
                """
                    var a = 10
                    if (a < 3){
                        a = 11
                    }
                    if (a > 12){
                        a = 16
                    }
                    print(a * 2)
                """, correctAnswer: "20",
             options: ["22", "20", "32", "10"]),
            //80
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        if(a < b){
                            return a * b
                        } else {
                            return a + b
                        }
                    }
                    print( hi(a: 3, b: 2) )
                """, correctAnswer: "5",
             options: ["2", "3", "5", "6"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        if(a > b){
                            return a * b
                        } else {
                            return a + b
                        }
                    }
                    print( hi(a: 5, b: 2) )
                """, correctAnswer: "10",
             options: ["10", "5", "7", "2"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        return a * b
                    }
                    func hello(a: Int, b:Int) -> Int{
                        return a + b
                    }
                    print( hi(a: 1, b: 3) + hello(a: 2, b: 5) )
                """, correctAnswer: "10",
             options: ["11", "9", "12", "10"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        return a/b
                    }
                    func hello(a: Int, b:Int) -> Int{
                        return a - b
                    }
                    print( hi(a: 10, b: 2) + hello(a: 4, b: 2) )
                """, correctAnswer: "7",
             options: ["9", "7", "10", "8"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        if( a < b ){
                            return a + b}
                        else {
                            return a * b}}
                    func hello(a: Int, b:Int) -> Int{
                        return a + b
                    }
                    print( hi(a: 2, b: 3) + hello(a: 2, b: 3) )
                """, correctAnswer: "10",
             options: ["10", "9", "12", "11"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        if(a < b){
                            return a * b
                        } else {
                            return a + b
                        }
                    }
                    print( hi(a: 4, b: 3) )
                """, correctAnswer: "7",
             options: ["2", "7", "5", "6"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        if(a > b){
                            return a * b
                        } else {
                            return a + b
                        }
                    }
                    print( hi(a: 6, b: 2) )
                """, correctAnswer: "12",
             options: ["10", "5", "7", "12"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        return a * b
                    }
                    func hello(a: Int, b:Int) -> Int{
                        return a + b
                    }
                    print( hi(a: 2, b: 4) + hello(a: 3, b: 2) )
                """, correctAnswer: "13",
             options: ["11", "13", "12", "10"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        return a/b
                    }
                    func hello(a: Int, b:Int) -> Int{
                        return a - b
                    }
                    print( hi(a: 15, b: 3) + hello(a: 8, b: 4) )
                """, correctAnswer: "9",
             options: ["9", "7", "10", "8"]),
            (question:
                """
                    func hi(a: Int, b:Int) -> Int{
                        if( a < b ){
                            return a + b}
                        else {
                            return a * b}}
                    func hello(a: Int, b:Int) -> Int{
                        return a + b}
                    print( hi(a: 4, b: 3) + hello(a: 6, b: 1) )
                """, correctAnswer: "19",
             options: ["17", "15", "12", "19"]),
            //90
            ]
    
    private var quiz: Quiz!
    private var _totalCorrectAnswers = 0
    private var _answer = 0
    var cont = 0
    var totalAnswers = 0
    
    var question: String {
        return quiz.question
    }
    var options: [String]{
        return quiz.options
    }
    var totalCorrectAnswers: Int {
        return _totalCorrectAnswers
    }
    var answer: Int{
        return _answer
    }
    
    func programmer(){
        if(_answer==4){
            _answer = 0
            cont = 10*(cont/10) + 10
        }
        if(cont%10 == 0 && _answer>0 && _answer<4){
            cont = cont - 10
        }
    }
    
    func refreshQuiz(){
        let quizData = quizes[cont]
        cont += 1
        quiz = Quiz(question: quizData.question, options: quizData.options, correctedAnswer: quizData.correctAnswer)
    }
    
    func validateAnswer(index: Int) -> Bool{
        totalAnswers += 1
        if quiz.validateOption(index){
            _totalCorrectAnswers += 1
            _answer += 1
            return false
        }else{
            _totalCorrectAnswers -= 1
            cont -= 1
            totalAnswers -= 1
            _answer = 0
            return true
        }
    }
    
    func indexCorrect() -> Int{
        for i in 0..<4{
            if quiz.validateOption(i){
                return Int(i)
            }
        }
        return 0
    }
}
