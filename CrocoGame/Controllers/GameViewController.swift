//
//  GameViewController.swift
//  CrocoGame
//
//  Created by Александр Вихарев on 17.04.2023.
//

import UIKit

class GameViewController: UIViewController {
    
    
    let arrayWords = ["автомобиль", "банан", "велосипед", "гитара", "дом", "ежик", "жираф", "зонт", "ишак", "компьютер", "лампа", "медведь", "ноутбук", "облако", "пингвин", "ракета", "солнце", "телефон", "улитка", "фламинго", "холодильник", "цветок", "шарик", "электроника", "юла", "яблоко"]
    
    
    let arrayConditions = [
        "Объясни с помощью слов",
        "Объясни с помощью жестов",
        "Объясни с помощью рисунка",
        "Объясняй со злостью",
        "Объясняй с помощью мимики",
        "Объясняй вульгарно",
        "Объясняй сексуально"
    ]
    
    
    
    let verStack: UIStackView = {
        let subStack = UIStackView()
        subStack.axis = .vertical
        subStack.alignment = .center
        subStack.distribution = .equalSpacing
        subStack.spacing = 20
        subStack.translatesAutoresizingMaskIntoConstraints = false
        return subStack
    }()
    
    let imageBackground: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        image.contentMode = .scaleToFill
        image.clipsToBounds = false
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        
        
        
        return image
    }()
    
    
    
    let imageLitleCrocodile: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "littleCroc")
        image.contentMode = .scaleAspectFit
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    let timerLabel: UILabel = {
        let label = UILabel()
        label.text = "00:59"
        label.font = .systemFont(ofSize: 48)
        label.backgroundColor = .clear
        return label
    }()
    
    
    let wordsLabel: UILabel = {
        let label = UILabel()
        label.text = "Картошка"
        label.font = .systemFont(ofSize: 48)
        label.backgroundColor = .clear
        
    
        return label
    }()
    
    
    
    let conditionsLabel: UILabel = {
        let label = UILabel()
        label.text = "объясни с помощью жестов"
        label.font = .systemFont(ofSize: 20)
        label.backgroundColor = .clear
        return label
        
    }()
    
    
    
    let buttonCorrect: UIButton = {
        let button = UIButton()
        button.setTitle("Правильно", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 15
        button.titleLabel?.font = .systemFont(ofSize: 17.0, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let buttonViolation: UIButton = {
        let button = UIButton()
        button.setTitle("Нарушил правила", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        button.titleLabel?.font = .systemFont(ofSize: 17.0, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let buttonReset: UIButton = {
        let button = UIButton()
        button.setTitle("Сброс", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 15
        button.titleLabel?.font = .systemFont(ofSize: 17.0, weight: .medium)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
  
    
    override func viewDidLoad() {
        
      
    }
    
    
    @objc func buttonTapped(_ sender: UIButton) {
        
    }
    
    
    
    
    func setupHierarchy(){
        
        
    }
    
    
    func setConstrains(){
        
        
    }
    
    
    
    
}
