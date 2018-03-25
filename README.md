# react-native-yandex-map-kit

## Getting started

`$ npm install react-native-yandex-map-kit --save`

### Mostly automatic installation

* `$ react-native link react-native-yandex-map-kit`
* Android continue from step 4 manual installation

### Manual installation

#### iOS

1.  In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2.  Go to `node_modules` ➜ `react-native-yandex-map-kit` and add `RNYandexMapKit.xcodeproj`
3.  In XCode, in the project navigator, select your project. Add `libRNYandexMapKit.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4.  Run your project (`Cmd+R`)<

#### Android

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
