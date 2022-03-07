//
//  PageView.swift
//  Landmarks
//
//  Created by calmkeen on 2022/03/05.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct PageView<Page: View> :View {
    var pages : [Page]
    @State private var currentPage = 0
    

    var body: some View {
        ZStack(alignment: .bottomTrailing){
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map{ FeactureCard(landmark: $0)}).aspectRatio(3 / 2 , contentMode: .fit)
    }
}
