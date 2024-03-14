//
//  ContentView.swift
//  CarouselView
//
//  Created by KOTA TAKAHASHI on 2024/03/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            CarouselView(views: getChileViews())
            
        }
        .ignoresSafeArea()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(Color("Gray"))
    }
    
    func getChileViews() -> [CarouselViewChild] {
        var tempViews: [CarouselViewChild] = []
        
        for i in (1...4) {
            tempViews.append(CarouselViewChild(id: i, content: {
                ZStack {
                    Image("\(i)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .mask {
                            RoundedRectangle(cornerRadius: 18)
                                .frame(width: 324, height: 576)
                        }
                }
                .frame(width: 324, height: 576)
                .shadow(radius: 10)
            }))
        }
        return tempViews
    }
}

#Preview {
    ContentView()
}
