//
//  RestaurantDetailTextCell.swift
//  FoodPin
//
//  Created by Ezgi Özkan on 10.08.2021.
//

import UIKit

class RestaurantDetailTextCell: UITableViewCell {

    
    @IBOutlet var descriptionLabel : UILabel!
    {
        didSet{
            descriptionLabel.numberOfLines = 0
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
