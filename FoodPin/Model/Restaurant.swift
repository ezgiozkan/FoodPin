//
//  Restaurant.swift
//  FoodPin
//
//  Created by Simon Ng on 19/10/2020.
//

import Foundation

struct Restaurant: Hashable {
    var name: String = ""
    var type: String = ""
    var location: String = ""
    var phone: String = ""
    var description: String = ""
    var image: String = ""
    var isFavorite: Bool = false
}
