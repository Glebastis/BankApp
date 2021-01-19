//
//  ViewController.swift
//  BankApp
//
//  Created by Liliya Babenko on 24.11.2020.
//

import UIKit

class ViewController: UIViewController {

    // MARK: -Outlets
    @IBOutlet weak var amountLabel: UILabel?
    @IBOutlet weak var nperTextField: UITextField?
    @IBOutlet weak var pvTextField: UITextField?
    @IBOutlet weak var rateTextField: UITextField?
    
    
    // MARK: - Properties
    var amount: Float = 10000{
        didSet {
            updateAmountLabel()
        }
    }
    
    //MARK: - Methods
    func updateAmountLabel() {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencySymbol = "₽"
        
        let number = NSNumber(value: amount)
        amountLabel?.text = formatter.string(from: number)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateAmountLabel()
        
    }
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
    }
    

}

