/// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import Foundation
import UIKit

class TrendingVL: MVVMViewLayout {
  var collectionView:UICollectionView?
   
  weak var collectionViewDelegate: UICollectionViewDelegate? {
    didSet {
      collectionView?.delegate = collectionViewDelegate
    }
  }
   weak var collectionViewDatasource: UICollectionViewDataSource? {
    didSet {
      collectionView?.dataSource = collectionViewDatasource
    }
  }
  
    override func reloadTable() {
      collectionView?.reloadData()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepare()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        prepare()
    }
 
  func prepare() {
    
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
    layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width/2 - 20 , height: 160)
    layout.minimumInteritemSpacing = 0
    layout.minimumLineSpacing = 20
    collectionView?.collectionViewLayout = layout
    
    
    collectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
    collectionView?.register(TrendingCell.self, forCellWithReuseIdentifier: "TrendingCell")
    collectionView?.backgroundColor = UIColor.white
  
    
    addSubview(collectionView ?? UICollectionView())
    
    guard let collectionView = self.collectionView else {
      return
    }
    collectionView.autoPinEdge(toSuperviewEdge: .top, withInset: 0)
    collectionView.autoPinEdge(toSuperviewEdge: .bottom, withInset: 0)
    collectionView.autoPinEdge(toSuperviewEdge: .trailing, withInset: 0)
    collectionView.autoPinEdge(toSuperviewEdge: .leading, withInset: 0)

  

  }
}
