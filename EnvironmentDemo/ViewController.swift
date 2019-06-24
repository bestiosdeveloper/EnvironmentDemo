//
//  ViewController.swift
//  EnvironmentDemo
//
//  Created by Admin on 24/06/19.
//  Copyright © 2019 Pramod Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    var baseUrl: String {
        switch PKSettingsBundleHelper.shared.currentEnvironment {
        case .development:
            return "Runnig on development"
            
        case .testing:
            return "Runnig on testing"
            
        default:
            return "Runnig on production"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.infoLabel.text = baseUrl
    }
}

