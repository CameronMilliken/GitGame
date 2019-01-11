//
//  QuotesViewController.swift
//  GitGame
//
//  Created by Brady Bentley on 1/10/19.
//  Copyright © 2019 Cameron Milliken. All rights reserved.
//

import UIKit

class QuotesViewController: UIViewController {
    // MARK: - Properties
    var gameScore: Int = 0
    var quote: Quote?
    var randomQuote = QuoteController.sharedInstance.quotes.randomElement()!
    
    // MARK: - IBOutlets
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // MARK: - Actions
    @IBAction func ronSwansonButtonTapped(_ sender: Any) {
        if randomQuote.isRonSwanson == true {
            presentCorrectAlertController()
            gameScore += 1
            DispatchQueue.main.async {
                self.scoreLabel.text = String(self.gameScore)
            }
        } else {
            presentWrongAlertController()
        }
    }
    
    @IBAction func orNotButtonTapped(_ sender: Any) {
        if randomQuote.isRonSwanson == true {
            presentWrongAlertController()
        } else {
            presentCorrectAlertController()
            gameScore += 1
            DispatchQueue.main.async {
                self.scoreLabel.text = String(self.gameScore)
            }
        }
    }
    
    
    
    func updateViews() {
        scoreLabel?.text = String(gameScore)
        quoteLabel?.text = randomQuote.quote
    }
}

// MARK: - AlertController
extension QuotesViewController {
    func presentCorrectAlertController() {
        let correctAlertController = UIAlertController(title: "Yes", message: nil, preferredStyle: .alert)
        let okayButton = UIAlertAction(title: "Next Quote", style: .default) { (_) in
            self.randomQuote = QuoteController.sharedInstance.quotes.randomElement()!
            DispatchQueue.main.async {
                self.quoteLabel?.text = self.randomQuote.quote
                
            }
        }
        correctAlertController.addAction(okayButton)
        present(correctAlertController, animated: true)
    }
    
    func presentWrongAlertController() {
        let wrongAlertController = UIAlertController(title: "There's no shame in failure", message: "If you gave it an honest effort.", preferredStyle: .alert)
        let okayButton = UIAlertAction(title: "Next Quote", style: .default) { (_) in
            self.randomQuote = QuoteController.sharedInstance.quotes.randomElement()!
            DispatchQueue.main.async {
                self.quoteLabel?.text = self.randomQuote.quote
                self.scoreLabel?.text = String(self.gameScore)
            }
        }
        wrongAlertController.addAction(okayButton)
        present(wrongAlertController, animated: true)
    }
}
