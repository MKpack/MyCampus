@Preview
@Component
export struct campus {
  build() {
    Column() {
      Tabs({barPosition: BarPosition.Start}) {
        TabContent() {
          Column({space: 5}) {
            Row({space: 5}) {
              Button("# 晓角落,晓美好")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
              Button("# 晓庄活动聚集地")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
            }
            .width("100%")
            .justifyContent(FlexAlign.Start)
            Row({space: 5}) {
              Button("# 晓庄帮帮帮")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
              Button("# 我在晓庄请你看雪")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
              Button("# 寻*年味")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
            }
            .width("100%")
            .justifyContent(FlexAlign.Start)
            Row({space: 5}) {
              Button("# “校庆日 校园行”我的晓庄记忆")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
              Button("# 好想放假,好想回家")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
            }
            .width("100%")
            .justifyContent(FlexAlign.Start)
            Row() {
              Button("更多话题  >")
                .backgroundColor($r("app.color.white1"))
                .fontColor(Color.Black)
                .fontSize(10)
            }
            .width("100%")
            .justifyContent(FlexAlign.Start)
            Column() {
              Text("暂无内容,去发布动态试试吧~")
            }
            .width("100%")
            .justifyContent(FlexAlign.Center)
            .height("60%")

          }
          .width("100%")
          .height("100%")
          .justifyContent(FlexAlign.Start)
        }
        .tabBar("社区")
        TabContent() {

        }
        .tabBar("头条")
      }
    }
  }
}