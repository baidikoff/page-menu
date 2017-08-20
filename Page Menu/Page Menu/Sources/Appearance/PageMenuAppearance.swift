//
//  PageMenuAppearance.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation

internal struct PageMenuAppearance {
    static let `default` = PageMenuAppearance()
    
    var layoutType: PageMenuLayoutType = .center
    
    init(withOptions options: [PageMenuOptions]) {
        for option in options {
            switch option {
            case .layoutType(let value):
                self.layoutType = value
            }
        }
    }
    
    internal init() { }
}
