import { bt_block } from "./bt_block"

class option {
  keyname?:string
  include?: Map<string, Resource> = new Map()
  constructor(key: string, include: Map<string, Resource>) {
    this.keyname = key
    this.include = include
  }
}

@Preview
@Component
export struct service {
  optionss: Array<option> = [
    new option("我的服务", new Map([["我的校园卡", $r("app.media.mycampuscard")], ["我的课表", $r("app.media.mycourse")],["图书馆-移动", $r("app.media.mylibrary")],["付款码",$r("app.media.mypay")]])),
    new option("AI专区", new Map([["图书馆服务咨询", $r("app.media.ai1")], ["网络服务咨询", $r("app.media.ai2")]])),
    new option("党建e家", new Map([["晓庄清风", $r("app.media.ehome1")], ["党费收缴", $r("app.media.ehome2")]])),
    new option("学工应用", new Map([["环科教务留言板", $r("app.media.swork1")], ["学生综合测评", $r("app.media.swork2")], ["一站式”学生社区场地预约“", $r("app.media.swork3")], ["走读申请", $r("app.media.swork2")], ["移动宿舍卫生", $r("app.media.swork5")], ["勤工助学", $r("app.media.swork6")],["考试测试", $r("app.media.swork7")],["宿舍", $r("app.media.swork8")],["移动宿舍报修", $r("app.media.swork5")],["移动离校", $r("app.media.swork10")],["移动宿舍违纪", $r("app.media.swork11")],["移动学生基本信息", $r("app.media.swork12")]])),
    new option("人事", new Map([["请假及考勤", $r("app.media.mess3")]])),
    new option("公共服务", new Map([["我的校园卡", $r("app.media.mycampuscard")], ["我的课表", $r("app.media.mycourse")],["图书馆-移动", $r("app.media.mylibrary")],["付款码",$r("app.media.mypay")]])),
    new option("生活办公", new Map([["图书馆服务咨询", $r("app.media.ai1")], ["网络服务咨询", $r("app.media.ai2")]])),
    new option("易班专区", new Map([["晓庄清风", $r("app.media.ehome1")], ["党费收缴", $r("app.media.ehome2")]])),
    new option("教育教学", new Map([["环科教务留言板", $r("app.media.swork1")], ["学生综合测评", $r("app.media.swork2")], ["一站式”学生社区场地预约“", $r("app.media.swork3")], ["走读申请", $r("app.media.swork2")], ["移动宿舍卫生", $r("app.media.swork5")], ["勤工助学", $r("app.media.swork6")],["考试测试", $r("app.media.swork7")],["宿舍", $r("app.media.swork8")],["移动宿舍报修", $r("app.media.swork5")],["移动离校", $r("app.media.swork10")],["移动宿舍违纪", $r("app.media.swork11")],["移动学生基本信息", $r("app.media.swork12")]])),
    new option("辅导猫", new Map([["请假及考勤", $r("app.media.mess3")]])),
    new option("其他", new Map([["我的信息", $r("app.media.swork12")]]))
  ]
  options: Array<string> = ["我的服务", "AI专区", "党建e家", "学工应用", "人事", "公共服务", "生活办公", "易班专区", "教学教育", "辅导猫", "其他"]
  soffset: Array<number> = [0, 180, 349, 506, 880, 1048, 1220, 1390, 1540, 1685]
  scroller: Scroller = new Scroller()
  @State flag: number = 0
  @State distance: number = 0
  build() {
    Column() {
      //title
      Column() {
        Text("服务中心").fontWeight(FontWeight.Bold)
      }
      .width("100%")
      //search_box
      Stack({alignContent: Alignment.Start}) {
        TextInput({placeholder: "    搜索应用名称/学工号/姓名等"})
          .width("100%")
          .backgroundColor($r("app.color.white1"))
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
      //选项卡
      List() {
        ForEach(this.optionss, (item: option) => {
          ListItem() {
            if (this.options.indexOf(item.keyname!) == this.flag) {
              Button(item.keyname)
                .fontSize(12)
                .width(80)
                .height(35)
                .borderRadius(20)
                .margin({
                  left: 5,
                  right: 5
                })
                .fontColor(Color.Blue)
                .backgroundColor($r("app.color.dan_blue"))
                .borderColor(Color.Blue)
            }
            else {
              Button(item.keyname)
                .fontSize(12)
                .width(80)
                .height(35)
                .borderRadius(20)
                .margin({
                  left: 5,
                  right: 5
                })
                .fontColor(Color.Black)
                .backgroundColor($r("app.color.white1"))
                .onClick( () => {
                  this.flag = this.options.indexOf(item.keyname!)!
                  this.distance = this.soffset[this.flag]
                  this.scroller.scrollTo({
                    xOffset: 180,
                    yOffset: this.soffset[this.flag]
                  })
                })
            }
          }
        })
      }
      .scrollBar(BarState.Off)
      .height(35)
      .width("100%")
      .listDirection(Axis.Horizontal)
      //service
      Scroll(this.scroller) {
        Column() {
          ForEach(this.optionss, (item: option) => {
            block_service({option: item})
          })
        }
        .width("100%")
      }
      .onScroll((yoffset:number) => {
        //获取偏移量
        this.distance=this.scroller.currentOffset().yOffset
        let i = 1
        for(i; i < 10; i++) {
          if(this.soffset[i] > this.distance) {
            this.flag = i - 1
            break;
          }
          else if(this.soffset[i] == this.distance) {
            this.flag = i
            break;
          }
        }
        console.log(this.distance.toString())
      })
      .align(Alignment.Top)
      .scrollBar(BarState.Off)
      .width("95%")
      .height("80%")
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Start)
  }
}

type MapEntry = [string, Resource]
@Component
struct block_service {

  @Prop option: option
  build() {
    Column() {
      Text(this.option.keyname)
        .align(Alignment.Start)
        .fontWeight(FontWeight.Bolder)
        .width("100%")
        .margin({ bottom: 10 })
      Grid() {
        ForEach(Array.from(this.option.include!.entries()),(item:MapEntry) => {
          GridItem() {
            bt_block({ image: item[1], name: item[0], color: Color.Black })
          }.width(70)
        })
      }
      .width("100%")
      .rowsGap(10)
      .columnsGap(12)
      .align(Alignment.Center)
      .maxCount(4)
      .layoutDirection(GridDirection.Row)
    }
    .width("100%")
    .margin({
      top: 30,
      bottom: 15
    })
  }
}