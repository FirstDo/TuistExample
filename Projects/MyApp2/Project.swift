import ProjectDescription

let project = Project(
  name: "MyApp2",
  targets: [
    Target(
      name: "MyApp2",
      platform: .iOS,
      product: .app,
      bundleId: "com.dudu.MyApp2",
      deploymentTarget: .iOS(targetVersion: "15.0", devices: .iphone),
      infoPlist: .extendingDefault(with: [
        "CFBundleShortVersionString": "1.0",
        "CFBundleVersion": "1",
        "UILaunchStoryboardName": "LaunchScreen",

        "UIApplicationSceneManifest": [
          "UIApplicationSupportsMultipleScenes": false,
          "UISceneConfigurations": [
            "UIWindowSceneSessionRoleApplication": [
              [
                "UISceneConfigurationName": "Default Configuration",
                "UISceneDelegateClassName": "$(PRODUCT_MODULE_NAME).SceneDelegate"
              ],
            ]
          ]
        ],
      ]),
      sources: ["Sources/**"],
      resources: ["Resources/**"],
      dependencies: [
          
      ]
    )
  ]
)
