//
//  PageMenuLayout.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation

internal protocol PageMenuLayout {
    func layoutMenuItems(withTitles titles: [String]) -> [PageMenuItem]
}
