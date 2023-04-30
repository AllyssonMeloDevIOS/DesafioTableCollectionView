//
//  TableViewViewCell.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 06/04/23.
//

import UIKit

class TableViewViewCell: UITableViewCell {

    static let identifier:String = "TableViewViewCell"
    
    lazy var carImageView:UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        
        
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(carImageView)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setUpCell(image:ListCar){
        carImageView.image = UIImage(named: image.nameImage)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            carImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            carImageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            carImageView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            carImageView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}
