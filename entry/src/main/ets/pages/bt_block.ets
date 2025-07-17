

@Component
export struct bt_block {
  @Prop image: Resource
  @Prop name: string
  @Prop color: number

  build() {
    //我的校园卡
    Column() {
      Button() {
        Image(this.image)
          .borderRadius(10)
      }
      .width(50)
      .height(50)
      .margin({
        bottom: 10
      })
      Text(this.name)
        .fontColor(this.color)
        .fontSize(15)
        .maxLines(2)
        .textAlign(TextAlign.Center)
        .textOverflow({overflow: TextOverflow.Ellipsis})
    }
  }
}