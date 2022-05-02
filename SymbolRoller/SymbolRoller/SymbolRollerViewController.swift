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
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    /*
     ㅇ ViewController의 life cycle.
        1. viewDidLoad()
        2. viewWillApear()
        3. viewDidApear()
     
     ㅇ storyboard에서 cnt 누르고 code로 긁어 올때
        1. IBOutlet: 스토리보드 구성 요소
        2. IBAction: 스토리보드 구성 요소의 행동(클릭 등..)
     
     ㅇ 코드 맨 마지막에 ! 표시는 언랩핑으로 값이 무조건 있다는 것
     
     ㅇ DRY: Do Not Repeat Yourself
     */
    
    // 메모리에 올린다.
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         TODO
          - 심볼에서 하나를 임의로 추출해서 이미지와 텍스트를 설정한다.
         */
        reload()
        button.tintColor = UIColor.systemPink
    }
    
    // 뷰가 나타날거야
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // 뷰가 나타났다.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
    }
}
