//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Ezgi Özkan on 10.08.2021.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var restaurant: Restaurant = Restaurant()
    
    @IBOutlet var tableView : UITableView!
    @IBOutlet var headerView : RestaurantDetailHeaderView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = false
        
        //Configure header view
        
        headerView.nameLabel.text = restaurant.name
        headerView.typeLabel.text = restaurant.type
        headerView.headerImageView.image = UIImage(named: restaurant.image)
        
        let heartImage = restaurant.isFavorite ? "heart.fill" : "heart"
        headerView.heartButton.tintColor = restaurant.isFavorite ? .systemYellow : .white
        headerView.heartButton.setImage(UIImage(systemName: heartImage), for: .normal)
        
        //table view
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //customizing the table view
        
        tableView.separatorStyle = .none
        
    }
    
    
    //Table view
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailTextCell.self),for: indexPath) as! RestaurantDetailTextCell
            cell.descriptionLabel.text = restaurant.description
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailTwoColumnCell.self), for: indexPath) as! RestaurantDetailTwoColumnCell
            
            cell.colum1TitleLabel.text = "Address"
            cell.column1TextLabel.text = restaurant.location
            cell.colum2TitleLabel.text = "Phone"
            cell.column2TextLabel.text = restaurant.phone
            
            return cell
            
        case 2:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: RestaurantDetailMapCell.self),for: indexPath) as! RestaurantDetailMapCell
            cell.configure(location: restaurant.location)
            cell.selectionStyle = .none
            
            return cell
            
        default:
            fatalError("Error")
        }
    }
    
   
    

}
