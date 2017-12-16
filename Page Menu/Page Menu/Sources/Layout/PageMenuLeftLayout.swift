//
//  PageMenuLeftLayout.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

internal class PageMenuLeftLayout: PageMenuLayout {
    func countSize(for menuItems: [PageMenuItem], appearance: PageMenuAppearance) -> CGSize {
        return menuItems.reduce(CGSize(width: appearance.itemsSpacing, height: .zero)) {
            CGSize(width: $0.width + appearance.itemsSpacing + $1.width, height: max($0.height, $1.height))
        }
    }

    func layoutMenuItems(withTitles titles: [String], appearance: PageMenuAppearance) -> [PageMenuItem] {
        var firstItemOrigin = CGPoint(x: appearance.itemsSpacing, y: .zero)
        
        return titles.map { title -> PageMenuItem in
            let attributedText = NSAttributedString(string: title, attributes: [.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 14.0, weight: .regular)])
            let textSize = attributedText.size()
            let menuItem = PageMenuItem(title: title, frame: CGRect(origin: firstItemOrigin, size: textSize))
            
            firstItemOrigin.offsetBy(textSize.width + appearance.itemsSpacing, dy: .zero)
            
            return menuItem
        }
    }
}
