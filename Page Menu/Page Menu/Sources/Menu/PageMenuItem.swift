//
//  PageMenuItem.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

internal class PageMenuItem: UIView {
    private let title: String
    
    init(title: String, frame: CGRect) {
        self.title = title
        super.init(frame: frame)
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.title = ""
        super.init(coder: aDecoder)
        self.backgroundColor = .clear
    }
    
    override func draw(_ rect: CGRect) {
        let attributedText = NSAttributedString(string: self.title, attributes: [.foregroundColor: UIColor.black, .font: UIFont.systemFont(ofSize: 14.0, weight: .regular)])
        attributedText.draw(at: .zero)
    }
}
