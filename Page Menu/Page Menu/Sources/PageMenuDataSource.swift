//
//  PageMenuDataSource.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

@objc public protocol PageMenuDataSource: class {
    /**
     - parameter pageMenu: Page Menu which is configured now
     
     - Returns: Number of controllers to be displayed in menu
     */
    @objc func numberOfControllers(in pageMenu: PageMenu) -> Int
    
    /**
     - parameter pageMenu: Page Menu which is configured now
     - parameter index: Index of controller
     
     - Returns: Controller for index
     */
    @objc func pageMenu(_ pageMenu: PageMenu, controllerForIndex index: Int) -> UIViewController
    
    /**
     - parameter pageMenu: Page Menu which is configured now
     - parameter controller: Controller, which menu item is configured now
     - parameter index: Index of controller
     
     - Returns: Title for controller at index
     */
    @objc func pageMenu(_ pageMenu: PageMenu, titleForController controller: UIViewController, at index: Int) -> String
}
