//
//  UIView+PageMenu.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 12/5/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import UIKit

public extension UIView {
    public var x: CGFloat {
        get { return self.frame.origin.x }
        set { self.frame.origin.x = newValue }
    }
    
    public var y: CGFloat {
        get { return self.frame.origin.y }
        set { self.frame.origin.y = newValue }
    }
    
    public var width: CGFloat {
        get { return self.frame.size.width }
        set { self.frame.size.width = newValue }
    }
    
    public var height: CGFloat {
        get { return self.frame.size.height }
        set { self.frame.size.height = newValue }
    }
}
