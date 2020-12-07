//
//  ThemesVC.swift
//  DemoExplore
//
//  Created by Admin on 22/11/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

class ThemesVC: UIViewController {
  var viewLayout:     ThemesVL   = ThemesVL()
  var viewModel:  ThemesVM       = ThemesVM()
  
  var products : [Product]  = [Product]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    viewModel.setupStub()
    view.backgroundColor = .white
    viewLayout.tableViewDatasource = self
    viewLayout.tableViewDelegate = self
    viewLayout.addTo(controller: self)
    
    self.navigationController?.navigationBar.topItem?.title = "Explore"
    
    viewLayout.reloadTable()
    
    // Do any additional setup after loading the view.
  }
  
}

extension ThemesVC: UITableViewDelegate, UITableViewDataSource {
  public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.getNumberOfRows()
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return viewModel.getRowHeight()
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "ThemeCell", for: indexPath) as? ThemeCell else {
      
      fatalError("ThemeCell not found")
    }
    
    cell.product = viewModel.getProduct(atIndex: indexPath.row)
    return cell
  }
}
