import ProjectDescription

// ex) tuist scaffold dudu --name helloTuist
let nameAttribute: Template.Attribute = .required("name")

let template = Template(
  description: "Custom template",
  attributes: [
    nameAttribute
  ],
  items: [
//    .string(
//      path: "README.md",
//      contents: "# \(nameAttribute)"
//    )
    .file(
      path: "README.md",
      templatePath: "README.stencil"
    )
  ]
)
