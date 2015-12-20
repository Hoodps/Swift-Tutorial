//
//  Item.swift
//  weibo
//
//  Created by xiexz on 15/12/19.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    static func item(target:AnyObject, action:Selector, image: String, selectedImage:String) ->UIBarButtonItem{
        let item:UIButton = UIButton()
        item.setBackgroundImage(UIImage(named: image), forState: UIControlState.Normal)
        item.setBackgroundImage(UIImage(named: selectedImage), forState: UIControlState.Highlighted)
        item.frame.size = (item.currentBackgroundImage?.size)!
        item.addTarget(target, action: action, forControlEvents: UIControlEvents.TouchUpInside)
   
        return UIBarButtonItem(customView: item)
    }
}



