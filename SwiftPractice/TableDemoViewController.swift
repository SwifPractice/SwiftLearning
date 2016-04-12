//
//  UITableViewController.swift
//  SwiftPractice
//
//  Created by EPCNSZXW0311 on 4/12/16.
//  Copyright © 2016 EPCNSZXW0311. All rights reserved.
//

import UIKit

class TableDemoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        addTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var status : ProductStatus = .InProgress
        if(section == 0) {
            status = .ToBuy
        }
        
        return status.rawValue;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let reuseIdentifier : String = "CustomizedCell"
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier)! as UITableViewCell
        if (cell != nil)
        {
            cell = UITableViewCell(style: UITableViewCellStyle.Subtitle,
                                   reuseIdentifier: reuseIdentifier)
        }
        cell?.textLabel?.text = "Hello"
        
        return cell!
    }
    
    func addTableView() {
        tableView = UITableView(frame: self.view.frame, style: .Plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.allowsMultipleSelection = false
        self.view.addSubview(tableView)
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
