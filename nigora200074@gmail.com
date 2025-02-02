workflows:
  ios-workflow:
    name: iOS Build
    environment:
      xcode: latest
      cocoapods: default
    scripts:
      - name: Install dependencies
        script: echo "No dependencies to install"
    artifacts:
      - build/ios/**/*.ipa
    publishing:
      email:
        recipients:
          - your-email@example.com
