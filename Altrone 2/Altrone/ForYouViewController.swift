//
//  ForYouViewController.swift
//  Altrone
//
//  Created by Evan Tanuwijaya on 05/07/19.
//  Copyright © 2019 Evan Tanuwijaya. All rights reserved.
//

import UIKit

class ForYouViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let imageData = ["game1","game3","game4","game5","game7","game8"]
    let titleData = ["Seven Knights","Sdorica","Mobile Legend","Aquapark.io","Clash Royale","PUBG"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath) as! ForYouTableViewCell
        
        cell.imageForYou.image = UIImage(named: imageData[indexPath.row])
        cell.titleForYou.text = titleData[indexPath.row]
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}
