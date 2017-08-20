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
    func countSize(for menuItems: [PageMenuItem]) -> CGSize {
        return .zero
    }

    func layoutMenuItems(withTitles titles: [String]) -> [PageMenuItem] {
        return []
    }
}
