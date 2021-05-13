# FPS

FPS是图像领域中的定义，是指画面每秒传输帧数，通俗来讲就是指动画或视频的画面数。FPS是测量用于保存、显示动态视频的信息数量。每秒钟帧数越多，所显示的动作就会越流畅。通常，要避免动作不流畅的最低是30。

该工具用来iOS平台测试帧率

# 集成

1、可以使用cocoapods集成

```
pod 'ZXKitFPS'
```

2、使用文件

如果您不想使用cocoapods集成，可以将根目录下的`pod`文件夹中的内容拖到项目即可

## 使用

```
//创建对象
let fps = ZXKitFPS()

//开始测试
fps.start { (fps) in
  print(fps)
}

//结束测试
fps.stop()
```

## ZXKit支持

**该插件已经默认集成在[ZXKitSwift](https://github.com/ZXKitCode/ZXKitSwift)中，如果您已经集成了`ZXKitSwift`，无需重复集成**

该插件支持`ZXKit`，如果需要在ZXKit工具集里显示，可以使用以下命令集成

```
pod 'ZXKitFPS/zxkit'
```

之后可在`AppDelegate`的启动函数中注册到`ZXKit`即可

```
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	
	let fps = ZXKitFPS()
	fps.registZXKitPlugin()
	
	return true
}
```

## License

该项目基于MIT协议，您可以自由修改使用