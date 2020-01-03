//
//  ContentView.swift
//  SwiftUI Modifiers
//
//  Created by Christopher Ching on 2019-12-06.
//  Copyright © 2019 Christopher Ching. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHearted = false
    @State private var numHearts = 999
    
    var body: some View {
        ZStack{
            
        VStack {
        
            Image("pinkbuilding")
                .resizable()
                .cornerRadius(30)
                .padding()
            .shadow(radius: 10)
            
            Text(String(numHearts))
                .font(.body)
            
            if self.isHearted {
            Text("This pink building is totally amazing!")
            .fontWeight(.heavy)
            .foregroundColor(.pink)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .shadow(color: .black, radius: 0.1, x: 2, y: 2)
            }
            else
            {
                Text("This pink building is totally amazing!")
                .fontWeight(.heavy)
                .foregroundColor(.pink)
                .font(.caption)
                .multilineTextAlignment(.center)
                .shadow(color: .black, radius: 0.1, x: 2, y: 2)
            }
           
        
            
        }
            HStack {
                Button(action: {
                    
                    self.isHearted.toggle()
                    
                    if self.isHearted {
                        self.numHearts += 1
                    }
                    else {
                        self.numHearts -= 1
                    }
                })
                {
                    if isHearted{
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                                .foregroundColor(.pink)
            
                       
                    }
                    else
                    {
                        Image(systemName: "heart")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .foregroundColor(.white)
                    }
                    
               
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
