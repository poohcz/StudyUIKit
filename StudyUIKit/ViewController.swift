//
//  ViewController.swift
//  StudyUIKit
//
//  Created by 김동율 on 2022/02/24.
//

// 데이터 넘기는 방법 6가지

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }

    @IBAction func moveToDetailViewActionBtn(_ sender: UIButton) {
        // 인스턴스 생성
        let detailVC = DetailViewController(nibName: "DetailViewController", bundle: nil)
        // 주는 값
        detailVC.receivedData = "1"
        
        // 실무에서 했을때는 label 값을 바꿀려고 했을 때 크래쉬가 떴다. 그럴경우 dispatch로 해결했는데, label은 DetailVC가 만들어지기 전에 들어가지므로 nli값을 뱉는다.
        // 그러므로 present 아래에 넣으면 된다.
//        detailVC.valueLabel.text = "Error"
        
        // 출발
        self.present(detailVC, animated: true, completion: nil)
        
        detailVC.valueLabel.text = "Error"
    }
    
}

