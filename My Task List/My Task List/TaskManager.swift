//
//  TaskManager.swift
//  My Task List
//
//  Created by xiexz on 15/12/19.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()
struct task {
    var name = "un-Named"
    var desc = "un-decs"
}

class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask(name: String, desc:String){
        tasks.append(task(name: name, desc: desc))
    }
}
