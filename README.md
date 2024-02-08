# iOS-Architecture-Design

```
.
├── iOS Architecture Design
│   ├── Application Layer(应用层)
│   │   └── Modules（业务模块、组件化）
│   ├── Business Logic Layer（业务逻辑层）
│   │   ├── Environment
│   │   ├── Services
│   │   │   ├── Chat
│   │   │   └── User
│   │   └── Storage
│   ├── Data Access Layer（数据访问层）
│   │   ├── Database（数据库）
│   │   ├── Network（网络）
│   │   └── Repositories（仓储）
│   ├── Infrastructure（基础设施）
│   │   ├── Extensions（扩展）
│   │   │   ├── Foundation（Foundation 相关扩展）
│   │   │   └── UIKIt（UIKit 相关扩展）
│   │   ├── ModuleChannel（模块化，用于模块间通讯）
│   │   └── UIComponents（UI 组件）
│   │       ├── DatePicker
│   │       ├── Dialog
│   │       ├── ImageBrowser
│   │       ├── Toast
│   │       └── VideoPlayer
│   ├── Presenter Layer （展示层）
│   │   ├── Common
│   │   │   ├── VIPER
│   │   │   └── Views
│   │   ├── Discard
│   │   ├── Home
│   │   ├── Launch
│   │   │   └── Views
│   │   │       └── Base.lproj
│   │   └── Profile
│   └── Supporting Files
│       └── Assets.xcassets
│           ├── AccentColor.colorset
│           └── AppIcon.appiconset
└── iOS Architecture Design.xcodeproj
    ├── project.xcworkspace
    │   ├── xcshareddata
    │   │   └── swiftpm
    │   │       └── configuration
    │   └── xcuserdata
    │       └── lidan.xcuserdatad
    └── xcuserdata
        └── lidan.xcuserdatad
            └── xcschemes

49 directories
```