# myvideo_player

##Create an app that plays videos

- Using the Stack Widget
- Using the Image Picker library
- Using the Video Player library
- Create video controls to play, stop, rewind 3 seconds, and advance 3 seconds

```
#setting ----
ios>Runner>info.plist
	<key>NSPhotoLibraryUsageDescription</key>
	<string>사진첩 권한을 허용해주세요</string>
	<key>NSCameraUsageDescription</key>
	<string>카메라 권한을 허용해주세요</string>
	<key>NSMicrophoneUsageDescription</key>
	<string>마이크 권한을 허용해주세요</string>

#pubsec.yaml ----
dependencies:

  video_player: ^2.8.2
  image_picker: ^1.0.6

# LinearGradient ----
decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2A3A7C),
              Color(0xFF000118),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
```

<img align="center" src="./capture.gif" width="300px">
