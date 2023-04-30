//
//  InitialScreen.swift
//  DesafioTableCollectionView
//
//  Created by Allysson Melo on 06/04/23.
//

import UIKit

protocol InitialScreenProtocol: AnyObject {
    func tappedButtonTableView()
    func tappedButtonCollectionView()
    func tappedButtonTableViewWithCollectionView()
    func tappedButtonTest()
}

class InitialScreen: UIView {
    
    private weak var delegate: InitialScreenProtocol?
    
    public func delegate(delegate:InitialScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var labelInitial: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Carros Esportivos"
        label.font = UIFont.boldSystemFont(ofSize: 40)
        
       
        return label
    }()
    
    lazy var buttonTableView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  TableView  ", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.backgroundColor = .white.withAlphaComponent(0.5)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedButtonTableView), for: .touchUpInside)
        
        
        
        return button
    }()
    @objc func tappedButtonTableView(_ sender: UIButton) {
        print("Botão Table View Funcionando")
        delegate?.tappedButtonTableView()
    }
    
    lazy var buttonCollectionView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  CollectionView  ", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.backgroundColor = .white.withAlphaComponent(0.5)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedButtonCollectionView), for: .touchUpInside)
        
        return button
    }()
    @objc func tappedButtonCollectionView(_ sender: UIButton) {
        print("Botão Collection View Funcionando")
        delegate?.tappedButtonCollectionView()
    }
    
    lazy var buttonTableViewWithCollectionView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("  TableView com CollectionView  ", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.backgroundColor = .white.withAlphaComponent(0.5)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedButtonTableViewWithCollectionView), for: .touchUpInside)

        return button
    }()
    
    @objc func tappedButtonTableViewWithCollectionView(_ sender: UIButton) {
        print("Botão TbWCv com CollectionView Funcionando")
        delegate?.tappedButtonTableViewWithCollectionView()
    }
    
    lazy var buttonTest: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("TableView com CollectionView (legendas)", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.backgroundColor = .white.withAlphaComponent(0.5)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedButtonTest), for: .touchUpInside)
        
        return button
    }()
    
    @objc func tappedButtonTest(_ sender: UIButton) {
        print("Botão Table View com CollectionView Funcionando")
        delegate?.tappedButtonTest()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
        configBackGroundColor()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(labelInitial)
        addSubview(buttonTableView)
        addSubview(buttonCollectionView)
        addSubview(buttonTableViewWithCollectionView)
        addSubview(buttonTest)
    }
    
    func configBackGroundColor(){
        backgroundColor = .systemCyan
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
        
            
            labelInitial.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 10),
            labelInitial.centerXAnchor.constraint(equalTo: centerXAnchor),
        
            buttonTableView.topAnchor.constraint(equalTo: labelInitial.bottomAnchor,constant: 30),
            buttonTableView.centerXAnchor.constraint(equalTo: labelInitial.centerXAnchor),
            // bt tableview
            buttonCollectionView.topAnchor.constraint(equalTo: buttonTableView.bottomAnchor,constant: 30),
            buttonCollectionView.centerXAnchor.constraint(equalTo: labelInitial.centerXAnchor),
            
            buttonTableViewWithCollectionView.topAnchor.constraint(equalTo: buttonTest.bottomAnchor,constant: 30),
            buttonTableViewWithCollectionView.centerXAnchor.constraint(equalTo: labelInitial.centerXAnchor),
            
            buttonTest.topAnchor.constraint(equalTo: buttonCollectionView.bottomAnchor,constant: 30),
            buttonTest.centerXAnchor.constraint(equalTo: labelInitial.centerXAnchor)
            
            
            
            
            
        
        
        
        ])
    }
    
    
}


