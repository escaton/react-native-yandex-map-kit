# react-native-yandex-map-kit

## Getting started

`$ npm install react-native-yandex-map-kit --save`

### Installation

#### iOS

1. Create or add the following content to `ios/Podfile`
  ```
    # You Podfile should look similar to this file. React Native currently does not support use_frameworks!
    source 'https://github.com/CocoaPods/Specs.git'

    platform :ios, '9.0'

    target '_YOUR_PROJECT_TARGET_' do
      rn_path = '../node_modules/react-native'
      rn_yandex_mapkit_path = '../node_modules/react-native-yandex-map-kit'

      pod 'yoga', path: "#{rn_path}/ReactCommon/yoga/yoga.podspec"
      pod 'React', path: rn_path, subspecs: [
        'DevSupport',
        'Core',
        'RCTActionSheet',
        'RCTAnimation',
        'RCTGeolocation',
        'RCTImage',
        'RCTLinkingIOS',
        'RCTNetwork',
        'RCTSettings',
        'RCTText',
        'RCTVibration',
        'RCTWebSocket',
        # 'BatchedBridge', # REMOVE COMMENT if you use RN <0.54
      ]

      pod 'react-native-yandex-map-kit', path: rn_yandex_mapkit_path
    end
  ```
2. Edit `ios/%project%/AppDelegate.m` add `#import <YandexMapKit/YMKMapKitFactory.h>` and `[YMKMapKit setApiKey:@"844d5468-fb6f-437c-92cf-2fb6c6a780d1"];`
3. Make sure your target is 9.0+

#### Android

0. Run `$ react-native link react-native-yandex-map-kit` and continue from step 4.
  Or:

1.  Open up `android/app/src/main/java/[...]/MainActivity.java`

* Add `import com.yandex.RNYandexMapKit.RNYandexMapKitPackage;` to the imports at the top of the file
* Add `new RNYandexMapKitPackage()` to the list returned by the `getPackages()` method

2.  Append the following lines to `android/settings.gradle`:
    ```
    include ':react-native-yandex-map-kit'
    project(':react-native-yandex-map-kit').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-yandex-map-kit/android')
    ```
3.  Insert the following lines inside the dependencies block in `android/app/build.gradle`:
    ```
      compile project(':react-native-yandex-map-kit')
    ```
4.  Insert the following lines inside `android` block in `android/app/build.gradle`:
    ```
    android {
      ...
      packagingOptions {
          pickFirst 'lib/armeabi-v7a/libgnustl_shared.so'
          pickFirst 'lib/arm64-v8a/libgnustl_shared.so'
          pickFirst 'lib/x86_64/libgnustl_shared.so'
          pickFirst 'lib/x86/libgnustl_shared.so'
      }
    }
    ```
5. Update sdk and dependencies: `compileSdkVersion 27` and `com.android.support:appcompat-v7:27.0.0`
Feel free to come up in issues to discuss it.

6. Add maven google repo in `android/build.gradle`
  ```
    allprojects {
      repositories {
        ...
        maven {
          url 'https://maven.google.com'
        }
      }
    }
  ```

## Usage

```javascript
import MapKit from 'react-native-yandex-map-kit';

render() {
  return (<MapKit/>)
}
```
