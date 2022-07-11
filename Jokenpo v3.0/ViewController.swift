//
//  ViewController.swift
//  Jokenpo v3.0
//
//  Created by Pedro Moraes (user220265) on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Elementos
    
    let playerScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vitórias do Jogador: 0"
        label.textColor = .label
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()
    
    let drawScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Empates: 0"
        label.textColor = .label
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    } ()
    
    let cpuScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vitórias da CPU: 0"
        label.textColor = .label
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    } ()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Resultado"
        label.textColor = .label
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        return label
    } ()
    
    let playerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Jogador"
        label.textColor = .label
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    let cpuLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "CPU"
        label.textColor = .label
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 22, weight: .bold)
        return label
    }()
    
    let playerImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "0")
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
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue

        view.addSubviews([playerScoreLabel,
                                    drawScoreLabel,
                                    cpuScoreLabel,
                                    resultLabel,
                                    playerLabel,
                                    cpuLabel,
                                    arenaStackView])
        
//        MARK: Constraints
        
        NSLayoutConstraint.activate([

            playerScoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10),
            playerScoreLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            playerScoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
            playerScoreLabel.heightAnchor.constraint(equalToConstant: 30),
            
            drawScoreLabel.topAnchor.constraint(equalTo: playerScoreLabel.bottomAnchor),
            drawScoreLabel.leadingAnchor.constraint(equalTo: playerScoreLabel.leadingAnchor),
            drawScoreLabel.trailingAnchor.constraint(equalTo: playerScoreLabel.trailingAnchor),
            drawScoreLabel.heightAnchor.constraint(equalToConstant: 30),

            cpuScoreLabel.topAnchor.constraint(equalTo: drawScoreLabel.bottomAnchor),
            cpuScoreLabel.leadingAnchor.constraint(equalTo: drawScoreLabel.leadingAnchor),
            cpuScoreLabel.trailingAnchor.constraint(equalTo: drawScoreLabel.trailingAnchor),
            cpuScoreLabel.heightAnchor.constraint(equalToConstant: 30),
            
            resultLabel.topAnchor.constraint(equalTo: cpuScoreLabel.bottomAnchor, constant: 40),
            resultLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            resultLabel.heightAnchor.constraint(equalToConstant: 40),
            
            playerLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 40),
            playerLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            playerLabel.heightAnchor.constraint(equalToConstant: 40),
            playerLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5, constant: -100),
            
            cpuLabel.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 40),
            cpuLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20),
            cpuLabel.heightAnchor.constraint(equalToConstant: 40),
            cpuLabel.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5, constant: -100),
            
            arenaStackView.topAnchor.constraint(equalTo: playerLabel.bottomAnchor, constant: 10),
            arenaStackView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            arenaStackView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
            arenaStackView.heightAnchor.constraint(equalToConstant: 160),
            
            playerImage.heightAnchor.constraint(equalToConstant: 120),
            playerImage.widthAnchor.constraint(equalToConstant: 120),
            
            versusImage.heightAnchor.constraint(equalToConstant: 60),
            versusImage.widthAnchor.constraint(equalToConstant: 60),
            
            cpuImage.heightAnchor.constraint(equalToConstant: 120),
            cpuImage.widthAnchor.constraint(equalToConstant: 120),
        ])
    }


}

extension UIView {
    open func addSubviews(_ views: [UIView]){
        for view in views {
            self.addSubview(view)
        }
    }
}
