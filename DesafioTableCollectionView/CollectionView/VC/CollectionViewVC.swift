//
//  CollectionViewVC.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 06/04/23.
//

import UIKit

class CollectionViewVC: UIViewController {

    var collectionViewScreen:CollectionViewScreen?
    
    private let listcar: [UIImage] = [UIImage(named: "car1")!, UIImage(named: "car2")!,UIImage(named: "car3")!,UIImage(named: "car4")!,UIImage(named: "car5")!,UIImage(named: "car6")!]
    
    
    override func loadView() {
        collectionViewScreen = CollectionViewScreen()
        view = collectionViewScreen
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewScreen?.configProtocolsCollectionView(delegate: self, dataSource: self)
        
    }

}

extension CollectionViewVC: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listcar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.configure(with: listcar[indexPath.item])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 300)
    }
    
    
}
