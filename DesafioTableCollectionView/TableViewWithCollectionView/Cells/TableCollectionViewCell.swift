//
//  TableCollectionViewCell.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 29/04/23.
//

import UIKit

class TableCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TableCollectionViewCell"
    
    private let labelLegend: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        
        return label
    }()

    private let carImageView: UIImageView = {
        let image = UIImageView()

        return image
    }()

    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        contentView.addSubview(labelLegend)
        contentView.addSubview(carImageView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        carImageView.frame = CGRect(x: 5, y: 5, width: contentView.frame.size.width, height: contentView.frame.size.height)
        labelLegend.frame = CGRect(x: 5,
                                   y: contentView.frame.size.height-50, width: contentView.frame.size.width, height: contentView.frame.size.height)

    }

    public func configure(with model: CollectionTableCellModel){
        labelLegend.text = model.title
        carImageView.image = UIImage(named: model.imageName)
    }
}
