import { bt_block } from "./bt_block"

@Preview
@Component
export struct me {
  build() {
    Column() {
      Scroll() {
        Column() {
          //个人信息
          Row() {
            Image($r("app.media.rabbit"))
              .height(70)
              .width(70)
              .borderRadius(70)
              .margin({left:10})
            //.backgroundColor(Color.Pink)
            Column() {
              Text("潘宗盛")
                .fontSize(20)
                .fontColor(Color.White)
                .margin({
                  top:10,
                  bottom: 10
                })
                .align(Alignment.Start)
                .fontWeight(FontWeight.Bolder)
              Text("南京晓庄学院")
                .fontColor(Color.White)
            }
            .width("50%")
            .margin({left: 10})
            //.backgroundColor(Color.Green)
            .justifyContent(FlexAlign.Start)
            .alignItems(HorizontalAlign.Start)
            Image($r("app.media.id_ma"))
              .width(50)
              .height(50)
              .margin({bottom:10,left:40})
          }
          .padding({top: 70,bottom: 20})
          //.backgroundColor(Color.Black)
          .width("100%")
          //校园卡余额等设置
          Column() {
            //校园卡余额
            Row() {
              Column({space: 20}) {
                Text("校园卡余额(元)")
                  .margin({top: 20})
                Text("10000000000000000000000000")
                  .margin({bottom: 20})
              }
              .margin({left:"5%"})
              .alignItems(HorizontalAlign.Start)
              .width("45%")
              Text("|").margin({left:"5%",right: "5%"})
              Column({space: 10}) {
                Text("二维码")
                  .margin({top: 20})
                Image($r("app.media.mypay"))
                  .margin({bottom: 20})
              }
              .width("15%")
              Column({space: 10}) {
                Text("流水")
                  .margin({top: 20})
                Image($r("app.media.mypay"))
                  .margin({bottom: 20})
              }
              .width("15%")
            }
            .width("95%")
            .backgroundColor(Color.White)
            .margin({top:50})
            .borderRadius(20)
            //应用
            Column() {
              Text("应用")
                .margin({top : 20,right: 10, bottom:20})
                .textAlign(TextAlign.Start)
                .width("90%")
              Column() {
                row_bt({str: "扫一扫"})
                Divider().margin({left:10,right:10})
                row_bt({str: "大学运动"})
              }
              .borderRadius(20)
              .backgroundColor(Color.White)
            }
            .width("95%")
            Column() {
              Text("大学圈")
                .margin({top : 20,right: 10, bottom:20})
                .textAlign(TextAlign.Start)
                .width("90%")
              Column() {
                row_bt({str: "个人主页"})
                Divider().margin({left:10,right:10})
                row_bt({str: "大学圈记录"})
                Divider().margin({left:10,right:10})
                row_bt({str: "互动消息"})
                Divider().margin({left:10,right:10})
                row_bt({str: "话题管理"})
              }
              .borderRadius(20)
              .backgroundColor(Color.White)
            }
            .width("95%")
            Column() {
              Text("设置反馈")
                .margin({top : 20,right: 10, bottom:20})
                .textAlign(TextAlign.Start)
                .width("90%")
              Column() {
                row_bt({str: "个人资料"})
                Divider().margin({left:10,right:10})
                row_bt({str: "消息通知"})
                Divider().margin({left:10,right:10})
                row_bt({str: "通用设置"})
                Divider().margin({left:10,right:10})
                row_bt({str: "帮助反馈"})
                Divider().margin({left:10,right:10})
                row_bt({str: "分享应用"})
                Divider().margin({left:10,right:10})
                row_bt({str: "清除缓存"})
                Divider().margin({left:10,right:10})
                row_bt({str: "关于我们"})
              }
              .borderRadius(20)
              .backgroundColor(Color.White)
            }
            .width("95%")
          }
          .width("100%")
          .borderRadius({topLeft:20, topRight:20})
          .backgroundColor($r("app.color.white1"))
        }
        .width("100%")
        .justifyContent(FlexAlign.Start)
      }
      .scrollBar(BarState.Off)
      .width("100%")
      .height("100%")
    }
    .backgroundColor($r("app.color.blue"))
    .width("100%")
    .height("100%")
  }
}


@Component struct row_bt {
  @Prop str:string
  build() {
    Row() {
      Text(this.str)
        .width("90%")
        .padding({left:"5%"})
        .textAlign(TextAlign.Start)
      Text(">")
        .fontColor($r("app.color.white1"))
        .fontWeight(FontWeight.Bolder)
        .width("10%")
        .padding({right:"2%"})
        .textAlign(TextAlign.End)
    }
    .padding({top:20,bottom:20})
    .width("100%")
  }
}