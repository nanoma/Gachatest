//
//  ResultViewController.swift
//  Gachatest
//
//  Created by 花田奈々 on 2016/02/13.
//  Copyright © 2016年 com.litech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var haikeiImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let number = Int(rand() % 9)
        
        monsterArray = [UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!
        ]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9{
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        } else if number > 6{
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        } else {
            haikeiImageView.image = UIImage(named: "red_blue.png")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func modoru(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
