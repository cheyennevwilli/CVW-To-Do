//
//  ToDoTableTableViewController.swift
//  CVW To Do
//
//  Created by Cheyenne Vlymen-Williams on 5/10/21.
//

import UIKit

class ToDoTableTableViewController: UITableViewController {

    var toDos : [toDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let ToDo = toDos[indexPath.row]
        if ToDo.important {
            cell.textLabel?.text = "❗️" + ToDo.name
          } else {
            cell.textLabel?.text = ToDo.name
          }

        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func createToDos() -> [toDo] {

      let swift = toDo()
      swift.name = "Learn Swift"
      swift.important = true

      let dog = toDo()
      dog.name = "Walk the Dog"
      // important is set to false by default

      return [swift, dog]
    }
}
