class User_info {
  img?: Resource
  name?: string
  mess?: string
  constructor(img: Resource, name: string, mess: string) {
    this.img = img
    this.name = name
    this.mess = mess
  }
}


@Preview
@Component
export struct Message {
  User_infos: Array<User_info> = [
    new User_info($r("app.media.mess_1"), "大ai辅导员", ""),
    new User_info($r("app.media.mess2"), "应用消息", "你提交的学生综合测评已通过，请知悉"),
    new User_info($r("app.media.mess2"), "应用消息", "调停课通知"),
    new User_info($r("app.media.mess3"), "辅导员通知", "你的销假已逾期一天,请尽快办理销假")
  ]
  build() {
    Column() {
      Column() {
        Text("消息").margin({top: 20}).fontWeight(FontWeight.Bold)
      }
      .width("100%")

      Stack({alignContent: Alignment.Start}) {
        TextInput({placeholder: "    搜索应用名称/学工号/姓名等"})
          .width("100%")
          .backgroundColor(Color.White)
          .borderRadius(5)
        Image($r("app.media.search"))
          .margin({
            left: 5
          })
          .width(20)
          .height(20)
      }
      .margin({
        top:20,
        bottom: 25
      })
      .width("95%")
      List({space: 10}) {
        ForEach(this.User_infos, (item: User_info) => {
          ListItem() {
            user({ user_info: item})
              .width("100%")
          }
        })
      }
      .width("100%")
      .height("100%")
    }
    .width("100%")
    .height("100%")
  }
}


@Component
export struct user {
  @Prop user_info: User_info
  build() {
    Row(){
      Image(this.user_info.img)
        .height(50)
        .width(50)
        .margin({
          left: 20,right: 15
        })
      Column() {
        Text(this.user_info.name).fontSize(15).fontWeight(FontWeight.Bold).height(30)
        Text(this.user_info.mess).height(20).fontSize(13)
      }
      .alignItems(HorizontalAlign.Start)
    }
  }
}