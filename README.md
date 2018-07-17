## CLLocation+YCLocation.h  地图坐标转换
```
//从火星坐标转化到百度坐标
- (CLLocation*)locationBaiduFromMars;

//从百度坐标到火星坐标
- (CLLocation*)locationMarsFromBaidu;
```
## CYJFactory.h 工厂类新建UILabel及UIButton等
## CYJHelper.h  define常量 固定高度及颜色
```
//定义RGB值
#define RGBA(r, g, b, a)
#define RGB(r, g, b) RGBA(r, g, b, 1.f)
//随机颜色
#define RandomColor

//44是一个特殊的常量，默认行高和NavigationBar的高度为44
#define Default 44
//距离左边边距为10
#define LeftDistance 10
//控件间的距离
#define ControlDistance 20
//定义屏幕宽度
#define SCREEN_W
//定义屏幕高度
#define SCREEN_H

#pragma mark - Color
#define WhiteColor [UIColor whiteColor]
#define BlackColor [UIColor blackColor]
#define BlueColor [UIColor blueColor]
#define YellowColor [UIColor yellowColor]
#define GreenColor [UIColor greenColor]
#define OrangeColor [UIColor orangeColor]
#define ClearColor [UIColor clearColor]
#define GrayColor [UIColor grayColor]
#define CyanColor [UIColor cyanColor]
#define SkyColor RGB(38, 187, 251)
#define RedColor [UIColor redColor]
//暖红色
#define WarmRedColor RGB(217,55,104)
//iPhone X底部白条
#define UnderTabBarHeight
//状态栏高度
#define StatusBarHeight
//navigationbar+状态栏高度
#define ContentOffSet
//tabbar高度
#define TabBarHeight
//十六进制颜色转换
#define UIColorFromRGB(rgbValue)
```
## CYJNavBarView.h  自定navigationbar
```
//左侧按钮
@property (nonatomic,strong)UIButton * leftButton;
//右侧按钮
@property (nonatomic,strong)UIButton * rightButton;
//左侧按钮回调Block
@property (nonatomic,copy)CallLeftBlock callLeftBlock;
//右侧按钮回调Block
@property (nonatomic,copy)CallRightBlock callRightBlock;
```
## CYJPopImgView.h  弹出框
```
//图片
@property (nonatomic,strong)UIImageView * image;
//按钮
@property (nonatomic,strong)UIButton * button;
//代理
@property (nonatomic,weak)id<showDetail> delegate;
//图片地址
@property (nonatomic,copy)NSString * picUrl;
//跳转链接
@property (nonatomic,copy)NSString * link;
```
## NSString+Extension.h 常用字符串格式判断及时间戳转换
```
/**判断是不是手机号*/
- (BOOL)isPhoneNumber;
/**判断是不是IP地址*/
- (BOOL)isIPAddress;
/**判断是不是登录密码(6到16位)*/
- (BOOL)isPassWord;
/**时间戳转时间*/
+(NSString *)timestampSwitchTime:(NSInteger)timestamp andFormatter:(NSString *)format;
/**时间转时间戳*/
+(NSInteger)timeSwitchTimestamp:(NSString *)formatTime andFormatter:(NSString *)format;
```
## NSString+MD5Hash.h 常用MD5加密
```
//MD5加密
- (NSString *)md5;
//32位小写字母MD5加密
+(NSString *)MD5ForLower32Bate:(NSString *)str;
//32位大写字母MD5加密
+(NSString *)MD5ForUpper32Bate:(NSString *)str;
//16位大写字母MD5加密
+(NSString *)MD5ForUpper16Bate:(NSString *)str;
//16位小写字母MD5加密
+(NSString *)MD5ForLower16Bate:(NSString *)str;
```
