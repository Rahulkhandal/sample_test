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
import UIKit // This is wrong , but xcode 12 have some issues with returning CGFLoat

class CategoryVM {
  var options = [Options]()
  var products : [Product]  = [Product]()
  
  func setupStub() {
    options = [
        Options(title: "Stockes"),
        Options(title: "ETFs"),
        Options(title: "Crypto"),
    ]
    products.append(Product(productName: "Medifast", productImage: #imageLiteral(resourceName: "breakfast-chocolate-cream-264727") , productDesc: "MEDI"))
    products.append(Product(productName: "Pinterest", productImage: #imageLiteral(resourceName: "accessory-classic-close-up-371723") , productDesc: "PINS"))
    products.append(Product(productName: "Slack Tech", productImage:  #imageLiteral(resourceName: "breakfast-chocolate-cream-264727"), productDesc: "WORKS"))
  }
  
  func getNumberOfRows() -> Int {
    return products.count
  }
  
  func getHeaderSection() -> String {
    return "Top Gainers"
  }
  
  func getRowHeight() -> CGFloat {
    return 114.0
  }
  
  func getProduct(atIndex index: Int) -> Product {
    return products[index]
  }
}
