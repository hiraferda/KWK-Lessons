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
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var textField3: UITextField!
    
    let newTitle = "I love swimming"
    let newTitle2 = "I love listening to music"
    let newTitle3 = "I love cats"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
        
        textField.text = newTitle
        textField2.text = newTitle2
        textField3.text = newTitle3
        
    }
}
