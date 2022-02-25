//
//  DelegateViewController.swift
//  StudyUIKit
//
//  Created by 김동율 on 2022/02/25.
//

import UIKit

// 데이터 주는 곳에서 Protocol 선언할 것.
protocol DelegateViewControllerDelegate: AnyObject {
    func passString(value: String)
}

class DelegateViewController: UIViewController {

    // 1. 값이 있을수도 없을 수도 있으므로 Optional
    // 2. 받는쪽에서 델리게이트 사용하므로 weak로
    weak var delegate : DelegateViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func giveDataToMainView(_ sender: UIButton) {
        delegate?.passString(value: "Hello")
        // dismiss가 뷰 닫는거.
        self.dismiss(animated: true, completion: nil)
    }
    
}
