//
//  resultViewController.swift
//  002_Gacha
//
//  Created by 松島優希 on 2020/11/11.
//

import UIKit

class resultViewController: UIViewController {
    
    var number: Int!

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int.random(in: 0...9)
        if number == 9{
            monsterImageView.image = UIImage(named: "monster010")
            backgroundImageView.image = UIImage(named: "bg_gold@2x")
        }else if number > 7{
            monsterImageView.image = UIImage(named: "monster006")
            backgroundImageView.image = UIImage(named: "bg_red@2x")
        }else{
            monsterImageView.image = UIImage(named: "monster003")
            backgroundImageView.image = UIImage(named: "bg_blue@2x")
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
