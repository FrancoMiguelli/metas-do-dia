

import UIKit

class AddTasksViewController: UIViewController {
    
    @IBOutlet weak var tfAddTask: UITextField!
    
    @IBAction func btnAddTask(_ sender: Any) {
        
        if let addText = tfAddTask.text {
            
            let task = TasksUserDefaults()
            task.save(task: addText)
            tfAddTask.text = ""
            
            let data = task.toList()
            
            print (data)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

   

}
