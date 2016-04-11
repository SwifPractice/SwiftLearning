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
        configureToolbar()
        
        let buttonTableView = UIButton(frame: CGRectMake(10, 80, 300, 20))
        [buttonTableView.setTitle("UITableView", forState: UIControlState.Normal)]
        [buttonTableView.setTitleColor(UIColor.blueColor(), forState:UIControlState.Normal)]
        buttonTableView.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
        buttonTableView.addTarget(self, action: #selector(buttonPressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        buttonTableView.tag = 1;
        self.view.addSubview(buttonTableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonPressed(sender: UIButton!) {
        let button:UIButton = sender
        print("\(button.tag) button is clicked");
        
        let viewTable = TableDemoViewController(nibName: nil, bundle: nil);
        self.navigationController?.pushViewController(viewTable, animated: true)
    }
    
    func configureToolbar() {
        self.navigationItem.setLeftBarButtonItem(UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Refresh, target: self, action: nil), animated: true)
        
        self.navigationItem.setRightBarButtonItem(UIBarButtonItem(title: "TBC>", style: UIBarButtonItemStyle.Plain, target: self, action: nil), animated: true)
        
        self.navigationController!.navigationBar.barTintColor = UIColor.blueColor()
        self.title = "Swift Practice"
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
