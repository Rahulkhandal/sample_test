//
//  TrendingVC.swift
//  DemoExplore
//
//  Created by Admin on 22/11/20.
//  Copyright © 2020 Rahul. All rights reserved.
//

import UIKit

class AnimalCell: UITableViewCell {
  @IBOutlet weak var animalImageView: UIImageView!
  @IBOutlet weak var imageNameLabel: UILabel!
  @IBOutlet weak var imageCreatorLabel: UILabel!
  
  func configureForAnimal(_ animal: Animal) {
    animalImageView.image = animal.image
    imageNameLabel.text = animal.title
    imageCreatorLabel.text = animal.creator
  }
}
