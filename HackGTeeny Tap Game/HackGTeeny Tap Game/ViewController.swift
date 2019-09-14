//
//  ViewController.swift
//  HackGTeeny Tap Game
//
//  Created by Kenny Akers on 9/14/19.
//  Copyright © 2019 Ken Akers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    var isGameStarted = false
    var player1Score = 0
    var player2Score = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func player1Tapped(_ sender: Any) {
        if (self.isGameStarted) {
            self.player1Score += 1
            self.updateScoreLabels()
        }
    }
    
    @IBAction func player2Tapped(_ sender: Any) {
        if (self.isGameStarted) {
            self.player2Score += 1
            self.updateScoreLabels()
        }
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
        sender.isEnabled = false
        if (!self.isGameStarted) {
            self.isGameStarted = true
            self.player1Score = 0
            self.player2Score = 0
            self.updateScoreLabels()
            
            let _ = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (timer) in
                sender.isEnabled = true
                self.isGameStarted = false
            }
        }
    }
    
    func updateScoreLabels() {
        self.player1ScoreLabel.text = "Player 1: \(player1Score)"
        self.player2ScoreLabel.text = "Player 2: \(player2Score)"
    }
}

