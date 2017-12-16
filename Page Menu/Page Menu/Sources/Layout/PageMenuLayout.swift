//
//  PageMenuLayout.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

internal protocol PageMenuLayout {
    func layoutMenuItems(withTitles titles: [String], appearance: PageMenuAppearance) -> [PageMenuItem]
    func countSize(for menuItems: [PageMenuItem], appearance: PageMenuAppearance) -> CGSize
}
