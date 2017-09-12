//
//  TimerModel.swift
//  Timer
//
//  Created by Martin Vacas on 12/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import Foundation

//protocol TimerDelegate: class {
//    func updateData(_ data: Int)
//}

//Estructura para representar el Modelo del Timer
class TimerModel {
    
    //weak var delegate: TimerDelegate?
    weak var delegate: ViewController?
    
    
    private var timer = Timer()

    var time = 210
    
    @objc func decreaseTimer() {
        if time > 0 {
            time -= 1
            delegate?.updateData(time)
        } else {
            timer.invalidate()
        }
    }
    
    func playTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    func pauseTimer() {
        timer.invalidate()
    }
    
    func resetTimer() {
        time = 210
        delegate?.updateData(time)
    }
    
    func plusTen() {
        time += 10
        delegate?.updateData(time)
    }
    
    func minusTen() {
        if time > 10 {
            time -= 10
            delegate?.updateData(time)
        }
    }
}
