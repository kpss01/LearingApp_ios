//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by karanpreet singh sarao on 08/06/21.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    var index: Int
    
    var lesson: Lesson {
        
        if model.currentModule != nil &&
            index < model.currentModule!.content.lessons.count {
            return model.currentModule!.content.lessons[index]
        }
        else {
            return Lesson()
        }
    }
    
    var body: some View {
        
    
        
        let title = lesson.title
        
        // Lesson card
        VStack(alignment: .leading) {
            HStack (spacing: 20) {
                
                Text(String(index + 1))
                    .bold()
                
                VStack (alignment: .leading) {
                    Text(title)
                        .bold()
                    Text(lesson.duration)
                }
                
            }
            
        }.frame(width: UIScreen.screenWidth-50,alignment: .leading)
        .padding()
        .background(RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white).shadow(radius: 3))
        .padding(.bottom,5)
        
    }
}
