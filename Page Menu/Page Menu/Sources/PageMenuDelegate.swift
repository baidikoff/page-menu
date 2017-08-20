//
//  PageMenuDelegate.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

@objc public protocol PageMenuDelegate: class {
    /**
     Is called straight before moving to new controller
     
     Parameters:
     - parameter pageMenu: Page Menu Controller
     - parameter controller: UIViewController to which will be moved page menu
     
     - SeeAlso: `pageMenu(_:didMoveToController:)`
     */
    @objc optional func pageMenu(_ pageMenu: PageMenu, willMoveToController controller: UIViewController)
    
    /**
     Is called straight after moving to new controller
     
     Parameters:
     - parameter pageMenu: Page Menu Controller
     - parameter controller: UIViewController to which will be moved page menu
     
     - SeeAlso: `pageMenu(_:willMoveToController:)`
     */
    @objc optional func pageMenu(_ pageMenu: PageMenu, didMoveToController controller: UIViewController)
    
    /**
     Is called when touch comes to menu item connected with controller of scroll comes to controller
     
     Parameters:
     - parameter pageMenu: Page Menu Controller
     - parameter controller: UIViewController to which will be moved page menu
     
     Returns:
     - Returns: Bool value indicating if move to controller is allowed
     */
    @objc optional func pageMenu(_ pageMenu: PageMenu, canMoveToController controller: UIViewController, atIndex index: Int) -> Bool
}
