//
//  secondViewController.swift
//  Mini Project 2
//
//  Created by  Scholar on 7/15/21.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var mainTitle: UILabel!
    
    @IBOutlet weak var question: UITextField!
    
    @IBOutlet weak var blank1: UITextField!
    
    let newTitle = "🍝🍝"
    let newTitle2 = "🍕🍕"
    let newTitle3 = "🍔🍔"
    
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
