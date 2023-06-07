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
    let filePath = ["一定要惹別人火是不是阿", "你不要再滾了過來x2", "好啦x3","我現在在你的家門外","聽不懂中文是不是阿你","靠邀","來拉切戳拉","幹你到底到底balabala"]
    func audio(fp: String){
        try? AVAudioSession.sharedInstance().setCategory(.playback)
        let filepath = Bundle.main.url(forResource: fp, withExtension: "mp3")!
        audio = try? AVAudioPlayer(contentsOf:filepath)
        audio!.play()
    }
    func sharefunc (fp: String){
        let filepath = Bundle.main.url(forResource: fp, withExtension: "mp3")!
        let activityViewController = UIActivityViewController(activityItems: [filepath], applicationActivities: nil)
        self.present(activityViewController, animated: true, completion: nil)
    }
    @IBAction func Niyidin(_ sender: UIButton) {
        audio(fp: filePath[0])
    }
    
    @IBAction func share1(_ sender: UIButton) {
        sharefunc(fp: filePath[0])
    }
    
    @IBAction func Nibuyao(_ sender: UIButton) {
        audio(fp: filePath[1])
    }
    
    @IBAction func share2(_ sender: UIButton) {
        sharefunc(fp: filePath[1])
    }
    
    @IBAction func Haola(_ sender: UIButton) {
        audio(fp: filePath[2])
    }
    
    @IBAction func share3(_ sender: UIButton) {
        sharefunc(fp: filePath[2])
    }
    
    @IBAction func Wosandi(_ sender: UIButton) {
        audio(fp: filePath[3])
    }
    
    @IBAction func share4(_ sender: UIButton) {
        sharefunc(fp: filePath[3])
    }
    @IBAction func tinbudon(_ sender: UIButton) {
        audio(fp: filePath[4])
    }
    
    @IBAction func share5(_ sender: UIButton) {
        sharefunc(fp: filePath[4])
    }
    
    @IBAction func Coeyao(_ sender: UIButton) {
        audio(fp: filePath[5])
    }
    
    @IBAction func share6(_ sender: UIButton) {
        sharefunc(fp: filePath[5])
    }
    
    @IBAction func LineLa(_ sender: UIButton) {
        audio(fp: filePath[6])
    }
    
    @IBAction func share7(_ sender: UIButton) {
        sharefunc(fp: filePath[6])
    }
    
    @IBAction func Gannidowdi(_ sender: UIButton) {
        audio(fp: filePath[7])
    }
    
    @IBAction func share8(_ sender: UIButton) {
        sharefunc(fp: filePath[7])
    }
}
