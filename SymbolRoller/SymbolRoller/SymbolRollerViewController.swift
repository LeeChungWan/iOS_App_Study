//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by wanchung on 2022/05/01.
//

import UIKit

class SymbolRollerViewController: UIViewController {

    let symbols = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    /*
     ㅇ ViewController의 life cycle.
        1. viewDidLoad()
        2. viewWillApear()
        3. viewDidApear()
     
     ㅇ storyboard에서 cnt 누르고 code로 긁어 올때
        1. IBOutlet: 스토리보드 구성 요소
        2. IBAction: 스토리보드 구성 요소의 행동(클릭 등..)
     */
    
    // 메모리에 올린다.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(systemName: "cloud")
        print("view did load...")
    }
    
    // 뷰가 나타날거야
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear...")
    }
    
    // 뷰가 나타났다.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear...")
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("버튼이 눌렸다 이 자슥아!")
    }
}
