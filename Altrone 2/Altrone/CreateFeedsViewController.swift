//
//  CreateFeedsViewController.swift
//  Altrone
//
//  Created by Evan Tanuwijaya on 10/07/19.
//  Copyright © 2019 Evan Tanuwijaya. All rights reserved.
//

import UIKit

class CreateFeedsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var arrayGame = ["Pokémon Go","Candy Crush Saga","Marvel: Avengers Alliance","Clash Royale","Clash of Clans","Chain Chronicle","Sword Art Online: Code Register","Mobile legends"]
    
    @IBOutlet weak var gameGenrePicker: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayGame.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayGame[row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.gameGenrePicker.dataSource = self
        self.gameGenrePicker.delegate = self
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
