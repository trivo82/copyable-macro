//Copyright © 2024 Hootsuite Media Inc. All rights reserved.

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

@main
struct CopyablePlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
        CopyableMacro.self
    ]
}
