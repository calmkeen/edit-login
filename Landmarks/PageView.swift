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
    

    var body: some View {
        PageViewController(pages: pages)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map{ FeactureCard(landmark: $0)}).aspectRatio(3 / 2 , contentMode: .fit)
    }
    

}
