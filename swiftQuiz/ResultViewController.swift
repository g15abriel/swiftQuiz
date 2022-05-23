//
//  ResultViewController.swift
//  swiftQuiz
//
//  Created by CLAUDIA MALHEIROS on 12/13/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbCorrectA: UILabel!
    @IBOutlet weak var lbWrongA: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrect: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbCorrectA.text = "Respostas Corretas: \(totalCorrect)"
        lbWrongA.text = "Respostas Incorretas: \(totalAnswers-totalCorrect)"
        
        let score = totalCorrect*100/totalAnswers
        lbScore.text = "\(score)%"
    }
    
    @IBAction func close(_ sender: UIButton) {
        //dismiss(animated: true, completion: nil)
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
