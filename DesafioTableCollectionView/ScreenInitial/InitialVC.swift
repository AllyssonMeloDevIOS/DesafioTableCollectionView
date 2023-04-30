//
//  ViewController.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 06/04/23.
//

import UIKit

class InitialVC: UIViewController {

    var initialScreen: InitialScreen?
    
    override func loadView() {
        initialScreen = InitialScreen()
        view = initialScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialScreen?.delegate(delegate: self)
}
    

}

extension InitialVC: InitialScreenProtocol {
    func tappedButtonTableView() {
        print("Chegou na VC (TableView)")
        let vc: TableViewVC = TableViewVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tappedButtonCollectionView() {
        print("Chegou na VC (CollectionView)")
        let vc: CollectionViewVC = CollectionViewVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tappedButtonTableViewWithCollectionView() {
        print("Chegou na VC (TableViewCollectionViewVC)")
        let vc: TbWCv = TbWCv()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tappedButtonTest() {
        print("Chegou na VC (buttonTest)")
        let vc: ButtonTestViewController = ButtonTestViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
