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
                               primaryFont: .title,
                               secondaryFont: .largeTitle)

        let viewModel1 = SlideViewModel(title: "Create sample iOS Project", subTitle: "import https://github.com/AH-Studio-One/CustomTheme in Xcode/SwiftPackages/Add as a Swift Package", theme: theme1)
        let viewModel2 = SlideViewModel(title: "Create your theme", subTitle: "implementing Theme protocol from CustomTheme swift package", theme: theme1)
        let viewModel3 = SlideViewModel(title: "Create collection of SlideViewModels with custom theme. If you skip, default theme will be applied, like here).", subTitle: "Create OnboardingView(slideViewModels: [yourSlideVM1, yourSlideVM1,..])")
        let viewModel4 = SlideViewModel(title: "Run the app! You have used an onboarding module using SPM", subTitle: "by defining Your custom theme", theme: theme2)

        OnboardingView(slideViewModels: [viewModel1, viewModel2, viewModel3, viewModel4])
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
