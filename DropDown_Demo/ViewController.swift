//
//  ViewController.swift
//  DropDown_Demo
//
//  Created by 준수김 on 2021/10/11.
//

import UIKit
import DropDown

class ViewController: UIViewController {

    let dropDown = DropDown()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dropDown.dataSource = ["서울", "강원도", "전라북도", "전라남도", "충청북도", "충청남도", "경상북도", "경상남도", "제주도"] //데이터 소스
        
        
    }

    @IBAction func Btn(_ sender: UIButton) {
        dropDown.show() //드롭다운 메뉴 열기
        
        dropDown.bottomOffset = CGPoint(x: 0, y: -70) //드롭다운 위치 조정
        //오류 코드: dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.width = 150//가로길이
        dropDown.textColor = UIColor.black //글자색
        dropDown.selectedTextColor = UIColor.red //선택된 메뉴 글씨 색
        dropDown.textFont = UIFont.systemFont(ofSize: 20) //폰트사이즈
        dropDown.backgroundColor = UIColor.white //배경색
        dropDown.selectionBackgroundColor = UIColor.white //선택된 메뉴 배경색
        dropDown.cellHeight = 50 //높이
        dropDown.cornerRadius = 15 //모서리 둥글게
        //선택한 값 가져오기
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            print("선택한 아이템 : \(item)")
            print("인덱스 : \(index)")
        }
        //선택되었던 상태 유지못하게 만들기
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            print("선택한 아이템 : \(item)")
            print("인덱스 : \(index)")
            self.dropDown.clearSelection()
        }
        //드롭다운 cell 가운데 정렬
        dropDown.customCellConfiguration = { [unowned self] (index: Int, item: String, cell: DropDownCell) in
        // Setup your custom UI components
        cell.optionLabel.textAlignment = .center
        }
    }
    

}

