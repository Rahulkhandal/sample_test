//
//  CetagoryVC.swift
//  DemoExplore
//
//  Created by Admin on 22/11/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

struct Options {
    let title:String?
}

class CetagoryVC: UIViewController {
    var viewLayout:     CategoryVL   = CategoryVL()
    var viewModel:  CategoryVM       = CategoryVM()
   
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
  
    @objc func callMethod() {
        //do stuff here
     }
    
}

extension CetagoryVC: UITableViewDelegate, UITableViewDataSource {
  
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return viewModel.getNumberOfRows()
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return viewModel.getHeaderSection()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return viewModel.getRowHeight()
    }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryOptionCell", for: indexPath) as? CategoryOptionCell else {
      fatalError("CategoryOptionCell not found")
    }
    
    cell.product = viewModel.getProduct(atIndex: indexPath.row)
    return cell
  }
}

