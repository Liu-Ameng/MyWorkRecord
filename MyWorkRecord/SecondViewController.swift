//
//  SecondViewController.swift
//  MyWorkRecord
//
//  Created by 刘澈 on 14-7-31.
//  Copyright (c) 2014年 刘澈. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textTask : UITextField!
    @IBOutlet var textDescript : UITextField!
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events 
    @IBAction func btnAddTaskClick(sender: UIButton){
        taskMgr.addTask(textTask.text, descript:textDescript.text)
        self.view.endEditing(true)
        textTask.text = ""
        textDescript.text = ""
        self.tabBarController.selectedIndex = 0
    }
    
    //ISO Touch Function
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder();
        return true
    }
}

