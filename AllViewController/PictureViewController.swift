//
//  PictureViewController.swift
//  AllViewController
//
//  Created by 陈嘉伟 on 16/2/3.
//  Copyright © 2016年 陈嘉伟. All rights reserved.
//

import UIKit

class PictureViewController: UIViewController,UIScrollViewDelegate
{

    var page1:UIView!
    var page2:UIView!
    var page3:UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    @IBAction func changePage(sender: AnyObject) {
        UIView.animateWithDuration(0.3) { () -> Void in
            let whichPage = self.pageControl.currentPage
            self.scrollView.contentOffset = CGPointMake(self.view.frame.width * CGFloat(whichPage), 0)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentSize = CGSizeMake(view.frame.width*3, scrollView.frame.size.height) //为什么要用scrollview的height?
        scrollView.frame = view.frame
        
        let mainStoryboard = storyboard!
        
        let page1ViewController = mainStoryboard.instantiateViewControllerWithIdentifier("page1")
        page1 = page1ViewController.view
        
        let page2ViewController = mainStoryboard.instantiateViewControllerWithIdentifier("page2")
        page2 = page2ViewController.view
        page2.frame = CGRectMake(view.frame.width, 0.0, view.frame.width, view.frame.height)
        
        let page3ViewController = mainStoryboard.instantiateViewControllerWithIdentifier("page3")
        page3 = page3ViewController.view
        page3.frame = CGRectMake(view.frame.width*2, 0.0, view.frame.width, view.frame.height)
        
        scrollView.addSubview(page1)
        scrollView.addSubview(page2)
        scrollView.addSubview(page3)
        
    }

    func scrollViewDidScroll(scrollView: UIScrollView) {
        let offset = scrollView.contentOffset
        pageControl.currentPage = Int(offset.x) / Int(view.frame.width)
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
