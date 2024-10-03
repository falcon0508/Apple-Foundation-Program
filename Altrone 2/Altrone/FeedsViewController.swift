//
//  FeedsViewController.swift
//  Altrone
//
//  Created by Evan Tanuwijaya on 06/07/19.
//  Copyright © 2019 Evan Tanuwijaya. All rights reserved.
//

import UIKit

class FeedsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    let imageFeeds = ["feeds1", "feeds2","feeds1", "feeds2"]
    let titleFeeds = ["Lapu-lapu Savage", "Is Sun Wukong Good?","Lapu-lapu Savage", "Is Sun Wukong Good?"]
    let usernameFeeds = ["iDylans","Hansrich2000","iDylans","Hansrich2000"]
    let iconFeeds = ["mlicon","mlicon","mlicon","mlicon"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageFeeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedsCell", for: indexPath) as! FeedsTableViewCell
        
        cell.imageFeeds.image = UIImage(named: imageFeeds[indexPath.row])
        cell.titleFeeds.text = titleFeeds[indexPath.row]
        cell.usernameFeeds.text = usernameFeeds[indexPath.row]
        cell.iconFeeds.image = UIImage(named: iconFeeds[indexPath.row])
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
