//
//  PageMenuControllersContainer.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

class PageMenuControllersContainer: UIScrollView {

    private let controllers: [UIViewController]
    
    init(controllers: [UIViewController], frame: CGRect) {
        self.controllers = controllers
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.controllers = []
        super.init(coder: aDecoder)
    }
}
