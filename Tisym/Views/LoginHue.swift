//
//  LoginHue.swift
//  Tisym
//
//  Created by Hadrien Barbat on 2020-03-20.
//  Copyright © 2020 Hadrien Barbat. All rights reserved.
//

import SwiftUI

struct LoginHue: View {
    @ObservedObject var hueDelegate: HueDelegate
    
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Text("Please press the Hue Bridge button and Sync button below")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            Button(action: {
                self.hueDelegate.createUser()
            }) { Text("Sync") }
        }
    }
}

struct LoginHue_Previews: PreviewProvider {
    static var previews: some View {
        LoginHue(hueDelegate: HueDelegate())
    }
}
