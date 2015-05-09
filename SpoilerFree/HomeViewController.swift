//
//  HomeViewController.swift
//  SpoilerFree
//
//  Created by Philip Deisinger on 5/4/15.
//  Copyright (c) 2015 PDice. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController : UIViewController {
    
    var shows: NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let headerView = UIView(frame: CGRect(x: 0, y: 20, width: view.frame.width, height: 44))
        headerView.backgroundColor = UIColor(red: 1.0, green: 0.2, blue: 0.0, alpha: 1.0)
        let homeLabel = UILabel(frame: CGRect(x: view.frame.width * 0.25, y: 0, width: view.frame.width * 0.5, height: 44))
        homeLabel.text = "Home"
        homeLabel.textColor = UIColor(white: 1.0, alpha: 1.0)
        homeLabel.font = UIFont(name: "Helvetica", size: 32.0)
        homeLabel.textAlignment = NSTextAlignment.Center
        headerView.addSubview(homeLabel)
        view.addSubview(headerView)
        
        let gameOfThronesButton = UIButton(frame: CGRect(x: 20, y: view.frame.height * 0.2 , width: view.frame.width - 40, height: 120))
        gameOfThronesButton.layer.borderColor = UIColor(white: 0.0, alpha: 1.0).CGColor
        gameOfThronesButton.layer.borderWidth = 2
        //gameOfThronesButton.setTitle("Game of Thrones", forState: .Normal)
        gameOfThronesButton.setImage(UIImage(named: "gameOfThronesTitleCard"), forState: .Normal)
        //gameOfThronesButton.setTitleColor(UIColor(white: 0.0, alpha: 1.0), forState: .Normal)
        //gameOfThronesButton.titleLabel?.font = UIFont(name: "Helvetica", size: 24.0)
        gameOfThronesButton.addTarget(self, action: "gameOfThronesTapped", forControlEvents: .TouchUpInside)
        view.addSubview(gameOfThronesButton)
    
    
    }
    
    func gameOfThronesTapped() {
        let show = Show(name: "Game of Thrones", seasons: 5, episodesPerSeason: 10)
        let showVC = ShowViewController()
        showVC.show = show
        self.presentViewController(showVC, animated: true, completion: nil)
    }
    
    func seasonsTest() {
        let seasons = 5
        let episodesPerSeason = 10
        let starkHouse = House(name: "Stark")
        let char = Character(name: "Ned", house: starkHouse, isAlive: true, seasons: seasons, episodesPerSeason: episodesPerSeason)
        
        for var i = 0; i < seasons; i++ {
            for var j = 0; j < episodesPerSeason; j++ {
                print(char.episodicInfo[i][j])
            }
            println("")
        }
    }
}