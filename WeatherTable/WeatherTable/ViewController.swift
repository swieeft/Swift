//
//  ViewController.swift
//  WeatherTable
//
//  Created by Park GilNam on 2017. 12. 22..
//  Copyright © 2017년 ParkGilNam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var datalist = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict1 = ["지역":"한국", "날씨":"비"]
        let dict2 = ["지역":"일본", "날씨":"맑음"]
        let dict3 = ["지역":"중국", "날씨":"눈"]
        let dict4 = ["지역":"대만", "날씨":"우박"]
        let dict5 = ["지역":"미국", "날씨":"흐림"]
        let dict6 = ["지역":"영국", "날씨":"비"]
        let dict7 = ["지역":"호주", "날씨":"맑음"]
        let dict8 = ["지역":"프랑스", "날씨":"눈"]
        let dict9 = ["지역":"독일", "날씨":"우박"]
        let dict10 = ["지역":"뉴질랜드", "날씨":"흐림"]
        let dict11 = ["지역":"이탈리아", "날씨":"비"]
        let dict12 = ["지역":"벨기에", "날씨":"맑음"]
        let dict13 = ["지역":"핀란드", "날씨":"눈"]
        let dict14 = ["지역":"캐나다", "날씨":"우박"]
        let dict15 = ["지역":"브라질", "날씨":"흐림"]
        let dict16 = ["지역":"아르헨티나", "날씨":"비"]
        let dict17 = ["지역":"멕시코", "날씨":"맑음"]
        let dict18 = ["지역":"러시아", "날씨":"눈"]
        let dict19 = ["지역":"이집트", "날씨":"우박"]
        let dict20 = ["지역":"이라크", "날씨":"흐림"]
       
        datalist = [dict1,dict2,dict3,dict4,dict5,dict6,dict7,dict8,dict9,dict10,dict11,dict12,dict13,dict14,dict15,dict16,dict17,dict18,dict19,dict20]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var dictTemp = datalist[indexPath.row]
        
        cell.textLabel!.text = dictTemp["지역"]
        
        let weatherStr = dictTemp["날씨"]
        cell.detailTextLabel!.text = weatherStr
        
        if weatherStr == "맑음" {
            cell.imageView!.image = UIImage(named:"sunny.png")
        } else if weatherStr == "비" {
            cell.imageView!.image = UIImage(named:"rainy.png")
        } else if weatherStr == "눈" {
            cell.imageView!.image = UIImage(named:"snow.png")
        } else if weatherStr == "우박" {
            cell.imageView!.image = UIImage(named:"blizzard.png")
        } else if weatherStr == "흐림" {
            cell.imageView!.image = UIImage(named:"cloudy.png")
        }
        
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

