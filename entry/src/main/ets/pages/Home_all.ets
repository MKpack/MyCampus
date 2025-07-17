import { Today } from "./Today"
import { Message } from "./Messages"
import { service } from "./service"
import { campus } from "./campus"
import { me } from "./me"

@Entry
struct Home_all {
  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
        Today()
      }.padding({
        bottom: 50
      })
      .tabBar("今日")
      TabContent() {
        Message()
          .padding({bottom: 60})
      }.tabBar("讯息")
      TabContent() {
        service()
      }.tabBar("服务")
      TabContent() {
        campus()
      }.tabBar("校园")
      TabContent() {
        me()
      }.tabBar("我的")
    }
    .scrollable(false)
    .barHeight("5%")
    .width("100%")
    .height("100%")
  }
}