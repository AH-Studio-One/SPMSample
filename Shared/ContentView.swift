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
        let theme1 = DemoTheme()
        let theme2 = DemoTheme(primaryColor: .blue,
                               secondaryColor: .pink,
                               primaryFont: .largeTitle,
                               secondaryFont: .caption2)

        let viewModel1 = SlideViewModel(title: "hello", subTitle: "SMP", theme: theme1)
        let viewModel2 = SlideViewModel(title: "hello", subTitle: "SMP")
        let viewModel3 = SlideViewModel(title: "hello", subTitle: "SMP", theme: theme2)
        
        OnboardingView(slideViewModels: [viewModel1, viewModel2, viewModel3])
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
        
    var primaryFont: Font
    
    var secondaryFont: Font
    
    init(primaryColor: Color = .green,
         secondaryColor: Color = .red,
         primaryFont: Font = .title,
         secondaryFont: Font = .body) {
        
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.primaryFont = primaryFont
        self.secondaryFont = secondaryFont
    }
}
