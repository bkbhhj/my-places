//
//  PlaceModel.swift
//  my places
//
//  Created by Павел Тимофеев on 13.04.2022.
//

import UIKit


struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    

   static let restarantNames = [ "Burger Heroes",
                           "Kitchen",
                           "Bonsai",
                           "Дастархан",
                            "Индокитай",
                           "X.O",
                           "Балкан Гриль",
                           "Sherlock Holmes",
                           "Speak Easy",
                           "Morris Pub",
                           "Вкусные истории",
                           "Классик",
                           "Love&Life",
                           "Шок",
                           "Бочка"
    ]
  
 static   func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restarantNames {
            places.append(Place(name: place, location: "Kazan", type: "Restoraunt", image: nil, restaurantImage: place))
        }
        
        
        
        return places
    }

    
    
}
