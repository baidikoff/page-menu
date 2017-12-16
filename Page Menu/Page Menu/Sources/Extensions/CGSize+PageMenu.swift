//
//  CGSize+PageMenu.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 12/5/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import UIKit

public extension CGSize {
    static var huge: CGSize {
        return CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude)
    }
}
