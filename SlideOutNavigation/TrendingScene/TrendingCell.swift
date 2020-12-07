//
//  TrendingCell.swift
//  DemoExplore
//
//  Created by Admin on 3/12/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

class TrendingCell: UICollectionViewCell {
    
    var product : Product? {
        didSet {
            productImage.image = product?.productImage
            productNameLabel.text = product?.productName
            productDescriptionLabel.text = product?.productDesc
        }
    }
    private let productNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .center
        lbl.text = "Testing"
        return lbl
    }()
    
    
    private let productDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .gray
        lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    private let backgroundImage : UIImageView = {
        let imgView = UIImageView()
        imgView.layer.cornerRadius = 10
        imgView.backgroundColor = UIColor(red: 250.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, alpha: 1.0)
        
        return imgView
    }()
    private let productImage : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "breakfast-chocolate-cream-264727"))
        imgView.layer.cornerRadius = 40
        imgView.backgroundColor = .blue
        imgView.layer.borderWidth = 2
        imgView.layer.borderColor = UIColor.white.cgColor
        imgView.clipsToBounds = true
        return imgView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(backgroundImage)
        addSubview(productImage)
        addSubview(productNameLabel)
        
        backgroundImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: self.frame.size.width, height: 160, enableInsets: false)
        productImage.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 30, paddingLeft: frame.size.width / 2 - 40, paddingBottom: 20, paddingRight: 0, width: 80, height: 80, enableInsets: false)
        productNameLabel.anchor(top: productImage.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 10, width: frame.size.width / 2, height: 0, enableInsets: false)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
