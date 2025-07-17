import { bt_block } from "./bt_block"

@Preview
@Component
export struct Today {
  build() {
    Column() {
      Text("南京晓庄学院")
        .fontSize(20)
        .fontColor(Color.White)
        .backgroundColor($r("app.color.blue"))
        .width('100%')
        .textAlign(TextAlign.Start)
        .padding({
          top: 25,
          bottom: 5,
          left: 10
        })
      //下滑栏目
      Scroll() {
        Column() {
          Column() {
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
              top:20
            })
            .width("95%")
            .margin({
              bottom: 25
            })
            //应用
            Row() {
              //我的校园卡
              bt_block({image: $r("app.media.mycampuscard"), name: "我的校...", color: Color.White})
              //我的课表
              bt_block({image: $r("app.media.mycourse"), name: "我的课表", color: Color.White})
              //图书馆
              bt_block({image: $r("app.media.mylibrary"), name: "图书馆-...", color: Color.White})
              //付款码
              bt_block({image: $r("app.media.mypay"), name: "付款码", color: Color.White})
              //更多
              bt_block({image: $r("app.media.more"), name: "更多", color: Color.White})
            }
            .justifyContent(FlexAlign.SpaceEvenly)
            .width("100%")
          }
          .width("100%")
          .margin({
            bottom: 20
          })
          Column() {
            Text("推荐内容")
              .margin({
                top: 16,
                left: 20,
                bottom: 20
              })
              .width('100%')
              .align(Alignment.Start)
            //article
            Column() {
              article({text: "app.string.new1", image_path: ["app.media.new1"], image_num: 1})
                .margin(10)
              article({text: "app.string.new2", image_path: ["app.media.new21","app.media.new22","app.media.new23"], image_num: 3})
                .margin(10)
              article({text: "app.string.new3", image_path: ["app.media.new3"], image_num: 1})
                .margin(10)
              article({text: "app.string.new1", image_path: ["app.media.new1"], image_num: 1})
                .margin(10)
              article({text: "app.string.new2", image_path: ["app.media.new21","app.media.new22","app.media.new23"], image_num: 3})
                .margin(10)
              article({text: "app.string.new3", image_path: ["app.media.new3"], image_num: 1})
                .margin(10)
            }
            .width("90%")
            .borderRadius(10)
            .backgroundColor(Color.White)
          }
          .width("100%")

          .backgroundColor($r("app.color.white1"))
          .borderRadius({
            topLeft: 20,
            topRight: 20
          })
        }
        .width("100%")
      }
      .scrollable(ScrollDirection.Vertical)
      .width("100%")
    }
    .backgroundColor($r("app.color.blue"))
    .width('100%')
    .height('100%')
  }
}

@Component
export struct article {
  @Prop text:string
  @Prop image_path: Array<string>
  @Prop image_num: number
  build() {
    Column() {
      Text($r(this.text))
        .fontSize(15)
        .fontWeight(FontWeight.Medium)
        .margin({
          bottom: 5
        })
      if (this.image_num == 1) {
        Image($r(this.image_path[0]))
          .width(300)
          .height(190)
      }else {
        Row() {
          Image($r(this.image_path[0]))
            .width(100)
            .height(100)
          Image($r(this.image_path[1]))
            .width(100)
            .height(100)
          Image($r(this.image_path[2]))
            .width(100)
            .height(100)
        }
        .width("100%")
        .justifyContent(FlexAlign.SpaceBetween)
      }
    }
  }
}