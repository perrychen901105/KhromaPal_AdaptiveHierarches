//
//  SplitViewController.swift
//  KhromaPal
//
//  Created by mac on 14-10-13.
//  Copyright (c) 2014年 RayWenderlich. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController,
                        UISplitViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // 2
        delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 3
    /*
        is called when a split view controller is collapsing down into a navigation controller, and governs the behavior of the detail view controller.
    */
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
        return true
    }

    func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController!) -> UIViewController? {
        if let paletteDisplayCont = primaryViewController as? PaletteDisplayContainer {
            if paletteDisplayCont.rwt_currentlyDisplayedPalette() != nil {
                return nil;
            }
        }
        let vc = storyboard? .instantiateViewControllerWithIdentifier("NoPaletteSelected") as UIViewController
        return NavigationViewController(rootViewController: vc)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
