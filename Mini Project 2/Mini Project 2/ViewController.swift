//
//  ViewController.swift
//  Mini Project 2
//
//  Created by  Scholar on 7/15/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    
    @IBOutlet weak var question1: UITextField!
    
    @IBOutlet weak var blank1: UITextField!
    
    let newTitle = "π±π±"
    let newTitle2 = "πΆπΆ"
    let newTitle3 = "π±πΆ"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: UIButton) {
        blank1.text = newTitle
    }
    
    @IBAction func button2(_ sender: UIButton) {
        blank1.text = newTitle2
    }
    
    @IBAction func button3(_ sender: UIButton) {
        blank1.text = newTitle3
    }
    
    
}

