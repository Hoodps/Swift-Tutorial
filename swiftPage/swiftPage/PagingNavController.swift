//
//  PagingNavController.swift
//  swiftPage
//
//  Created by xiexz on 15/12/19.
//  Copyright © 2015年 xiexz. All rights reserved.
//

import UIKit

class PagingNavController: UIViewController, UIScrollViewDelegate {
    
    var scrollView: UIScrollView!
    var pageControll: UIPageControl!
    var navbarView: UIView!
    
    var navTitleLabel1:UILabel!
    var navTitleLabel2:UILabel!
    var navTitleLabel3:UILabel!
    
    var view1:UIView!
    var view2:UIView!
    var view3:UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let wBounds = self.view.bounds.width
        let hBounds = self.view.bounds.height
        
        scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.clearColor()
        scrollView.frame = self.view.frame
        scrollView.pagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.delegate = self
        scrollView.bounces = false
        self.view.addSubview(scrollView)
        
        
        self.scrollView.contentSize = CGSize(width: self.view.bounds.width*3, height: hBounds/2)
        
        navbarView = UIView()
        self.navigationController?.navigationBar.addSubview(navbarView)
        
        pageControll = UIPageControl()
        pageControll.frame = CGRect(x: 0, y: 35, width: 0, height: 0)
        pageControll.backgroundColor = UIColor.whiteColor()
        pageControll.numberOfPages = 3
        pageControll.currentPage = 0
        pageControll.currentPageIndicatorTintColor = UIColor(red: 0.325, green: 0.667, blue: 0.922, alpha: 1)
        pageControll.pageIndicatorTintColor = UIColor.whiteColor()
        self.navbarView.addSubview(pageControll)
        
        
        let titleSize = CGRect(x: 0, y: 8, width: wBounds, height: 20)
       
        navTitleLabel1 = UILabel()
        navTitleLabel1.frame = titleSize
        navTitleLabel1.text = "Home"
        navTitleLabel1.textAlignment = NSTextAlignment.Center
        self.navbarView.addSubview(navTitleLabel1)
        
        navTitleLabel2 = UILabel()
        navTitleLabel2.frame = titleSize
        navTitleLabel2.text = "dis"
        navTitleLabel2.textAlignment = NSTextAlignment.Center
        self.navbarView.addSubview(navTitleLabel2)
        
        navTitleLabel3 = UILabel()
        navTitleLabel3.frame = titleSize
        navTitleLabel3.text = "add"
        navTitleLabel3.textAlignment = NSTextAlignment.Center
        self.navbarView.addSubview(navTitleLabel3)
        
        view1 = UIView()
        view1.backgroundColor = UIColor(red: 0.325, green: 0.667, blue: 0.922, alpha: 1)
        view1.frame = CGRectMake(0, 0, wBounds, hBounds)
        self.scrollView.addSubview(view1)
        self.scrollView.bringSubviewToFront(view1)
        
        view2 = UIView()
        view2.backgroundColor = UIColor(red:0.231, green:0.529, blue:0.757, alpha: 1)
        view2.frame = CGRectMake(wBounds, 0, wBounds, hBounds)
        self.scrollView.addSubview(view2)
        self.scrollView.bringSubviewToFront(view2)

        view3 = UIView()
        view3.backgroundColor = UIColor(red:0.529, green:0.600, blue:0.647, alpha: 1)
        view3.frame = CGRectMake(wBounds*2, 0, wBounds, hBounds)
        self.scrollView.addSubview(view3)
        self.scrollView.bringSubviewToFront(view3)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        navbarView.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 44)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let xOffset: CGFloat = scrollView.contentOffset.x
        
        let wBounds = self.view.bounds.width
 //       let hBounds = self.view.bounds.height
        let widthOffset = wBounds / 100
        let offsetPosition = 0 - xOffset/widthOffset
        
        //Apply the positioning values created above to the frame's position based on user's scroll
        
        navTitleLabel1.frame = CGRectMake(offsetPosition, 8, wBounds, 20)
        navTitleLabel2.frame = CGRectMake(offsetPosition + 100, 8, wBounds, 20)
        navTitleLabel3.frame = CGRectMake(offsetPosition + 200, 8, wBounds, 20)
        
        //Change the alpha values of the titles as they are scrolled
        
        navTitleLabel1.alpha = 1 - xOffset / wBounds
        
        if (xOffset <= wBounds) {
            navTitleLabel2.alpha = xOffset / wBounds
        } else {
            navTitleLabel2.alpha = 1 - (xOffset - wBounds) / wBounds
        }
        navTitleLabel3.alpha = (xOffset - wBounds) / wBounds
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        
        let xOffset: CGFloat = scrollView.contentOffset.x
        //print(xOffset)
        
        //Change the pageControl dots depending on the page / offset values
        
        if (xOffset == 0.0) {
            pageControll.currentPage = 0
        } else if (xOffset == self.view.bounds.width) {
            pageControll.currentPage = 1
        } else {
            pageControll.currentPage = 2
        }
        
    }
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
