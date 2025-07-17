import { router, Router } from '@kit.ArkUI';

@Entry
@Component
struct login {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Image($r("app.media.CampusIco"))
        .height(100)
        .width(100)
        .margin({
          bottom: 60,
          top: 60
        })
      TextInput({placeholder: "请输入手机号"})
        .width(280)
        .margin({
          bottom: 20
        })
      Stack({alignContent: Alignment.End}) {
        TextInput({placeholder: "请输入验证码"})
          .width(280)
        Text("获取验证码")
          .fontSize(14)
          .fontColor($r("app.color.blue"))
          .width(90)
      }
      .margin({
        bottom: 20
      })
      .width(280)

      Button("登录")
        .width(280)
        .onClick(() => {
          router.pushUrl({
            url: "pages/Home_all"
          })
        })
    }
    .width('100%')
    .height('100%')
  }
}
