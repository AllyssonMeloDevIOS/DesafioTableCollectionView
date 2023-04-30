//
//  TableView.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 06/04/23.
//

import UIKit

class TableViewVC: UIViewController {

    var tableViewScreen:TableViewScreen?

    var listcar:[ListCar] = [ListCar(nameImage: "car1"),ListCar(nameImage: "car2"),ListCar(nameImage: "car3"),ListCar(nameImage: "car4"),ListCar(nameImage: "car5"),ListCar(nameImage: "car6")]
    
    
    override func loadView() {
        tableViewScreen = TableViewScreen()
        view = tableViewScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewScreen?.configTableViewProtocols(delegate: self, dataSource: self)
        
    }
    
}

extension TableViewVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listcar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewViewCell? = tableView.dequeueReusableCell(withIdentifier: TableViewViewCell.identifier, for: indexPath) as? TableViewViewCell
        cell?.setUpCell(image:self.listcar[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
}
