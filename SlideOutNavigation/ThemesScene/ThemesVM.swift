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

import UIKit // This is wrong , but xcode 12 have some issues with returning CGFLoat

class ThemesVM {
  var products : [Product]  = [Product]()
  
  func setupStub() {
    products.append(Product(productName: "Stockes", productImage: #imageLiteral(resourceName: "breakfast-chocolate-cream-264727") , productDesc: "MEDI", productColor: UIColor(red: 142.0/255.0, green: 147.0/255.0, blue: 252.0/255.0, alpha: 1.0)))
    products.append(Product(productName: "ETFs", productImage: #imageLiteral(resourceName: "accessory-classic-close-up-371723") , productDesc: "PINS", productColor: UIColor(red: 61.0/255.0, green: 54.0/255.0, blue: 196.0/255.0, alpha: 1.0)))
    products.append(Product(productName: "Crypto", productImage:  #imageLiteral(resourceName: "breakfast-chocolate-cream-264727"), productDesc: "WORKS", productColor: UIColor(red: 253.0/255.0, green: 208.0/255.0, blue: 48.0/255.0, alpha: 1.0)))
  }
  
  func getNumberOfRows() -> Int {
    return products.count
  }
  
  func getRowHeight() -> CGFloat {
    return 114.0
  }
  
  func getProduct(atIndex index: Int) -> Product {
    return products[index]
  }
}

