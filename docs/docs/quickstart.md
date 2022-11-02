Using honey is the easiest thing you can imagine. Let's taste sweetness of Honey! 

# 1. Add dependencies

First of all you need to add honey package to your pubspec.yaml  file. Run this in the terminal inside project folder.

flutter pub add honey

This will add a line like this to your package's pubspec.yaml  (and run an implicit flutter pub get):

```yaml
dependencies:
  honey: ^0.1.0
```
# 2. Extension for VSCode.

Install honey extension for Visual Studio Code, you can find it in marketplace: 
https://marketplace.visualstudio.com/items?itemName=honey.honey

# 3. Launch configuration

In order to Honey work properly you have to enable it for your run configuration in launch.json file.
```yaml
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Flutter",
            "type": "dart",
            "request": "launch",
            "program": "example/lib/main.dart",
            "args": [
                "--dart-define",
                "HONEY=true"
            ]
        },
    ]
} 
```

# 4. Initialize

Open your main.dart  file and add following line :
```dart
HoneyWidgetsBinding.ensureInitialized()
```

at the beginning of the main()  function.

# 5. Create first test file


Create file under `{app_root_folder}/honey`  it can be called test.ht . 
Structure can be similar to this:
```
sample_app
- android
- honey 
-- test.ht
- ios
- lib
- test 
pubspec.yaml
pubspec.lock
```

You may think why extension is `*.ht` ? It is because of HoneyTalk! Our own language that you'll use for testing!  
 

# 6. You're all set! 

Now you can run your test! Run the app on your device, honey should automatically connect to device you're using for testing. Then go to Testing  section in VSCode, find your Honey test and run it ! 
Enjoy the journey!  
