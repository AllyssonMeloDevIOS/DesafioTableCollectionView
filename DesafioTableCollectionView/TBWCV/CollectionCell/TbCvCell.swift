//
//  TbCvCell.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 29/04/23.
//

import UIKit

class TbCvCell: UICollectionViewCell {
    
    static let identifier = "TbCvCell"

    private let carImageView: UIImageView = {
        let image = UIImageView()

        return image
    }()

    override init(frame: CGRect){
        super.init(frame: frame)
        contentView.addSubview(carImageView)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        carImageView.frame = CGRect(x: 5, y: 5, width: contentView.frame.size.width, height: contentView.frame.size.height)
    }

    public func configure(with nameimage: ListCar){
        carImageView.image = UIImage(named: nameimage.nameImage)
    }
}
