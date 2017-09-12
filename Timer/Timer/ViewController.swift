//
//  ViewController.swift
//  Timer
//
//  Created by Martin Vacas on 12/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var time: UILabel!

    //MODEL
    private var timerModel = TimerModel()
    
    //MODEL ACTIONS
    @IBAction func pauseButton(_ sender: UIBarButtonItem) {
        timerModel.pauseTimer()
    }
    
    @IBAction func playButton(_ sender: UIBarButtonItem) {
        timerModel.playTimer()
    }
    
    @IBAction func minusTen(_ sender: UIBarButtonItem) {
        timerModel.minusTen()
    }
    
    @IBAction func reset(_ sender: UIBarButtonItem) {
        timerModel.resetTimer()
    }
    
    @IBAction func plusTen(_ sender: UIBarButtonItem) {
        timerModel.plusTen()
    }
    
    
    //LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        timerModel.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func updateData(_ data: Int) {
        time.text = String(data)
    }
    
    
}

//extension ViewController: TimerDelegate {
//   // func updateData(_ data: Int) {
//        time.text = String(data)
//    }
//}

