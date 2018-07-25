//
//  ViewController.swift
//  minamavssawada
//
//  Created by MASAHITO MIZOGAKI on 2018/07/23.
//  Copyright © 2018年 MASAHITO MIZOGAKI. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

//効果音



class ViewController: UIViewController {
    
    var minamaHp = 20
    var sawadaHp = 60
    
    @IBOutlet weak var minamaImage: UIImageView!
    @IBOutlet weak var sawadaImage: UIImageView!
    @IBOutlet weak var minamaPoint: UILabel!
    @IBOutlet weak var sawadaPoint: UILabel!
    
    var minamapointX = 10
    var sawadapointX = 220

    
    func vibrate() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
    }
  
    
    @IBAction func minamaAttack(_ sender: Any) {
        
        self.vibrate()
        AudioServicesPlaySystemSound(1332);

        
        self.minamaImage.frame.origin.x = CGFloat(minamapointX)
        UIView.animate(withDuration: 0.5, delay: 0.0, options: .autoreverse, animations: {
            
            self.minamaImage.frame.origin.x = CGFloat(self.minamapointX + 20)
        }, completion: nil)
        

        sawadaHp = sawadaHp - 10
        sawadaPoint.text = "HP:\(sawadaHp)"
        if sawadaHp <= 0 {
            sawadaPoint.text = "lose"
            minamaPoint.text = "win"
            AudioServicesPlaySystemSound(1025);
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                // 0.5秒後に実行したい処理
            self.sawadaHp = 60
            self.minamaHp = 20
            self.sawadaPoint.text = "HP:\(self.sawadaHp)"
            self.minamaPoint.text = "HP:\(self.minamaHp)"
            }

        }
       
    }
    
    @IBAction func sawadaAttac(_ sender: Any) {
        
        self.vibrate()
        AudioServicesPlaySystemSound(1332);
        
        
        minamaHp = minamaHp - 3
        minamaPoint.text = "HP:\(minamaHp)"
        if minamaHp <= 0{
            minamaPoint.text = "lose"
            sawadaPoint.text = "win"
            AudioServicesPlaySystemSound(1025);

                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    // 0.5秒後に実行したい処理
                    self.sawadaHp = 60
                    self.minamaHp = 20
                    self.sawadaPoint.text = "HP:\(self.sawadaHp)"
                    self.minamaPoint.text = "HP:\(self.minamaHp)"
                }
        }
    
            self.sawadaImage.frame.origin.x = CGFloat(sawadapointX)
            UIView.animate(withDuration: 0.5, delay: 0.0, options: .autoreverse, animations: {
                
                self.sawadaImage.frame.origin.x = CGFloat(self.sawadapointX - 20)
            }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
