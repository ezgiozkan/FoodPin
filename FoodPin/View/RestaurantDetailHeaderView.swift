//
//  RestaurantDetailHeaderView.swift
//  FoodPin
//
// Created by Ezgi Özkan on 10.08.2021.
//

import UIKit

class RestaurantDetailHeaderView: UIView {

    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel : UILabel!{
        didSet{
            nameLabel.numberOfLines = 0
            
        }
    }
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var heartButton: UIButton!

}
