//
//  SecondViewController.swift
//  My Task List
//
//  Created by xiexz on 15/12/19.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet var textTask: UITextField!
    @IBOutlet var textDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddTask(sender: UIButton){
        taskMgr.addTask(textTask.text!, desc: textDesc.text!)
        self.view.endEditing(true)
        textTask.text = ""
        textDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

