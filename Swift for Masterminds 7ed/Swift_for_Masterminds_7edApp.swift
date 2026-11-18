//
//  Swift_for_Masterminds_7edApp.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/16/26.
//

import MyLibrary
import SwiftUI

@main
struct Swift_for_Masterminds_7edApp: App {

    @State private var appData = ApplicationData.shared
    @FocusedValue(\.address) var addressValue: String?

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        //        .commands {
        //
        //            CommandMenu("Options") {
        //                Button(
        //                    "Option 1",
        //                    systemImage: "1.circle",
        //                    action: { print("This is the option 1") }
        //                )
        //                .labelStyle(.titleAndIcon)
        //                // .disabled(appData.inputMessage.isEmpty)
        //                .disabled(addressValue == nil)
        //
        //                Picker("Option 2", selection: $appData.selectedOption) {
        //                    Text("Option A").tag(1)
        //                    Text("Option B").tag(2)
        //                }
        //
        //                Menu(
        //                    "Option 3",
        //                    systemImage: "2.circle",
        //                    content: {
        //                        Button(
        //                            "Option A",
        //                            systemImage: "a.circle",
        //                            action: {
        //                                print("This is the option A")
        //                            }
        //                        )
        //                        .labelStyle(.titleAndIcon)
        //
        //                        Button(
        //                            "Option B",
        //                            systemImage: "b.circle",
        //                            action: { print("This is the option B") }
        //                        )
        //                        .labelStyle(.titleAndIcon)
        //                    }
        //                )
        //
        //                #if os(macOS)
        //                    .modifierKeyAlternate(.option) {
        //                        Button(
        //                            "Option 3",
        //                            systemImage: "3.circle",
        //                            action: { print("Alternate Option 3") }
        //                        )
        //                        .labelStyle(.titleAndIcon)
        //                    }
        //
        //                #endif
        //
        //            }
        //
        //            // A CommandGroup(replacing: .newItem, addition: {})
        //            // CommandGroup does not create a new menu. It adds items to an
        //            // existing system menu — here, the File menu, below "New Window".
        //            CommandGroup(after: .newItem) {
        //                Button(
        //                    "Option 4",
        //                    systemImage: "3.circle",
        //                    action: { print("This is the option 4") }
        //                )
        //                .labelStyle(.titleAndIcon)
        //            }
        //        }

        #if os(macOS)
            Window("My Window", id: "mywindow") {
                AuxiliaryView()
                    .background(.yellow)
                    .gesture(WindowDragGesture())
            }
            .windowStyle(.plain)

            //            .windowResizability(.contentSize)
            //            .defaultPosition(.bottomLeading)
            //            .restorationBehavior(.disabled)

            //            .defaultWindowPlacement { content, context in
            //
            //                let bounds = context.defaultDisplay.bounds
            //                let position = CGPoint(x: 10, y: 10)
            //
            //                let size = CGSize(
            //                    width: bounds.width / 2,
            //                    height: bounds.height / 2
            //                )
            //
            //                return WindowPlacement(position, size: size)
            //            }
            //            .restorationBehavior(.disabled)

            // Listing 6-46: Defining a Settings scene
            Settings {
                VStack {
                    Text("Settings")
                }
                .frame(width: 200, height: 150)
            }

            // Listing 6-47: Inserting a control in the system's menu bar
            MenuBarExtra("My Control", systemImage: "phone") {
                Button("Option 1") {
                    print("Option 1")
                }
                Button("Option 2") {
                    print("Option 2")
                }
                Divider()
                Button("Quit") {
                    NSApplication.shared.terminate(nil)
                }
            }

            // Listing 6-48: Defining the control to open a view
            MenuBarExtra("My Menu", systemImage: "phone") {
                VStack {
                    HStack {
                        Spacer()
                        Button(
                            action: {
                                NSApplication.shared.terminate(nil)
                            },
                            label: {
                                Image(systemName: "xmark.circle")
                            }
                        )
                        .buttonBorderShape(.circle)
                    }
                    .padding()
                    
                    Button("Option 1") {
                        print("Option 1")
                    }
                    .buttonStyle(.borderedProminent)
                    Button("Option 2") {
                        print("Option 2")
                    }
                    .buttonStyle(.borderedProminent)
                    Spacer()
                }
                .frame(width: 200, height: 180)
            }
            .menuBarExtraStyle(.window)

        #endif
    }
}
