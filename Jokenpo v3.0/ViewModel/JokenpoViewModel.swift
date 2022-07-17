
//  JokenpoViewModel.swift
//  Jokenpo v3.0
//
//  Created by Pedro Moraes (user220265) on 7/17/22.


import UIKit

extension JokenpoView {

    func cpuPlay() {

        arenaStackView.isHidden = false
        var random = Int.random(in: 0...2)

        switch random {
        case  0:
            cpuImage.image = UIImage(named: "pedra")
            if playerImage.image == UIImage(named: "pedra") {
                resultLabel.text = "Empate!"
                draw += 1
                drawScoreLabel.text = "Empates: \(draw)"
            }
            else if playerImage.image == UIImage(named: "papel") {
                resultLabel.text = "Você ganhou!"
                playerWins += 1
                playerScoreLabel.text = "Vitórias do Jogador: \(playerWins)"
            }
            else if playerImage.image == UIImage(named: "tesoura") {
                resultLabel.text = "Você perdeu!"
                cpuWins += 1
                cpuScoreLabel.text = "Vitórias da CPU: \(cpuWins)"
            }

        case 1:
            cpuImage.image = UIImage(named: "papel")
            if playerImage.image == UIImage(named: "papel") {
                resultLabel.text = "Empate!"
                draw += 1
                drawScoreLabel.text = "Empates: \(draw)"
            }
            else if playerImage.image == UIImage(named: "tesoura") {
                resultLabel.text = "Você ganhou!"
                playerWins += 1
                playerScoreLabel.text = "Vitórias do Jogador: \(playerWins)"
            }
            else if playerImage.image == UIImage(named: "pedra") {
                resultLabel.text = "Você perdeu!"
                cpuWins += 1
                cpuScoreLabel.text = "Vitórias da CPU: \(cpuWins)"
            }

        default:
            cpuImage.image = UIImage(named: "tesoura")
            if playerImage.image == UIImage(named: "tesoura") {
                resultLabel.text = "Empate!"
                draw += 1
                drawScoreLabel.text = "Empates: \(draw)"
            }
            else if playerImage.image == UIImage(named: "pedra") {
                resultLabel.text = "Você ganhou!"
                playerWins += 1
                playerScoreLabel.text = "Vitórias do Jogador: \(playerWins)"
            }
            else if playerImage.image == UIImage(named: "papel") {
                resultLabel.text = "Você perdeu!"
                cpuWins += 1
                cpuScoreLabel.text = "Vitórias da CPU: \(cpuWins)"
            }

        }

    }

}
