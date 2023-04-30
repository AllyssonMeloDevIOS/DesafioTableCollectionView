//
//  buttonTestViewController.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 09/04/23.
//

import UIKit

class ButtonTestViewController: UIViewController {

    private let tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.register(CollectionTableViewCell.self, forCellReuseIdentifier: CollectionTableViewCell.identifier)

        return table
    }()

    private var models = [CellModel]()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpModels()

        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
    }

    private func setUpModels() {
        models.append(.collectionView(models: [
            CollectionTableCellModel(title: "Ferrari",imageName: "car1"),
            CollectionTableCellModel(title: "Audi",imageName: "car2"),
            CollectionTableCellModel(title: "BMW",imageName: "car3"),
            CollectionTableCellModel(title: "McLaren",imageName: "car4"),
            CollectionTableCellModel(title: "Mercedes",imageName: "car5"),
            CollectionTableCellModel(title: "Ford",imageName: "car6"),
                                              ], rows: 2))
        
        models.append(.list(models: [ListCellModel(title: "Car 1"),
                                     ListCellModel(title: "Car 2"),
                                     ListCellModel(title: "Car 3"),
                                     ListCellModel(title: "Car 4"),
                                     ListCellModel(title: "Car 5"),
                                     ListCellModel(title: "Car 6"),
                                    ]))


    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
}

extension ButtonTestViewController : UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch models[section]{
        case.collectionView(_, _): return 1
        case .list(models: let models): return models.count
            
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch models[indexPath.section]{
        case .list(let models):
            let model = models[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

            cell.textLabel?.text = model.title
            
        return cell
            
        case.collectionView(let models, _):
            
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell

                cell.configure(with: models)
            cell.delegate = self
            return cell
            
        
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("Did Select normal list item")
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch models[indexPath.section] {
        case .list(_): return 50
        case .collectionView(_,let rows): return 140 * CGFloat(rows)
        }
    }

}

extension ButtonTestViewController:  CollectionTableViewCellDelegate {
    func didSelectItem(with model: CollectionTableCellModel) {
        print("selected \(model.title)")
    }
}
