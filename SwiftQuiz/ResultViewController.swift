//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by Vinicius Meira on 12/01/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var lbAnswerd: UILabel!
    @IBOutlet weak var lbCorrect: UILabel!
    @IBOutlet weak var lbWrong: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbAnswerd.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrong.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalAnswers > 0 ? totalCorrectAnswers*100/totalAnswers : 0
        lbScore.text = "\(score)%"
    }

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
