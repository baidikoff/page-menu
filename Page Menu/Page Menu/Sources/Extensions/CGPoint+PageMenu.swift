//
//  CGPoint+PageMenu.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 12/5/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import UIKit

public extension CGPoint {
    mutating func offsetBy(_ dx: CGFloat, dy: CGFloat) {
        self.x += dx
        self.y += dy
    }
}
