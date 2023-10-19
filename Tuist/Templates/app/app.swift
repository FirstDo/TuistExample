import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")

let path = "Projects/\(nameAttribute)/"

let template = Template(
  description: "Custom template",
  attributes: [
    nameAttribute
  ],
  items: [
    .file(
      path: "\(path)Project.swift",
      templatePath: "Project.stencil"
    ),
    .file(
      path: "Workspace.swift",
      templatePath: "Workspace.stencil"
    ),
    .file(
      path: "\(path)Sources/AppDelegate.swift",
      templatePath: "AppDelegate.stencil"
    ),
    .file(
      path: "\(path)Sources/SceneDelegate.swift",
      templatePath: "SceneDelegate.stencil"
    ),
    .file(
      path: "\(path)Sources/ViewController.swift",
      templatePath: "ViewController.stencil"
    ),
    .file(
      path: "\(path)Resources/LaunchScreen.storyboard",
      templatePath: "LaunchScreen.stencil"
    )
  ]
)
