//
//  TrendingVC.swift
//  DemoExplore
//
//  Created by Admin on 22/11/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

class CenterViewController: UITabBarController {
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var creatorLabel: UILabel!
  
  var centerDelegate: CenterViewControllerDelegate?
  
  
  override func viewDidLoad() {
    navigationBarSetup()
    tabviewSetup()
  }
  
  func navigationBarSetup() {
    let leftButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        leftButton.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
    leftButton.setImage(UIImage(named:"menu"), for: .normal)
    leftButton.addTarget(self, action: #selector(backButtonClick), for: UIControl.Event.touchUpInside)
    let leftBarButtonItem: UIBarButtonItem = UIBarButtonItem(customView: leftButton)
    self.navigationItem.setLeftBarButton(leftBarButtonItem, animated: false);
    
    let button = UIButton(type: .custom)
    button.setImage(UIImage (named: "notification"), for: .normal)
    button.frame = CGRect(x: 0.0, y: 0.0, width: 35.0, height: 35.0)
    let barButtonItem = UIBarButtonItem(customView: button)

    self.navigationItem.rightBarButtonItems = [barButtonItem]
  }
  
  func tabviewSetup() {
    // Create Tab one
    let tabOne = CetagoryVC()
    let tabOneBarItem = UITabBarItem(title: "", image: UIImage(named: "search.png"), selectedImage: UIImage(named: "search.png"))
  
    tabOne.tabBarItem = tabOneBarItem
    
    // Create Tab two
    let tabTwo = TrendingVC()
    let tabTwoBarItem2 = UITabBarItem(title: "", image: UIImage(named: "home.png"), selectedImage: UIImage(named: "home.png"))
    tabTwo.tabBarItem = tabTwoBarItem2
    
    // Create Tab two
    let tabThree = ThemesVC()
    let tabThreeeBarItem3 = UITabBarItem(title: "", image: UIImage(named: "stat.png"), selectedImage: UIImage(named: "stat.png"))
    tabThree.tabBarItem = tabThreeeBarItem3
    UITabBar.appearance().barTintColor = UIColor.white // your color

    self.viewControllers = [tabOne, tabTwo, tabThree]
  }
  // MARK: Button actions
  @objc func backButtonClick() {
    centerDelegate?.toggleLeftPanel()
     
  }
}

extension CenterViewController: SidePanelViewControllerDelegate {
  func didSelectRow() {
    
    centerDelegate?.collapseSidePanels()
  }
}

protocol CenterViewControllerDelegate {
  func toggleLeftPanel()
  func toggleRightPanel()
  func collapseSidePanels()
}
