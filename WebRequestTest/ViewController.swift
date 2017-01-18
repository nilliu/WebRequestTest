//
//  ViewController.swift
//  WebRequestTest
//
//  Created by nil on 19/01/2017.
//  Copyright © 2017 nil. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = "https://swapi.co/api/people/1/?format=json"
        
        Alamofire.request(urlString).responseJSON { response in
            let json = JSON(data: response.data!)
            if let playerName = json["name"].string {
                print("player name is \(playerName)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

