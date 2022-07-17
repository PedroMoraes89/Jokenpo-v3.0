//
//  ViewController.swift
//  Jokenpo v3.0
//
//  Created by Pedro Moraes (user220265) on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var playerWins: Int = 0
    var cpuWins: Int = 0
    var draw: Int = 0
    
    // MARK: Elementos
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "JOKENPO"
        label.textColor = .label
        label.textAlignment = .center
        label.textColor = .white()
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()
    
    let playerScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vitórias do Jogador: 0"
        label.textColor = .label
        label.textAlignment = .right
        label.textColor = .white()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    let drawScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Empates: 0"
        label.textColor = .label
        label.textAlignment = .right
        label.textColor = .white()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    } ()
    
    let cpuScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vitórias da CPU: 0"
        label.textColor = .label
        label.textAlignment = .right
        label.textColor = .white()
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    } ()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.textAlignment = .left
        label.textColor = .white()
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    } ()
    
    let playerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jogador"
        label.textColor = .label
        label.textAlignment = .center
        label.textColor = .white()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    let cpuLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CPU"
        label.textColor = .label
        label.textAlignment = .center
        label.textColor = .white()
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    let playerImage: UIImageView = {
        let image = UIImageView()
        return image
    } ()
    
    let versusImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "vs")
        return image
    } ()
    
    let cpuImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "1")
        return image
    } ()
    
    lazy var arenaStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [playerImage,
                                                                               versusImage,
                                                                               cpuImage])
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.backgroundColor = .red
        stackView.layer.cornerRadius = 5
        stackView.backgroundColor = .lightBlue()
        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.isHidden = true
        return stackView
    }()
    
    let stoneButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "0"), for: .normal)
        return button
    } ()
    
    let paperButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "1"), for: .normal)
        return button
    } ()
    
    let scissorsButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "2"), for: .normal)
        return button
    } ()
    
    lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [stoneButton,
                                                                               paperButton,
                                                                               scissorsButton])
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.backgroundColor = .red
        stackView.layer.cornerRadius = 5
        stackView.backgroundColor = .lightBlue()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    } ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkBlue()

        view.addSubviews([titleLabel,
                                    playerScoreLabel,
                                    drawScoreLabel,
                                    cpuScoreLabel,
                                    resultLabel,
                                    playerLabel,
                                    cpuLabel,
                                    arenaStackView,
                                    buttonStackView])
        
//        MARK: Constraints
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),

            playerScoreLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            playerScoreLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            playerScoreLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            playerScoreLabel.heightAnchor.constraint(equalToConstant: 25),
            
            drawScoreLabel.topAnchor.constraint(equalTo: playerScoreLabel.bottomAnchor),
            drawScoreLabel.leadingAnchor.constraint(equalTo: playerScoreLabel.leadingAnchor),
            drawScoreLabel.trailingAnchor.constraint(equalTo: playerScoreLabel.trailingAnchor),
            drawScoreLabel.heightAnchor.constraint(equalToConstant: 25),

            cpuScoreLabel.topAnchor.constraint(equalTo: drawScoreLabel.bottomAnchor),
            cpuScoreLabel.leadingAnchor.constraint(equalTo: drawScoreLabel.leadingAnchor),
            cpuScoreLabel.trailingAnchor.constraint(equalTo: drawScoreLabel.trailingAnchor),
            cpuScoreLabel.heightAnchor.constraint(equalToConstant: 25),
            
            resultLabel.topAnchor.constraint(equalTo: cpuScoreLabel.bottomAnchor, constant: 40),
            resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resultLabel.heightAnchor.constraint(equalToConstant: 40),
            
            playerLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 40),
            playerLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            playerLabel.heightAnchor.constraint(equalToConstant: 40),
            playerLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5, constant: -100),
            
            cpuLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 40),
            cpuLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            cpuLabel.heightAnchor.constraint(equalToConstant: 40),
            cpuLabel.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.5, constant: -100),
            
            arenaStackView.topAnchor.constraint(equalTo: playerLabel.bottomAnchor, constant: 10),
            arenaStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            arenaStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            arenaStackView.heightAnchor.constraint(equalToConstant: 160),
            
            playerImage.heightAnchor.constraint(equalToConstant: 120),
            playerImage.widthAnchor.constraint(equalToConstant: 120),
            
            versusImage.heightAnchor.constraint(equalToConstant: 60),
            versusImage.widthAnchor.constraint(equalToConstant: 60),
            
            cpuImage.heightAnchor.constraint(equalToConstant: 120),
            cpuImage.widthAnchor.constraint(equalToConstant: 120),
            
            buttonStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            buttonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            buttonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            buttonStackView.heightAnchor.constraint(equalToConstant: 120),
            
            stoneButton.heightAnchor.constraint(equalToConstant: 100),
            stoneButton.widthAnchor.constraint(equalToConstant: 100),
            
            paperButton.heightAnchor.constraint(equalToConstant: 100),
            paperButton.widthAnchor.constraint(equalToConstant: 100),
            
            scissorsButton.heightAnchor.constraint(equalToConstant: 100),
            scissorsButton.widthAnchor.constraint(equalToConstant: 100),
        ])
        
        stoneButton.addTarget(self, action: #selector(playStone), for: .touchUpInside)
        paperButton.addTarget(self, action: #selector(playPaper), for: .touchUpInside)
        scissorsButton.addTarget(self, action: #selector(playScissors), for: .touchUpInside)
        
    }
    
    @objc func playStone() {
        
        playerImage.image = UIImage(named: "0")
    }
    
    @objc func playPaper() {
        
        playerImage.image = UIImage(named: "1")
        
    }
    
    @objc func playScissors() {
        
        playerImage.image = UIImage(named: "2")
        
    }
}

