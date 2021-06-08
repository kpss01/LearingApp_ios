//
//  HomeViewRow.swift
//  LearningApp
//
//  Created by karanpreet singh sarao on 08/06/21.
//

import SwiftUI

struct HomeViewRow: View {
    
    var image:String
    var title:String
    var description:String
    var count:String
    var time:String
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                .shadow(radius: 5)
            
            HStack{
                
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.screenWidth * 0.3, height: UIScreen.screenWidth * 0.3)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack(alignment:.leading,spacing:10){
                    
                    Text(title)
                        .bold()
                    
                    Text(description)
                        .padding(.bottom,20)
                        .font(.caption)
                    
                    HStack{
                        
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(count)
                            .font(Font.system(size: 10))
                        
                        Spacer()
                        
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(time)
                            .font(Font.system(size: 10))

                    }
                    
                }.padding(.leading,20)
                
            }
            .padding(.horizontal,20)
            
        }.padding(.bottom,10)
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Lear Swift", description: "Understand the fundamentals of the Swift programming language.", count:"20 Lessonns",time: "2 hours")
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
