//
//  TrendingVC.swift
//  DemoExplore
//
//  Created by Admin on 22/11/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

class TrendingVC: UIViewController {
  
  var viewLayout:  TrendingVL   = TrendingVL()
  var viewModel: TrendingVM = TrendingVM()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    viewLayout.collectionViewDatasource = self
    viewLayout.collectionViewDatasource = self
    viewLayout.addTo(controller: self)
    
    self.navigationController?.navigationBar.topItem?.title = "Explore"
    
    viewLayout.reloadTable()
  }
}

extension TrendingVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return viewModel.getNumberOfRows() // How many cells to display
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingCell", for: indexPath) as? TrendingCell else {
        fatalError("TrendingCell not found")

      }
        return cell
    }
}
extension TrendingVC: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
    }
}
