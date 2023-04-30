//
//  TbWCv.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 29/04/23.
//

import UIKit

class TbWCv: UIViewController {

    private let tableview: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CvTbCell.self, forCellReuseIdentifier: CvTbCell.identifier)

        return table
    }()

    private var listCar: listCarModel = listCarModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
    }


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
}

extension TbWCv : UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return listCar.numberOfItems
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CvTbCell.identifier, for: indexPath) as! CvTbCell

        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }

}
    
