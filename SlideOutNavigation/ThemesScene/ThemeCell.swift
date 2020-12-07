//
//  ThemeCell.swift
//  DemoExplore
//
//  Created by Admin on 2/12/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

class ThemeCell: UITableViewCell {
    var product : Product? {
        didSet {
            productImage.image = product?.productImage
            productNameLabel.text = product?.productName
            productDescriptionLabel.text = product?.productDesc
            backgroundImage.backgroundColor = product?.productColor
        }
    }
    
    
    private let productNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
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
  
    var productQuantity : UILabel =  {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textAlignment = .center
        label.text = " +50.78 "
        label.textColor = .white
        label.backgroundColor = .green
        label.layer.cornerRadius = 10
        return label

    }()
    
    private let backgroundImage : UIImageView = {
        let imgView = UIImageView()
        imgView.layer.cornerRadius = 50
//        imgView.backgroundColor = .blue
        return imgView
    }()
    private let productImage : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "breakfast-chocolate-cream-264727"))
        imgView.layer.cornerRadius = 25
        imgView.backgroundColor = .blue
        imgView.layer.borderWidth = 2
        imgView.layer.borderColor = UIColor.white.cgColor
        imgView.clipsToBounds = true
        return imgView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(backgroundImage)
        backgroundImage.addSubview(productImage)
        backgroundImage.addSubview(productNameLabel)

        
        backgroundImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 10, paddingLeft: 15, paddingBottom: 10, paddingRight: 15, width: 0, height: 70, enableInsets: false)
        productImage.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 50, paddingBottom: 20, paddingRight: 0, width: 50, height: 50, enableInsets: false)
        
        productNameLabel.anchor(top: topAnchor, left: productImage.rightAnchor, bottom: nil, right: nil, paddingTop: 45, paddingLeft: 25, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
