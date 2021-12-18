//
//  ViewController.swift
//  voicepackage
//
//  Created by macbook pro on 2021/12/3.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LayerBD.layer.cornerRadius = 20
        LayerTG.layer.cornerRadius = 20
        LayerBackground.layer.cornerRadius = 20
    }
    @IBOutlet weak var LayerBD: UIImageView!
    @IBOutlet weak var LayerTG: UIImageView!
    @IBOutlet weak var LayerBackground: UIImageView!
    @IBAction func unwind(for segue: UIStoryboardSegue) {
         if segue.identifier == "seguewanye" {
             _ = segue.source as! wanye
         }
     }
    @IBAction func unwind2(for segue: UIStoryboardSegue) {
         if segue.identifier == "seguegodtoneasia" {
             _ = segue.source as! godtoneasia
         }
     }
    @IBAction func unwind3(for segue: UIStoryboardSegue) {
         if segue.identifier == "segueBackground" {
             _ = segue.source as! BackgroundSound
         }
     }
}

