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
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    let drawScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Empates: 0"
        label.textColor = .label
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        return label
    } ()
    
    let cpuScoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vitórias da CPU: 0"
        label.textColor = .label
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        return label
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue

        view.addSubviews([playerScoreLabel,
                                  drawScoreLabel,
                                  cpuScoreLabel])
        
        NSLayoutConstraint.activate([

            playerScoreLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10),
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


}

extension UIView {
    open func addSubviews(_ views: [UIView]){
        for view in views {
            self.addSubview(view)
        }
    }
}
