//
//  MainViewController.swift
//  SwiftPractice
//
//  Created by EPCNSZXW0311 on 4/10/16.
//  Copyright © 2016 EPCNSZXW0311. All rights reserved.
//

import UIKit
import "Masonry.h"

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.whiteColor()
        _ = UIView(frame:self.view.bounds)
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
