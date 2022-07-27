# FPS

![](https://img.shields.io/badge/CocoaPods-supported-brightgreen) ![](https://img.shields.io/badge/Swift-5.0-brightgreen) ![](https://img.shields.io/badge/License-MIT-brightgreen) ![](https://img.shields.io/badge/version-iOS11.0-brightgreen)

[中文文档](./README.md)

If you need to quickly integrate multiple debugging functions, such as log viewing, network speed testing, file viewing and so on, please use [DamonHu/ZXKitSwift](https://github.com/DamonHu/ZXKitSwift)

The plug-in has been integrated in [ZXKitSwift](https://github.com/DamonHu/ZXKitSwift) by default, if you have already integrated `ZXKitSwift`, there is no need to repeat the integration

FPS is a definition in the field of imagery, which refers to the number of frames transmitted per second, in general, refers to the number of frames of animation or video. FPS is a measure of the amount of information used to save and display dynamic videos. The more frames per second, the smoother the displayed action will be. In general, the minimum required to avoid jerky movements is 30.

This tool is used to test the frame rate on the iOS platform

# Integration

1、 You can use cocoapods integration

```
pod 'ZXKitFPS'
```

2、 Use files

If you don’t want to use cocoapods integration, you can drag the contents of the `pod` folder in the root directory to the project.

## Use

```
//Create an object
let fps = ZXKitFPS()

//If you need to display in the ZXKit toolset, you need to register, otherwise you don’t need to register
fps.registZXKitPlugin()

//start test
fps.start { (fps) in
  print(fps)
}

//end test
fps.stop()
```

## License

The project is based on the MIT License