//
//  PageMenuContainer.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

internal class PageMenuContainer: UIScrollView {
    private let menuItems: [PageMenuItem]
    
    init(menuItems: [PageMenuItem], frame: CGRect) {
        self.menuItems = menuItems
        super.init(frame: frame)
    }
    
    convenience init() {
        self.init(menuItems: [], frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.menuItems = []
        super.init(coder: aDecoder)
    }
}
