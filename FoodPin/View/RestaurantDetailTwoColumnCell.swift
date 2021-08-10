//
//  RestaurantDetailTwoColumnCell.swift
//  FoodPin
//
//  Created by Ezgi Özkan on 10.08.2021.
//

import UIKit

class RestaurantDetailTwoColumnCell: UITableViewCell {

    @IBOutlet var colum1TitleLabel: UILabel!
    {
        didSet{
            colum1TitleLabel.text = colum1TitleLabel.text?.uppercased()
            colum1TitleLabel.numberOfLines = 0
        }
    }
    @IBOutlet var column1TextLabel: UILabel!
    {
        didSet{
            column1TextLabel.numberOfLines = 0
        }
    }
    @IBOutlet var colum2TitleLabel: UILabel!
    {
        didSet{
            colum2TitleLabel.text = colum2TitleLabel.text?.uppercased()
            colum2TitleLabel.numberOfLines = 0
        }
    }
    @IBOutlet var column2TextLabel: UILabel!
    {
        didSet{
            column2TextLabel.numberOfLines = 0
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
