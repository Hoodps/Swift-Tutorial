//
//  HomeViewController.swift
//  weibo
//
//  Created by xiexz on 15/12/19.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blueColor()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.item(self, action: "saoyisao", image: "tabbar_mainframe", selectedImage: "tabbar_mainframeHL")
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.item(self, action: "test", image: "tabbar_discover", selectedImage: "tabbar_discoverHL")

        // Do any additional setup after loading the view.
    }
    
    func saoyisao(){
        print("test")
    }
    func test(){
        print("234")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}