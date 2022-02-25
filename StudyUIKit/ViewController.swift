//
//  ViewController.swift
//  StudyUIKit
//
//  Created by 김동율 on 2022/02/24.
//

// 데이터 넘기는 방법 6가지
// 1. 넘길VC에 변수(property) 생성 후 present로 넘긴다.
// 2. segue로 넘기는데, override prepare기능 이용해서 하는데, 나는 그냥 할줄만 아는 정도로 넘어간다. 실무에서 단한번도 쓰지 않을듯...
// 3. 클래스 자체를 넘긴다.
// 4. 가장중요한 델리게이트(프로토콜)

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var receivedDataFromDelegateViewLabel: UILabel!
    
    
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
    
    // 델리게이트 페이지 띄우고, 델리게이트View에 선언된 델리게이트 = self(여기서 사용하겠다)
    @IBAction func moveToDelegateViewActionBtn(_ sender: UIButton) {
        let delegateVC = DelegateViewController(nibName: "DelegateViewController", bundle: nil)
        delegateVC.delegate = self
        self.present(delegateVC, animated: true, completion: nil)
    }
}

// 데이터 받는 쪽에서 extension사용할 것. 클래쓰에 아래 델리게이트를 추가해도 되지만, 가독성을 위해서 나눠서 한다.
extension ViewController: DelegateViewControllerDelegate {
    func passString(value: String) {
        receivedDataFromDelegateViewLabel.textColor = .blue
        receivedDataFromDelegateViewLabel.text = value
    }
    
    
}

