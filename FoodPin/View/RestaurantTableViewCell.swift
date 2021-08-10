//
//  RestaurantTableViewCell.swift
//  FoodPin
//
// Created by Ezgi Özkan on 10.08.2021.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    {
        didSet{
            nameLabel.numberOfLines = 0
            
            if let customFont = UIFont(name: "Nunito-Bold", size: 40)
            {
                nameLabel.font = UIFontMetrics(forTextStyle: .title1).scaledFont(for: customFont)
            }
        }
    }
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    {
        didSet{
            typeLabel.numberOfLines = 0
            
            if let customFont = UIFont(name: "Nunito-Bold", size: 20)
            {
                typeLabel.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
            }
        }
    }
    
    @IBOutlet var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.layer.cornerRadius = 20.0
            thumbnailImageView.clipsToBounds = true
        }
    }
    @IBOutlet var favoriteImageView: UIImageView! 
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        self.tintColor = .systemYellow
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


}
