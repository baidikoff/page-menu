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
    case itemsSpacing(CGFloat)
}

public enum PageMenuLayoutType {
    case left
    
    var layout: PageMenuLayout {
        switch self {
        case .left: return PageMenuLeftLayout()
        }
    }
}
