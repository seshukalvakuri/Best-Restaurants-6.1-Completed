//
//  NewRestaurantViewController.swift
//  BestRestaurants
//
//  Created by Kalvakuri,Lakshmi Seshu on 3/5/19.
//  Copyright © 2019 Michael Rogers. All rights reserved.
//

import UIKit

class NewRestaurantViewController: UIViewController {

    var newRestaurant:Restaurant!
    
    @IBOutlet weak var nameTF:UITextField!
    @IBOutlet weak var genreTF:UITextField!
    @IBOutlet weak var ratingTF:UITextField!
    
    @IBAction func done(_ Sender:Any) {
        let name = nameTF.text!
        let genre = genreTF.text!
        let rating = ratingTF.text!
        
        Restaurants.shared.add(restaurant:Restaurant(name:name, genre:Genre.greek, rating:Int(rating)! ))
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel(_ Sender:Any) {
        self.dismiss(animated:true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
