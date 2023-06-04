//
//  wanye.swift
//  voicepackage
//
//  Created by macbook pro on 2021/12/4.
//

import UIKit
import MediaPlayer
import Social
var afilePath = ["滑起來","拉進垃圾車","還敢下來啊冰鳥","丐大劍","到底什麼閃現","啦啦啦","你在幹嘛啊","瑞斯一打三","大合輯","給庫"]
class wanye: UIViewController {
    var audio: AVAudioPlayer?
    func audioUrl(fp:String) -> URL{
        return Bundle.main.url(forResource: fp, withExtension: "mp3")!
    }
    func audio(filePath:Any){
        try? AVAudioSession.sharedInstance().setCategory(.playback)
        audio = try? AVAudioPlayer(contentsOf: filePath as! URL)
        audio!.play()
    }
    func sharefunc (filePath:Any){
        let activityViewController = UIActivityViewController(activityItems: [filePath], applicationActivities: nil)
        self.present(activityViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func no_problem(_ sender: UIButton) {
        audio(filePath: audioUrl(fp: afilePath[1]))
    }

    @IBAction func share1(_ sender: Any) {
        sharefunc(filePath: audioUrl(fp: afilePath[1]))
    }
    
    @IBAction func HauChili(_ sender: Any) {
        audio(filePath: audioUrl(fp: afilePath[0]))
    }
    
    @IBAction func share2(_ sender: Any) {
        sharefunc(filePath: audioUrl(fp: afilePath[0]))
    }
    
    @IBAction func Higan(_ sender: Any) {
        audio(filePath: audioUrl(fp: afilePath[2]))
    }
    
    @IBAction func share3(_ sender: Any) {
        sharefunc(filePath: audioUrl(fp: afilePath[2]))
    }
    
    @IBAction func Gidajan(_ sender: Any) {
        audio(filePath: audioUrl(fp: afilePath[3]))
    }
    
    @IBAction func share4(_ sender: UIButton) {
        sharefunc(filePath: audioUrl(fp: afilePath[3]))
    }
    
    @IBAction func dodi(_ sender: UIButton) {
        audio(filePath: audioUrl(fp: afilePath[4]))
    }
    
    @IBAction func share5(_ sender: UIButton) {
        sharefunc(filePath: audioUrl(fp: afilePath[4]))
    }
    @IBAction func Lalala(_ sender: UIButton) {
        audio(filePath: audioUrl(fp: afilePath[5]))
    }
    @IBAction func share6(_ sender: UIButton) {
        sharefunc(filePath: audioUrl(fp: afilePath[5]))
    }
    
    @IBAction func Nidodi(_ sender: UIButton) {
        audio(filePath: audioUrl(fp: afilePath[6]))
    }
    
    @IBAction func share7(_ sender: UIButton) {
        sharefunc(filePath: audioUrl(fp: afilePath[6]))
    }
    
    @IBAction func Raysi(_ sender: UIButton) {
        audio(filePath: audioUrl(fp: afilePath[7]))
    }
    
    @IBAction func share8(_ sender: UIButton) {
        sharefunc(filePath: audioUrl(fp: afilePath[7]))
    }
    @IBAction func gaycu(_ sender: UIButton) {
        audio(filePath: audioUrl(fp: afilePath[8]))
    }
    
    @IBAction func share9(_ sender: UIButton) {
        sharefunc(filePath: audioUrl(fp: afilePath[8]))
    }
    @IBAction func dahogi(_ sender: UIButton) {
        audio(filePath: audioUrl(fp: afilePath[9]))
    }
    
    @IBAction func share10(_ sender: UIButton) {
        sharefunc(filePath: audioUrl(fp: afilePath[9]))
    }
    
   
}
