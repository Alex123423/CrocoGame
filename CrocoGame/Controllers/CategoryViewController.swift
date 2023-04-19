//
//  CategoryViewController.swift
//  CrocoGame
//
//  Created by Келлер Дмитрий on 18.04.2023.
//

import UIKit

class CategoryViewController: UIViewController {
    var backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    
    lazy var animalView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "CustomPurple")
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var animalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "animals")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var animalLabel: UILabel = {
        let label = UILabel()
        label.text = "Животные"
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var animalSwitch: UISwitch = {
            let switchControl = UISwitch()
            switchControl.isOn = true
            switchControl.translatesAutoresizingMaskIntoConstraints = false
            return switchControl
        }()
    
    let animalStack: UIStackView = {
        let subStack = UIStackView()
        subStack.axis = .vertical
        subStack.alignment = .center
        subStack.distribution = .equalSpacing
        subStack.spacing = 2.0
        subStack.translatesAutoresizingMaskIntoConstraints = false
        return subStack
    }()
    
    lazy var foodButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "food"), for: .normal)
        button.setTitle("Еда", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        button.backgroundColor = UIColor(named: "CustomYellow")
        button.titleLabel?.textAlignment = .center
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()


    
    lazy var personView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "CustomBlue")
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var personImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "persons")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var personLabel: UILabel = {
        let label = UILabel()
        label.text = "Личности"
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let personStack: UIStackView = {
        let subStack = UIStackView()
        subStack.axis = .vertical
        subStack.alignment = .center
        subStack.distribution = .equalSpacing
        subStack.spacing = 2.0
        subStack.translatesAutoresizingMaskIntoConstraints = false
        return subStack
    }()
    
    lazy var hobbyView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "CustomRed")
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var hobbyImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "hobbie")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var hobbyLabel: UILabel = {
        let label = UILabel()
        label.text = "Хобби"
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let hobbyStack: UIStackView = {
        let subStack = UIStackView()
        subStack.axis = .vertical
        subStack.alignment = .center
        subStack.distribution = .equalSpacing
        subStack.spacing = 2.0
        subStack.translatesAutoresizingMaskIntoConstraints = false
        return subStack
    }()
    
    
    lazy var startGameButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Начать игру", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(named: "CustomGreen")
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 17.0, weight: .medium)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setConstrains()
        title = "Категории"
        navigationController?.navigationBar.prefersLargeTitles = true
        let backButton = UIBarButtonItem(title: "<", style: .plain, target: nil, action: nil)
               navigationItem.backBarButtonItem = backButton
        navigationItem.leftBarButtonItem = backButton
    }
    
    
    @objc func buttonTapped(_ sender: UIButton) {
        
    }
    
    func setupHierarchy() {
        view.addSubview(backgroundImage)
        
        view.addSubview(animalView)
        view.addSubview(animalImageView)
        view.addSubview(animalLabel)
        view.addSubview(animalSwitch)
        view.addSubview(animalStack)
        
        view.addSubview(foodButton)
        
        
        view.addSubview(personView)
        view.addSubview(personImageView)
        view.addSubview(personLabel)
        view.addSubview(personStack)
        
        view.addSubview(hobbyView)
        view.addSubview(hobbyImageView)
        view.addSubview(hobbyLabel)
        view.addSubview(hobbyStack)
        
        view.addSubview(startGameButton)
        
    }
    
    //MARK: - Constrains
    private func setConstrains() {
        NSLayoutConstraint.activate([
            
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            animalView.topAnchor.constraint(equalTo: view.topAnchor, constant: 108),
            animalView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            animalView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            animalView.heightAnchor.constraint(equalToConstant: 90),
            
            animalImageView.centerYAnchor.constraint(equalTo: animalView.centerYAnchor),
            animalImageView.leadingAnchor.constraint(equalTo: animalView.leadingAnchor, constant: 15),
            animalImageView.heightAnchor.constraint(equalToConstant: 56),
            animalImageView.widthAnchor.constraint(equalToConstant: 56),
            
            animalLabel.centerYAnchor.constraint(equalTo: animalImageView.centerYAnchor),
            animalLabel.leadingAnchor.constraint(equalTo: animalImageView.trailingAnchor, constant: 34),
        
            animalSwitch.leadingAnchor.constraint(equalTo: animalLabel.trailingAnchor, constant: 25),
            animalSwitch.centerYAnchor.constraint(equalTo: animalView.centerYAnchor),

            
            animalStack.centerYAnchor.constraint(equalTo: animalView.centerYAnchor),
            animalStack.trailingAnchor.constraint(equalTo: animalView.trailingAnchor, constant: -16),
            
            
            foodButton.topAnchor.constraint(equalTo: animalView.bottomAnchor, constant: 16),
            foodButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            foodButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            foodButton.heightAnchor.constraint(equalToConstant: 90),
            
            
            personView.topAnchor.constraint(equalTo: foodButton.bottomAnchor, constant: 16),
            personView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            personView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            personView.heightAnchor.constraint(equalToConstant: 90),
            
            personImageView.centerYAnchor.constraint(equalTo: personView.centerYAnchor),
            personImageView.leadingAnchor.constraint(equalTo: personView.leadingAnchor, constant: 15),
            personImageView.heightAnchor.constraint(equalToConstant: 56),
            personImageView.widthAnchor.constraint(equalToConstant: 56),
            
            personLabel.centerYAnchor.constraint(equalTo: personImageView.centerYAnchor),
            personLabel.leadingAnchor.constraint(equalTo: personImageView.trailingAnchor, constant: 34),
            
            personStack.centerYAnchor.constraint(equalTo: personImageView.centerYAnchor),
            personStack.trailingAnchor.constraint(equalTo: personImageView.trailingAnchor, constant: -16),
            
           hobbyView.topAnchor.constraint(equalTo: personView.bottomAnchor, constant: 16),
           hobbyView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
           hobbyView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
           hobbyView.heightAnchor.constraint(equalToConstant: 90),
          
           hobbyImageView.centerYAnchor.constraint(equalTo: hobbyView.centerYAnchor),
           hobbyImageView.leadingAnchor.constraint(equalTo: hobbyView.leadingAnchor, constant: 15),
           hobbyImageView.heightAnchor.constraint(equalToConstant: 56),
           hobbyImageView.widthAnchor.constraint(equalToConstant: 56),
     
           hobbyLabel.centerYAnchor.constraint(equalTo: hobbyImageView.centerYAnchor),
           hobbyLabel.leadingAnchor.constraint(equalTo: hobbyImageView.trailingAnchor, constant: 34),

           hobbyStack.centerYAnchor.constraint(equalTo: hobbyImageView.centerYAnchor),
           hobbyStack.trailingAnchor.constraint(equalTo: hobbyImageView.trailingAnchor, constant: -16),
            
            
            startGameButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -46),
            startGameButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            startGameButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            startGameButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        
    }
}
