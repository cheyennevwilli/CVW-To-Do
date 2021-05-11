//
//  AddToDoViewController.swift
//  CVW To Do
//
//  Created by Cheyenne Vlymen-Williams on 5/10/21.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let item = toDo()

          if let titleText = titleTextField.text {
            item.name = titleText
            item.important = importantSwitch.isOn
          }
        previousVC.toDos.append(item)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
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
