//
//  TrendingVC.swift
//  DemoExplore
//
//  Created by Admin on 22/11/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

class SidePanelViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  
  var delegate: SidePanelViewControllerDelegate?
  
  var animals: [Animal]!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    viewSetup()
  }
  
  func viewSetup() {
    let contactsTableView = UITableView()
    view.addSubview(contactsTableView)
    contactsTableView.translatesAutoresizingMaskIntoConstraints = false
    contactsTableView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
    
    contactsTableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
    contactsTableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
    contactsTableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
    
    
    contactsTableView.topAnchor.constraint(equalTo:view.safeAreaLayoutGuide.topAnchor).isActive = true
    contactsTableView.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor).isActive = true
    contactsTableView.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    contactsTableView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    
    contactsTableView.tableFooterView = UIView()
    contactsTableView.delegate = self
    contactsTableView.dataSource = self
  }
}

// MARK: Table View Data Source
extension SidePanelViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .value1, reuseIdentifier: "Cell")
    cell.textLabel?.text = "Cell: \(indexPath.row)"
    return cell
  }
}

// Mark: Table View Delegate

extension SidePanelViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    delegate?.didSelectRow()
  }
}

protocol SidePanelViewControllerDelegate {
  func didSelectRow()
}
