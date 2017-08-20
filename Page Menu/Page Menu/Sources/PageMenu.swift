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
        let (controllers, titles) = self.getControllersAndTitles()
        
        let layout: PageMenuLayout
        switch self.appearance.layoutType {
        case .center: layout = PageMenuCenterLayout()
        case .left: layout = PageMenuLeftLayout()
        case .right: layout = PageMenuRightLayout()
        case .flexible: layout = PageMenuFlexibleLayout()
        }
        
        let menuItems = layout.layoutMenuItems(withTitles: titles)
        let size = layout.countSize(for: menuItems)
        self.menu = PageMenuContainer(menuItems: menuItems, frame: CGRect(origin: .zero, size: size))
    }
    
    private func getControllersAndTitles() -> ([UIViewController], [String]) {
        guard let dataSource = self.dataSource else {
            return ([], [])
        }

        let count = dataSource.numberOfControllers(in: self)
        
        var controllers = [UIViewController]()
        var titles = [String]()
        
        for index in 0..<count {
            let controller = dataSource.pageMenu(self, controllerForIndex: index)
            let title = dataSource.pageMenu(self, titleForController: controller, at: index)
            
            controllers.append(controller)
            titles.append(title)
        }

        return (controllers, titles)
    }
}
