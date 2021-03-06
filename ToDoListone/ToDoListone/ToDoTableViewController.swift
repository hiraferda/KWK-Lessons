//
//  ToDoTableViewController.swift
//  ToDoListone
//
//  Created by  Scholar on 7/19/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    /*
    func createToDo() -> [ToDoClass]{
        let swiftToDo = ToDoClass()
        swiftToDo.description = "Learn Swift"
        swiftToDo.important = true
        
        let dogToDo = ToDoClass()
        dogToDo.description = "Walk the Dog"
        
        return [swiftToDo, dogToDo]
        
    }
*/
    
   // var listOfToDo : [ToDoClass] = []
    
    var listOfToDo : [ToDoCD] = []
    
    func getToDos(){
        if let accessToCoreData = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext{
            if let dataFromCoreData = try? accessToCoreData.fetch(ToDoCD.fetchRequest()) as? [ToDoCD]{
                listOfToDo = dataFromCoreData
                tableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       // listOfToDo = createToDo()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listOfToDo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let eachToDo = listOfToDo[indexPath.row]
        //cell.textLabel?.text = eachToDo.description
    
        if let thereIsDescription = eachToDo.descriptionInCD{
            if eachToDo.importantInCD{
                cell.textLabel?.text = "❗️" + thereIsDescription
            }else{
                cell.textLabel?.text = eachToDo.descriptionInCD
            }
        }
        if eachToDo.importantInCD {
            cell.textLabel?.text = "❗️" + eachToDo.description
        } else {
            cell.textLabel?.text = eachToDo.description
        }

        return cell
    }

    override func tableView (_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let eachToDo = listOfToDo[indexPath.row]
        performSegue(withIdentifier: "moveToComplete", sender: eachToDo)
    }

    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextAddToDoVC = segue.destination as? AddToDoViewController{
            nextAddToDoVC.previousToDoTVC = self
            if let nextAddToDoVC = segue.destination as? AddToDoViewController {
                nextAddToDoVC.previousToDoTVC = self
            }
            if let nextCompletedToDoVC = segue.destination as? CompletedToDoViewController{
                if let choosenToDo = sender as? ToDoClass{
                    nextCompletedToDoVC.selectedToDo = choosenToDo
                    nextCompletedToDoVC.previousToDoTVC = self
                }
            }
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
