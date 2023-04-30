//
//  listCarModel.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 07/04/23.
//

import UIKit

class listCarModel {
    
    private var listCar = [ListCar(nameImage: "car1"),ListCar(nameImage: "car2"),ListCar(nameImage: "car3"),ListCar(nameImage: "car4"),ListCar(nameImage: "car5"),ListCar(nameImage: "car6")
    ]

    public var getListCar: [ListCar] {
        listCar
    }
    
    public var numberOfItems: Int {
        2
    }

}
