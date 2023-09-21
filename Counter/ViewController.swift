//
//  ViewController.swift
//  Counter
//
//  Created by Olga Ilyushina on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {
   private var counter = 0 {
        didSet {
            updateCounterLabel()
        }
    }
    
    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterButton.tintColor = .green
    }
    @IBAction func buttonTap(_ sender: Any) {
        counter += 1
    }
    
    private func updateCounterLabel() {
        counterLabel.text = "Значение счётчика: \(counter)"
    }
}

