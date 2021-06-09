//
//  Models.swift
//  LearningApp
//
//  Created by karanpreet singh sarao on 07/06/21.
//

import Foundation

class Module : Identifiable , Decodable{
    
    var id:Int
    var category:String
    var content:Content
    var test:Test
    
}

class Content : Identifiable , Decodable{
    
    var id:Int
    var image:String
    var time:String
    var description:String
    var lessons:[Lesson]
    
}

class Lesson : Identifiable , Decodable{
    
    var id:Int
    var title:String
    var video:String
    var duration:String
    var explanation:String
    
    init() {
        id = 0;
        title = ""
        video = ""
        duration = ""
        explanation = ""
    }
    
}

class Test: Identifiable , Decodable{
    
    var id:Int
    var image:String
    var time:String
    var description:String
    var questions:[Question]
    
}

class Question: Identifiable, Decodable{
    
    var id:Int
    var content:String
    var correctIndex:Int
    var answers:[String]
    
}
