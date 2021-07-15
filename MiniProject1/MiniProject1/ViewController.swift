//
//  ViewController.swift
//  MiniProject1
//
//  Created by  Scholar on 7/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTitel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var firstF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        if let newTitel = firstF.text {
            textField.text = newTitel
    }
    }
}
