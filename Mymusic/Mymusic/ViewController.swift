//
//  ViewController.swift
//  Mymusic
//
//  Created by 安保友香梨 on 2020/06/20.
//  Copyright © 2020 anbo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //シンバル用の音源ファイルを指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")

    //シンバル用のプレイヤーインスタンスを作成
    var cymbalPlayer = AVAudioPlayer()
    
    @IBAction func cymbal(_ sender: Any) {
        do{
        //シンバル用のプレイヤーに、音源ファイル名を指定
        cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
        //シンバルの音源再生
        cymbalPlayer.play()
        }catch{
            print("シンバルで、エラーが発生しました！")
        }
        
    }
    
    //ギター用の音源ファイルを指定
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")

    //ギター用のプレイヤーインスタンスを作成
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
       do{
        //ギター用のプレイヤーに、音源ファイル名を指定
        guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
        //ギターの音源再生
        guitarPlayer.play()
        }catch{
            print("ギターで、エラーが発生しました！")
        }
    }
    
    //バックミュージックの音源ファイルを指定
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    
    //バックミュージック用のプレイヤーインスタンスを作成
    var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        do{
        //ックミュージック用のプレイヤーに、音源ファイル名を指定
        backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
        //リピート再生
        backmusicPlayer.numberOfLoops = -1
        backmusicPlayer.play()
        }catch{
            print("エラーが発生しました！")
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        backmusicPlayer.stop()
    }
}

