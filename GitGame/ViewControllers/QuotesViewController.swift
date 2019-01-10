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
    
    // MARK: - IBOutlets
    @IBOutlet weak var quoteLabel: UILabel!
    
    // MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func ronSwansonButtonTapped(_ sender: Any) {
    }
    
    @IBAction func orNotButtonTapped(_ sender: Any) {
    }
    
}

// MARK: - AlertController
extension QuotesViewController {
    func presentCorrectAlertController() {
        let correctAlertController = UIAlertController(title: "Yes", message: nil, preferredStyle: .alert)
        let okayButton = UIAlertAction(title: "Next Quote", style: .default) { (_) in
            //get new quote
            
        }
        correctAlertController.addAction(okayButton)
        present(correctAlertController, animated: true)
    }
    
    func presentWrongAlertController() {
        let wrongAlertController = UIAlertController(title: "There's no shame in failure", message: "If you gave it an honest effort.", preferredStyle: .alert)
        let okayButton = UIAlertAction(title: "Next Quote", style: .default) { (_) in
            //get new quote
        }
        wrongAlertController.addAction(okayButton)
        present(wrongAlertController, animated: true)
    }
}
