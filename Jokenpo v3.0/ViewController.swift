//
//  ViewController.swift
//  Jokenpo v3.0
//
//  Created by Pedro Moraes (user220265) on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Elementos
    
    let playerScoreLabel = UILabel()
    let drawScoreLabel = UILabel()
    let cpuScoreLabel = UILabel()
    
    override func loadView() {
        view = UIView()
        
        playerScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        playerScoreLabel.text = "Vitórias do Jogador: 0"
        playerScoreLabel.textColor = .label
        playerScoreLabel.textAlignment = .left
//        playerScoreLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        drawScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        drawScoreLabel.text = "Empates: 0"
        drawScoreLabel.textColor = .label
        drawScoreLabel.textAlignment = .left
//        drawScoreLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
        cpuScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        cpuScoreLabel.text = "Vitórias do Smartphone: 0"
        cpuScoreLabel.textColor = .label
        cpuScoreLabel.textAlignment = .left
//        cpuScoreLabel.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        
//        MARK: Constraints
        
        NSLayoutConstraint.activate([
        
            playerScoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            playerScoreLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            playerScoreLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -10),
            playerScoreLabel.heightAnchor.constraint(equalToConstant: 40),
            
            drawScoreLabel.topAnchor.constraint(equalTo: playerScoreLabel.bottomAnchor),
            drawScoreLabel.leadingAnchor.constraint(equalTo: playerScoreLabel.leadingAnchor),
            drawScoreLabel.trailingAnchor.constraint(equalTo: playerScoreLabel.trailingAnchor),
            drawScoreLabel.heightAnchor.constraint(equalToConstant: 40),
            
            cpuScoreLabel.topAnchor.constraint(equalTo: drawScoreLabel.bottomAnchor),
            cpuScoreLabel.leadingAnchor.constraint(equalTo: drawScoreLabel.leadingAnchor),
            cpuScoreLabel.trailingAnchor.constraint(equalTo: drawScoreLabel.trailingAnchor),
            cpuScoreLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubviews([playerScoreLabel,
                                  drawScoreLabel,
                                  cpuScoreLabel])
        
        
        
    }


}

extension UIView {
    open func addSubviews(_ views: [UIView]){
        for view in views {
            self.addSubview(view)
        }
    }
}
