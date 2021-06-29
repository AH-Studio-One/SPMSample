//
//  ContentView.swift
//  Shared
//
//  Created by A H on 2021-06-28.
//

import SwiftUI
import CustomTheme

struct ContentView: View {

    var body: some View {
        let viewModel = SlideViewModel(title: "hello", subTitle: "SMP", theme: DemoTheme())
        SlideContentView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SlideContentView(viewModel: SlideViewModel(title: "hello", subTitle: "SMP", theme: DemoTheme()))
    }
}

struct DemoTheme: Theme {
    var primaryColor: Color
    
    var secondaryColor: Color
    
    var bgColor: Color
    
    var primaryFont: Font
    
    var secondaryFont: Font
    
    init(primaryColor: Color = .blue,
         secondaryColor: Color = .yellow,
         bgColor: Color = .clear,
         primaryFont: Font = .title,
         secondaryFont: Font = .body) {
        
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.bgColor = bgColor
        self.primaryFont = primaryFont
        self.secondaryFont = secondaryFont
    }
}
