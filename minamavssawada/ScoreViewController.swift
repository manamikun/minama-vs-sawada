//
//  ScoreViewController.swift
//  minamavssawada
//
//  Created by MASAHITO MIZOGAKI on 2018/07/25.
//  Copyright © 2018年 MASAHITO MIZOGAKI. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var scoreTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func tapBackButton(_ sender: Any) {
        
        // 前画面に戻る処理を追加します！
    }
    
    // 6. 必要なtableViewメソッド
    // セルの行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    // 6. 必要なtableViewメソッド
    // セルのテキストを追加
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return UITableViewCell()
        
    }
    
    // 7. セルがタップされた時
    func tableView(table: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        print(indexPath.row)
    }
}



