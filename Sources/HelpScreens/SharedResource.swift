//
// Copyright 2022 Bundesrepublik Deutschland
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
// the License. You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
// an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//

import Foundation

struct HTMLResourceIdentifier: RawRepresentable, Hashable, Equatable {
    struct HTMLResource: Hashable {
        /// Name of the HTMl Resource excluding extension
        let name: String
        
        /// Optional sub-directory path where the resource could be located
        let subPath: String?
    }
    
    typealias RawValue = HTMLResource
    let rawValue: RawValue
    
    init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
}

extension HTMLResourceIdentifier {
    var url: URL? {
        guard let language = Locale.current.languageCode else { return nil }
        return url(for: language)
    }
    
    func url(for locale: String) -> URL? {
        let localizedSubPath = rawValue.subPath.map { "\(locale)/\($0)"} ?? locale
        return Bundle.module.url(forResource: rawValue.name, withExtension: "html", subdirectory: "html/\(localizedSubPath)")
    }
    
    /// Convenience initializer that omits th rawValue identifier
    init(name: String, subPath: String? = nil) {
        self.init(rawValue: .init(name: name, subPath: subPath))
    }
}

