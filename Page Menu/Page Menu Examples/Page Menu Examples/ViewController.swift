//
//  ViewController.swift
//  Page Menu Examples
//
//  Created by Nick Baidikoff on 8/20/17.
//  Copyright © 2017 Nick Baidikoff. All rights reserved.
//

import UIKit
import Page_Menu

class ViewController: UIViewController, PageMenuDelegate, PageMenuDataSource {
    lazy var pageMenu = PageMenu(frame: CGRect(x: 0.0, y: 20.0, width: self.view.width, height: self.view.height - 20.0), options: [.layoutType(.left), .itemsSpacing(15.0)])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageMenu.dataSource = self
        self.pageMenu.delegate = self
        
        self.addChildViewController(self.pageMenu)
        self.view.addSubview(self.pageMenu.view)
    }
    
    func numberOfControllers(in pageMenu: PageMenu) -> Int {
        return 2
    }
    
    func pageMenu(_ pageMenu: PageMenu, controllerForIndex index: Int) -> UIViewController {
        return UIViewController()
    }
    
    func pageMenu(_ pageMenu: PageMenu, titleForController controller: UIViewController, at index: Int) -> String {
        return "Controller"
    }
}
