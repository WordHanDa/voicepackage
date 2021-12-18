//
//  BackgroundSound.swift
//  voicepackage
//
//  Created by macbook pro on 2021/12/10.
//

import UIKit
import AVKit
import MediaPlayer

class BackgroundSound: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var airplayButton: UIButton!
    @IBAction func AirplayButton(_ sender: UIButton) {
        airplay()
    }
    func airplay(){
        let volumeView = MPVolumeView()
        view.self.addSubview(volumeView)
           for view: UIView in volumeView.subviews {
               if let button = view as? UIButton {
                   button.sendActions(for: .touchUpInside)
                   volumeView.removeFromSuperview()
                   break
               }
           }
    }
}
