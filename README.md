# ACTION_PROCESS_TEXT Flutter

A flutter plugin for ACTION_PROCESS_TEXT implementation in android.

## What is it used for?

It can be used when you need your users to have a shortcut on selecting text, and directly use it in your app.
It can be applied in notes, dictionary, web_search, and many more kinds of apps.
| Basic Example                                                     | Dictionary                         | 
|:---------------------------------------------------------------:|:------------------------------------:|
|  ![](https://i.postimg.cc/Jn53nQFV/action-process-texttest.gif) | ![](https://i.postimg.cc/hvqSCL4j/slanganorytest.gif)|  

## Include in your project

```yaml
dependencies:
  action_process_text: <latest version>
```

Run pub get and get packages.

Add this to 'AndroidManifest.xml' in the 'android\app\src\main\' folder.
```xml
  <activity android:name="com.example.action_process_text.ActionProcessTextPlugin"
            android:label="Action_Text" android:theme="@style/LaunchTheme">
            <intent-filter>
                <action android:name="android.intent.action.PROCESS_TEXT" />
                <data android:mimeType="text/plain"/>
                <category android:name="android.intent.category.DEFAULT" />
            </intent-filter>
   </activity>
```
Change the 'android:label' to the action text that you want.

Then import the package to use it.

```dart
import 'package:action_process_text/action_process_text.dart';
```
## Constraints

###   1. It works only for android.
###   2. It can only be used inside a Stateful widget.
###   3. Use setState() after updating the value from the action.

