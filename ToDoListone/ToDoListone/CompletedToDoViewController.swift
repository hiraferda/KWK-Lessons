//
//  CompletedToDoViewController.swift
//  ToDoListone
//
//  Created by  Scholar on 7/19/21.
//

import UIKit

class CompletedToDoViewController: UIViewController {

    @IBOutlet weak var toDoDosplay: UILabel!
    
    var previousToDoTVC = ToDoTableViewController()
    var selectedToDo = ToDoClass()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
        
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
//    }
}
