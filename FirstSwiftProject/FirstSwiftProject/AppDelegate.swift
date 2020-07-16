//
//  AppDelegate.swift
//  FirstSwiftProject
//
//  Created by zjl on 2020/7/10.
//  Copyright © 2020 Yihb. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        for x in 0...10{
            print("\(x) ", terminator: "")
        }
        print()
        
        for index in 1..<5 {
            print("\(index) * 5 = \(index * 5)")
        }
        
        let someInts:[Int] = [10, 20, 30]
        for index in someInts {
           print( "index1 的值为 \(index)")
        }
        
        var index2 = 10
        while index2 < 15
        {
           print( "index2 的值为 \(index2)")
           index2 = index2 + 1
        }
        
        var index3 = 15
        repeat{
            print( "index3 的值为 \(index3)")
            index3 = index3 + 1
        }while index3 < 20
        
        let varA = 42
        print(varA)

        let varB:Float = 3.14159
//        varB = 3.14159
        print(varB)
        
        let name = "菜鸟教程"
        let site = "http://www.runoob.com"

        print("\(name)的官网地址为：\(site)")
        
        let var1:Int = 10;

        /* 检测条件 */
        if var1 < 20 {
            /* 如果条件语句为 true 执行以下程序 */
            print("var1 小于 20");
        }
        
        let index1 = 100

        switch index1 {
           case 100  :
              print( "index1 的值为 100")
           case 10,15  :
              print( "index1 的值为 10 或 15")
           case 5  :
              print( "index1 的值为 5")
           default :
              print( "默认 case")
        }
        
        let var2   = 20
        let const3 = 100
        let var3:Float = 20.0

        let stringA = "\(var2) 乘于 \(const3) 等于 \(var3 * 100)"
        print( stringA )
        
        print( stringA.count );
        
        for ch in "Runoob" {
            print(ch)
        }
        
        var someInts1 = [Int](repeating: 0, count: 3)
        
        var someInts2:[Int] = [10, 20, 30]
        
        var someInts3 = [Int](repeating: 10, count: 3)
        for (i,item) in someInts3.enumerated() {
            print( "index = \(i)  item = \(item)" )
        }
        
        var someInts4 = [Int]()
        someInts4.append(3)
        print( someInts4 )
        
        let someDict1 = [String: String]()
        
        let someDict2:[String:String] = ["haha":"One", "heihei":"Two", "hehe":"Three"]
        let two = someDict2["heihei"]
        print( "key = heihei 的值为 \(someDict2["heihei"])" )
        let someDict2Keys = someDict2.keys
        let somedict2Values = someDict2.values;
        print( "someDict2Keys = \(someDict2Keys)  someDict2Values = \(somedict2Values)" )
        
        print(runoob(site: "xxxx",name: "zzzz"))
        
        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        print("最小值为 \(bounds.min) ，最大值为 \(bounds.max)")
        
        return true
    }
    
    func runoob(site:String,name:String) -> String {
        return site + name
    }
    
    func minMax(array: [Int]) -> (min: Int, max: Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    



}

