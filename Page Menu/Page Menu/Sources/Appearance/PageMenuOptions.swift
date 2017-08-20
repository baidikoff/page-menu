//
//  PageMenuOptions.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

public enum PageMenuOptions {

    case layoutType(PageMenuLayoutType)
}

public enum PageMenuLayoutType {
    case center
    case left
    case right
    case flexible
}
