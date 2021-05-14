//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Evgenii Lysenko on 4/11/21.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: -PROPERTIES
    
    var leadingText: String
    var trailingText: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: -BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(leadingText).foregroundColor(Color.gray)
                Spacer()
                if (trailingText != nil) {
                    Text(trailingText!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

    // MARK: -PREVIEW

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(leadingText: "Developer", trailingText: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(leadingText: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
            
    }
}
