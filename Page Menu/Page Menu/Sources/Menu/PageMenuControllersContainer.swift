//
//  PageMenuControllersContainer.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

internal class PageMenuControllersContainer: UIScrollView {

    private let controllers: [UIViewController]
    
    init(controllers: [UIViewController], frame: CGRect) {
        self.controllers = controllers
        super.init(frame: frame)
        
        self.controllers.forEach { self.addSubview($0.view) }
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.controllers = []
        super.init(coder: aDecoder)
    }
}
