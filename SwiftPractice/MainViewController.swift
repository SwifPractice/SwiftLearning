//
//  MainViewController.swift
//  SwiftPractice
//
//  Created by EPCNSZXW0311 on 4/11/16.
//  Copyright © 2016 EPCNSZXW0311. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()

        let buttonTableView = UIButton(frame: CGRectMake(10, 80, 300, 20))
        [buttonTableView.setTitle("UITableView", forState: UIControlState.Normal)]
        [buttonTableView.setTitleColor(UIColor.blueColor(), forState:UIControlState.Normal)]
        buttonTableView.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        self.view.addSubview(buttonTableView)
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
