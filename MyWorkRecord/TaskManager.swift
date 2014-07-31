//
//  TaskManager.swift
//  MyWorkRecord
//
//  Created by 刘澈 on 14-7-31.
//  Copyright (c) 2014年 刘澈. All rights reserved.
//

import UIKit

var taskMgr:TaskManager = TaskManager();

struct Task{
    var name = "unname"
    var descript = "un-descript"
}

class TaskManager: NSObject {
    var tasks = Task[]();
    func addTask(name:String, descript:String){
        tasks.append(Task(name:name, descript:descript));
    }
}
