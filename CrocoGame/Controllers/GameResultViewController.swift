//
//  GameResultViewController.swift
//  CrocoGame
//
//  Created by Alexey Davidenko on 18.04.2023.
//

import UIKit

class GameResultViewController: UIViewController {
    
    var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    var whiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var personTeamLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "persons")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        return image
    }()
    
    var personTeamLabel: UILabel = {
        let label = UILabel()
        label.text = "Ковбои"
        label.numberOfLines = 1
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let verStack: UIStackView = {
        let subStack = UIStackView()
        subStack.axis = .vertical
        subStack.alignment = .center
        subStack.distribution = .equalSpacing
        subStack.spacing = 2.0
        subStack.translatesAutoresizingMaskIntoConstraints = false
        return subStack
    }()
    
    var pointLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.numberOfLines = 1
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 40, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Очки"
        label.numberOfLines = 1
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHierarchy()
        setConstrains()
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        
    }
    
    func setupHierarchy() {
        view.addSubview(backgroundImage)
        view.addSubview(whiteView)
        view.addSubview(personTeamLogo)
        view.addSubview(personTeamLabel)
        view.addSubview(verStack)
        verStack.addArrangedSubview(pointLabel)
        verStack.addArrangedSubview(scoreLabel)
        
    }
    
    //MARK: - Constrains
    func setConstrains() {
        
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            whiteView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            whiteView.heightAnchor.constraint(equalToConstant: 96),
            
            personTeamLogo.centerYAnchor.constraint(equalTo: whiteView.centerYAnchor),
            personTeamLogo.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 15),
            personTeamLogo.heightAnchor.constraint(equalToConstant: 56),
            personTeamLogo.widthAnchor.constraint(equalToConstant: 56),
            
            personTeamLabel.centerYAnchor.constraint(equalTo: whiteView.centerYAnchor),
            personTeamLabel.leadingAnchor.constraint(equalTo: personTeamLogo.trailingAnchor, constant: 34),
            
            verStack.centerYAnchor.constraint(equalTo: whiteView.centerYAnchor),
            verStack.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -16)
            
        ])
    }

}
