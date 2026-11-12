////
////  SettingsView2.swift
////  Swift for Masterminds 7ed
////
////  Created by Keith Boruff on 10/20/26.
////
//
//import SwiftUI
//
//struct SettingsView2: View {
//
//    @Binding var viewPath: NavigationPath
//
//    var body: some View {
//        VStack {
//            Text("My Settings")
//            Spacer()
//        }
//        .padding()
//        .navigationBarBackButtonHidden(true).toolbar {
//            ToolbarItem(placement: .topBarLeading) {
//                Button("Back") { viewPath.removeLast() }
//            }
//        }
//    }
//}
//
//#Preview {
//    @Previewable @State var navigation = NavigationPath()
//    NavigationStack { SettingsView2(viewPath: $navigation) }
//}
