//
//  ViewController.swift
//  AppEventCount
//
//  Created by Ahmed Naser on 11/16/20.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var didFinishLaunchingCount = 0
    var willResignActiveCount = 0
    var didEnterBackgroundCount = 0
    var willEnterForegroundCount = 0
    var didBecomeActiveCount = 0
    var willTerminateCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateView()
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(didFinishLaunchingCount) time(s)"
        willResignActiveLabel.text = "The app has resign active \(willResignActiveCount) time(s)"
        didEnterBackgroundLabel.text = "The app has entered background \(didEnterBackgroundCount) time(s)"
        
        willEnterForegroundLabel.text = "The app has entered foreground \(willEnterForegroundCount) time(s)"
        didBecomeActiveLabel.text = "The app has became active \(didBecomeActiveCount) time(s)"
        willTerminateLabel.text = "The app has terminated \(willTerminateCount) time(s)"
    }
}

