//
//  Quiz.swift
//  swiftQuiz
//
//  Created by CLAUDIA MALHEIROS on 12/4/21.
//

import Foundation

class Quiz{
    
    let question: String
    let options: [String]
    let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String){
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswer
    }
    
    //deinit{
    //    print("Liberou o quiz da memória")
    //}
}
