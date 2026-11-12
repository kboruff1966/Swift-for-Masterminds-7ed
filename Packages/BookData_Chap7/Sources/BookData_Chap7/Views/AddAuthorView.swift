//
//  AddAuthorView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/7/26.
//

import SwiftData
import SwiftUI

public struct AddAuthorView: View {

    @Environment(ApplicationData.self) private var appData
    @Environment(\.modelContext) var dbContext

    @State private var nameInput: String = ""
    @State private var openAlert: Bool = false
    @State private var birthday: Date = Date()
    @State private var placeOfBirth: String = ""
    
    public init() {}

    public var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            TextField("Insert Name", text: $nameInput)
                .textFieldStyle(.roundedBorder)
            DatePicker(
                "Birthday",
                selection: $birthday,
                displayedComponents: .date
            )
            TextField("Insert Address", text: $placeOfBirth)
                .textFieldStyle(.roundedBorder)
            HStack {
                Spacer()
                Button("Save") {
                    storeAuthor()
                }
                .buttonStyle(.borderedProminent)
            }
            Spacer()
        }
        .padding()
        .alert(
            "Error",
            isPresented: $openAlert,
            actions: {
                Button("OK", role: .cancel, action: {})
            },
            message: {
                Text("The author already exists")
            }
        )
    }

    private func storeAuthor() {
        let name = nameInput.trimmingCharacters(in: .whitespaces)
        if !name.isEmpty {
            let predicate = #Predicate<Author> { $0.name == name }
            let descriptor = FetchDescriptor<Author>(predicate: predicate)
            if let count = try? dbContext.fetchCount(descriptor), count > 0 {
                openAlert = true
            } else {
                let newAuthor = Author(
                    name: name,
                    books: [],
                    info: archiveInfo()
                )
                dbContext.insert(newAuthor)
                try? dbContext.save()
                appData.selectedAuthor = newAuthor
                appData.viewPath.removeLast(2)
            }
        }
    }

    private func archiveInfo() -> Data? {
        var newBirthday = Date.distantFuture
        if birthday < Date(timeIntervalSinceNow: -86400) {
            newBirthday = birthday
        }

        let authorInfo = AuthorInfo(
            birthday: newBirthday,
            placeOfBirth: placeOfBirth
        )

//        let encoder = PropertyListEncoder()
        let encoder = JSONEncoder()
        
        let infoData = try? encoder.encode(authorInfo)
        return infoData
    }

}

#Preview {
    NavigationStack {
        AddAuthorView()
            .environment(ApplicationData.shared)
            .modelContainer(for: [Book.self, Author.self], inMemory: true)
    }
}
