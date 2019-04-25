//
//  ProfileViewController.swift
//  Twitter
//
//  Created by Jason Stephen on 4/24/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit
import Alamofire

class ProfileViewController: UIViewController {

    var programVar : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let headers: HTTPHeaders = [
            "Accept": "application/json",
            "Content-Type": "application/json",
            "Authorization": "Bearer " + programVar!
        ]
        
        //https://api.spotify.com/v1/users/jasonstephen15/playlists
        
        Alamofire.request("https://api.spotify.com/v1/me", method: .get, headers: headers).responseJSON { response in
            debugPrint(response)
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var usernameLabel: UILabel!
    
    
    @IBAction func onCreatePlaylist(_ sender: Any) {
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
