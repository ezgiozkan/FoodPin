//
//  RestaurantDiffableDataSource.swift
//  FoodPin
//
//  Created by Simon Ng on 20/10/2020.
//

import UIKit

enum Section {
    case all
}

class RestaurantDiffableDataSource: UITableViewDiffableDataSource<Section, Restaurant> {

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

}
