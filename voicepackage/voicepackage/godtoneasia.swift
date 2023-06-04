//
//  godtoneasia.swift
//  voicepackage
//
//  Created by macbook pro on 2021/12/5.
//
import MediaPlayer
import Social
import UIKit

class godtoneasia: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    var audio: AVAudioPlayer?
    let filePath = ["一定要惹別人火是不是阿", "你不要再滾了過來x2", "好啦x3"]
    //var url = [URL]()
    let urlY = Bundle.main.url(forResource: "一定要惹別人火是不是阿", withExtension: "mp3")!
    let urlN = Bundle.main.url(forResource: "你不要再滾了過來x2", withExtension: "mp3")!
    let urlH = Bundle.main.url(forResource: "好啦x3", withExtension: "mp3")!
    let urlW = Bundle.main.url(forResource: "我現在在你的家門外", withExtension: "mp3")!
    let urlTin = Bundle.main.url(forResource: "聽不懂中文是不是阿你", withExtension: "mp3")!
    let urlCow = Bundle.main.url(forResource: "靠邀", withExtension: "mp3")!
    let urlLi = Bundle.main.url(forResource: "來拉切戳拉", withExtension: "mp3")!
    let urlGan = Bundle.main.url(forResource: "幹你到底到底balabala", withExtension: "mp3")!
    var godtoneasiaArr = [Niyidin,Nibuyao,Haola,Wosandi,tinbudon,Coeyao,LineLa]
    
    @IBAction func Niyidin(_ sender: UIButton) {
        audio(filePath: urlY)
    }
    
    @IBAction func share1(_ sender: UIButton) {
        sharefunc(filePath: urlY)
    }
    
    @IBAction func Nibuyao(_ sender: UIButton) {
        audio(filePath: urlN)
    }
    
    @IBAction func share2(_ sender: UIButton) {
        sharefunc(filePath: urlN)
    }
    
    @IBAction func Haola(_ sender: UIButton) {
        audio(filePath: urlH)
    }
    
    @IBAction func share3(_ sender: UIButton) {
        sharefunc(filePath: urlH)
    }
    
    @IBAction func Wosandi(_ sender: UIButton) {
        audio(filePath: urlW)
    }
    
    @IBAction func share4(_ sender: UIButton) {
        sharefunc(filePath: urlW)
    }
    @IBAction func tinbudon(_ sender: UIButton) {
        audio(filePath: urlTin)
    }
    
    @IBAction func share5(_ sender: UIButton) {
        sharefunc(filePath: urlTin)
    }
    
    @IBAction func Coeyao(_ sender: UIButton) {
        audio(filePath: urlCow)
    }
    
    @IBAction func share6(_ sender: UIButton) {
        sharefunc(filePath: urlCow)
    }
    
    @IBAction func LineLa(_ sender: UIButton) {
        audio(filePath: urlLi)
    }
    
    @IBAction func share7(_ sender: UIButton) {
        sharefunc(filePath: urlLi)
    }
    
    @IBAction func Gannidowdi(_ sender: UIButton) {
        audio(filePath: urlGan)
    }
    
    @IBAction func share8(_ sender: UIButton) {
        sharefunc(filePath: urlGan)
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
    
}
