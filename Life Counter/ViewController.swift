//
//  ViewController.swift
//  Life Counter
//
//  Created by Matthew Colson on 12/9/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lifeValueLabel: UILabel!
    
    var lifeValue = 20;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func upButtonPressed(_ sender: UIButton) {
        lifeValue += 1
        updateUI()
    }
    
    @IBAction func downButtonPressed(_ sender: UIButton) {
        if lifeValue > 0 {
            lifeValue -= 1
        }
        
        updateUI()
    }
    
    func updateUI() {
        lifeValueLabel.text = String(lifeValue)
    }
}

