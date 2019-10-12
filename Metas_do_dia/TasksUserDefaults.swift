

import UIKit

class TasksUserDefaults {
    
    let key = "listTasks"
    var tasks: [String] = []
    
    func save(task: String) {
        
        tasks = toList()
        
        tasks.append(task)
        UserDefaults.standard.set(tasks, forKey: key)
    }
    
    func toList() -> Array<String>{
        
        let data = UserDefaults.standard.object(forKey: key)
        
        if data != nil {
            return data as! Array<String>
        }else {
            return[]
        }
    }
    
    func remove(index: Int)  {
        tasks = toList()
        tasks.remove(at: index)
        UserDefaults.standard.set(tasks, forKey: key)
    }
}
