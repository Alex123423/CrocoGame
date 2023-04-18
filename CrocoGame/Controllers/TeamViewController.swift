//
//  TeamViewController.swift
//  CrocoGame
//
//  Created by Келлер Дмитрий on 18.04.2023.
//



import UIKit

class TeamViewController: UIViewController {
    // MARK: - UI elements
    
    let verTeamStack: UIStackView = {
        let teamStackView = UIStackView()
        teamStackView.axis = .vertical
        teamStackView.alignment = .fill
        teamStackView.distribution = .fillEqually
        teamStackView.spacing = 28.0
        teamStackView.translatesAutoresizingMaskIntoConstraints = false
        return teamStackView
    }()
    
    lazy var cowboyView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var cowboyImageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        imageView.image = UIImage(named: "persons")
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var  slenderView: UIView = {
        let view = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    lazy var gamerReadyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Игроки готовы", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 10
        button.titleLabel?.font = .systemFont(ofSize: 17.0, weight: .medium)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        //methods
        setupHierarchy()
        setConstrains()
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        
    }
    
    private func setupHierarchy() {
        view.addSubview(verTeamStack)
        verTeamStack.addArrangedSubview(cowboyView)
        verTeamStack.addArrangedSubview(slenderView)
        view.addSubview(gamerReadyButton)
    }
    
    //MARK: - Constrains
    private func setConstrains() {
        
        NSLayoutConstraint.activate([
            
            verTeamStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            verTeamStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            verTeamStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            verTeamStack.heightAnchor.constraint(equalToConstant: 220),
     
            gamerReadyButton.topAnchor.constraint(equalTo: verTeamStack.bottomAnchor, constant: 360),
            gamerReadyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            gamerReadyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            gamerReadyButton.heightAnchor.constraint(equalToConstant: 70)
        ])
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
