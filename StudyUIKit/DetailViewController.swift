//
//  DetailViewController.swift
//  StudyUIKit
//
//  Created by 김동율 on 2022/02/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    var receivedData = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        valueLabel.textColor = .blue

        valueLabel.text = receivedData
        
    }

    @IBAction func moveToMainViewActionBtn(_ sender: UIButton) {
        
    }
    
}
