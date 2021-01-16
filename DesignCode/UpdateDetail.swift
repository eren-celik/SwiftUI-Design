//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by Eren  Çelik on 16.01.2021.
//

import SwiftUI

struct UpdateDetail: View {
    var update : Update = updateData[2]
    var body: some View {
        List {
            VStack(spacing: 20.0) {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                Text(update.text)
                    .frame(maxWidth: .infinity,alignment: .leading)
            }
        }
        .navigationBarTitle(update.title)
        .listStyle(PlainListStyle())
        
        
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
