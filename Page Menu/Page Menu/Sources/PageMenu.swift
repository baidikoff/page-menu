//
//  PageMenu.swift
//  Page Menu
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import Foundation
import UIKit

public class PageMenu: UIViewController {
    
    // MARK: - Properties
    public weak var dataSource: PageMenuDataSource?
    public weak var delegate: PageMenuDelegate?
    
    // MARK: - Private properties
    private let appearance: PageMenuAppearance
    private var menu: PageMenuContainer = PageMenuContainer()
    private var selectionIndicator: PageMenuSelectionIndicator = PageMenuSelectionIndicator()
    
    // MARK: - Object lifecycle
    public init(frame: CGRect, options: [PageMenuOptions]) {
        self.appearance = PageMenuAppearance(withOptions: options)

        super.init(nibName: nil, bundle: nil)
        self.view.frame = frame
    }
    
    required public init?(coder aDecoder: NSCoder) {
        self.appearance = .default
        super.init(coder: aDecoder)
    }
    
    public override func didMove(toParentViewController parent: UIViewController?) {
        self.layoutMenu()
    }
    
    // MARK: - Private 
    private func layoutMenu() {
        guard let dataSource = self.dataSource else {
            return
        }
        
        let controllerCount = dataSource.numberOfControllers(in: self)
    
        var controllers = [UIViewController]()
        for index in 0..<controllerCount {
            let controller = dataSource.pageMenu(self, controllerForIndex: index)
            controllers.append(controller)
        }
    }
}
