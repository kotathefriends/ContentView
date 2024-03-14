//
//  CarouselViewChild.swift
//  CarouselView
//
//  Created by KOTA TAKAHASHI on 2024/03/14.
//

import SwiftUI

struct CarouselViewChild: View, Identifiable {
    
    var id: Int
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}
