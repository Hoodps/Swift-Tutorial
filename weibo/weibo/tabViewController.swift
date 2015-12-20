//
//  tabViewController.swift
//  weibo
//
//  Created by xiexz on 15/12/19.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

class tabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let Home = HomeViewController()
        let Mess = MessViewController()
        let Me = MeViewController()
        let Found = FounViewController()
        
        
        self.addChildViewController(addChildVc(Home, title: "首页", image: "tabbar_mainframe", selectedImage: "tabbar_mainframeHL"))
        self.addChildViewController(addChildVc(Mess, title: "消息", image: "tabbar_contacts", selectedImage: "tabbar_contactsHL"))
        self.addChildViewController(addChildVc(Me, title: "我", image: "tabbar_me", selectedImage: "tabbar_meHL"))
        self.addChildViewController( addChildVc(Found, title: "搜索", image: "tabbar_discover", selectedImage: "tabbar_discoverHL"))
    }
    
    func addChildVc(childVc: UIViewController, title: String, image:String, selectedImage:String) ->UINavigationController{
        
        //childVc.tabBarItem.title = title
        childVc.title = title
        childVc.tabBarItem.image = UIImage(named: image)
        let textAttrs = NSMutableDictionary()
        textAttrs[NSForegroundColorAttributeName] = UIColor.grayColor()
        
        let selectedTextAttrs = NSMutableDictionary()
        selectedTextAttrs[NSForegroundColorAttributeName] = UIColor(red: 9/255.0, green: 187/255.0, blue: 9/255.0, alpha: 1)
        
        childVc.tabBarItem.setTitleTextAttributes(textAttrs as? [String: AnyObject], forState: UIControlState.Normal)
        childVc.tabBarItem.setTitleTextAttributes(selectedTextAttrs as? [String: AnyObject], forState: UIControlState.Selected)
        
        childVc.tabBarItem.selectedImage = UIImage(named: selectedImage)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        let nv = UINavigationController(rootViewController: childVc)
    
        return nv
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
    
    func addChildVc(childVc: UIViewController, title: String, image:String, selectedImage:String){
    childVc.tabBarItem.title = title
    childVc.tabBarItem.image = UIImage(named: image)
    
    //childVc.view.backgroundColor = UIColor.Colo
    let textAttrs = NSMutableDictionary()
    textAttrs[NSForegroundColorAttributeName] = UIColor.grayColor()
    
    let selectedTextAttrs = NSMutableDictionary()
    selectedTextAttrs[NSForegroundColorAttributeName] = UIColor(red: 9/255.0, green: 187/255.0, blue: 9/255.0, alpha: 1)
    
    childVc.tabBarItem.setTitleTextAttributes(textAttrs as? [String: AnyObject], forState: UIControlState.Normal)
    childVc.tabBarItem.setTitleTextAttributes(selectedTextAttrs as? [String: AnyObject], forState: UIControlState.Selected)
    
    childVc.tabBarItem.selectedImage = UIImage(named: selectedImage)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
    
    
    }
    */
    
    

}
