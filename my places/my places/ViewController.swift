//
//  ViewController.swift
//  my places
//
//  Created by Павел Тимофеев on 08.04.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    let restarantNames = [ "Burger Heroes",
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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restarantNames.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
       
        cell?.textLabel?.text = restarantNames[indexPath.row]
     cell?.imageView?.image = UIImage(named: restarantNames[indexPath.row])
        return cell!
    }
 
     
}

