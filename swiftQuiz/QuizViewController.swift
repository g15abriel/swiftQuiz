//
//  QuizViewController.swift
//  swiftQuiz
//
//  Created by CLAUDIA MALHEIROS on 12/4/21.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var lbQuestion: UILabel!
    @IBOutlet var answersB: [UIButton]!
    
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        getNewQuiz()
    }
    
    func getNewQuiz(){
        quizManager.programmer()
        quizManager.refreshQuiz()
        lbQuestion.text = quizManager.question
        for i in 0..<quizManager.options.count {
            let option = quizManager.options[i]
            let button = answersB[i]
            button.setTitle(option, for: .normal)
        }
    }
    
    func showResults(){
        performSegue(withIdentifier: "resultSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewcontroller = segue.destination as! ResultViewController
        resultViewcontroller.totalAnswers = quizManager.totalAnswers
        resultViewcontroller.totalCorrect = quizManager.totalCorrectAnswers
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        let index = answersB.firstIndex(of: sender) ?? 0
        if quizManager.validateAnswer(index: index){
            answersB[quizManager.indexCorrect()].backgroundColor = UIColor.green
            getNewQuiz()
        }else{
            answersB[quizManager.indexCorrect()].backgroundColor = UIColor.white
            if(quizManager.cont > 81 && quizManager.answer > 3){
                showResults()
            }else{
                getNewQuiz()
            }
        }
    }
}
