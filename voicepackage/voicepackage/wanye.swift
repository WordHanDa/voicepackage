//
//  wanye.swift
//  voicepackage
//
//  Created by macbook pro on 2021/12/4.
//

import UIKit
import MediaPlayer
import Social

class wanye: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func no_problem(_ sender: UIButton) {
        audio(filePath: urlL)
    }

    @IBAction func share1(_ sender: Any) {
        sharefunc(filePath: urlL)
    }
    
    @IBAction func HauChili(_ sender: Any) {
        audio(filePath: urlH)
    }
    
    @IBAction func share2(_ sender: Any) {
        sharefunc(filePath: urlH)
    }
    
    @IBAction func Higan(_ sender: Any) {
        audio(filePath: urlHI)
    }
    
    @IBAction func share3(_ sender: Any) {
        sharefunc(filePath: urlHI)
    }
    
    @IBAction func Gidajan(_ sender: Any) {
        audio(filePath: urlGi)
    }
    
    @IBAction func share4(_ sender: UIButton) {
        sharefunc(filePath: urlGi)
    }
    
    @IBAction func dodi(_ sender: UIButton) {
        audio(filePath: urldo)
    }
    
    @IBAction func share5(_ sender: UIButton) {
        sharefunc(filePath: urldo)
    }
    @IBAction func Lalala(_ sender: UIButton) {
        audio(filePath: urlLa)
    }
    @IBAction func share6(_ sender: UIButton) {
        sharefunc(filePath: urlLa)
    }
    
    @IBAction func Nidodi(_ sender: UIButton) {
        audio(filePath: urlNi)
    }
    
    @IBAction func share7(_ sender: UIButton) {
        sharefunc(filePath: urlNi)
    }
    
    @IBAction func Raysi(_ sender: UIButton) {
        audio(filePath: urlRay)
    }
    
    @IBAction func share8(_ sender: UIButton) {
        sharefunc(filePath: urlRay)
    }
    @IBAction func gaycu(_ sender: UIButton) {
        audio(filePath: urlGa)
    }
    
    @IBAction func share9(_ sender: UIButton) {
        sharefunc(filePath: urlGa)
    }
    @IBAction func dahogi(_ sender: UIButton) {
        audio(filePath: urlDa)
    }
    
    @IBAction func share10(_ sender: UIButton) {
        sharefunc(filePath: urlDa)
    }
    var audio: AVAudioPlayer?
    let urlH = Bundle.main.url(forResource: "滑起來", withExtension: "mp3")!
    let urlL = Bundle.main.url(forResource: "拉進垃圾車", withExtension: "mp3")!
    let urlHI = Bundle.main.url(forResource: "還敢下來啊冰鳥", withExtension: "mp3")!
    let urlGi = Bundle.main.url(forResource: "丐大劍", withExtension: "mp3")!
    let urldo = Bundle.main.url(forResource: "到底什麼閃現", withExtension: "mp3")!
    let urlLa = Bundle.main.url(forResource: "啦啦啦", withExtension: "mp3")!
    let urlNi = Bundle.main.url(forResource: "你在幹嘛啊", withExtension: "mp3")!
    let urlRay = Bundle.main.url(forResource: "瑞斯一打三", withExtension: "mp3")!
    let urlDa = Bundle.main.url(forResource: "大合輯", withExtension: "mp3")!
    let urlGa = Bundle.main.url(forResource: "給庫", withExtension: "mp3")!
    
    func audio(filePath:Any){
        try? AVAudioSession.sharedInstance().setCategory(.playback)
        audio = try? AVAudioPlayer(contentsOf: filePath as! URL)
        audio!.play()
    }
    func sharefunc (filePath:Any){
        let activityViewController = UIActivityViewController(activityItems: [filePath], applicationActivities: nil)
        self.present(activityViewController, animated: true, completion: nil)
    }
   
}
