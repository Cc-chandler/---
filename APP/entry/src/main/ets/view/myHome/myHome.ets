import { WindowMode } from '@ohos.UiTest'
@Styles function button() {
  .width(160)
  .height(55)
  .border({ radius: 3, color: `#e3e3e3`,width:1 })
  .backgroundColor(`#fff`)
  .margin({ left: 10, right: 10 })
  .alignSelf(ItemAlign.Start)
}

@Styles function btnLogo() {
  .width(30)
  .height(30)
  .margin({left:1})
}


@Component
export default struct myHome {
  @State funcIndex: Number = 7
  // @State function:Array = [`语音识别`,`人脸识别`,`手势识别`,`姿态识别`,`出门警戒`,`智能提醒建议`,`添加`]
  @State home: string = '我的花'

  build() {
    Column() {
      Row() {
        //添加设备
        Button() {
          Image($rawfile('imagefor1/添加.png'))
            .width(18)
            .height(18)
            .colorFilter(`#ddd`)

        }
        .margin({ right: 5 })


        //我的设备
        Button() {
          Image($rawfile('imagefor1/三横线.png'))
            .width(15)
            .height(15)
            .backgroundColor(`white`)
        }
        .border({width:1})
      }
      .margin({ top: 0 })

      .height(20)
      .width(`100%`)
      .alignItems(VerticalAlign.Bottom)
      .justifyContent(FlexAlign.End)

      Row() {
        Text(this.home)
          .fontSize(40)
          .margin({ left: 12 })
      }
      .backgroundColor(`#fff`)
      .alignItems(VerticalAlign.Top)
      .justifyContent(FlexAlign.Start)
      .width(`100%`)
      .height(43)
      //logo
      Row() {
        Image($rawfile('image/icon_hua.png'))
          .width(200)
          .height(200)
      }
      .width(`100%`)
      .height(`40%`)
      .backgroundColor(`#fff`)
      .justifyContent(FlexAlign.Center)
      //模块
      Row() {

        Button() {
          Row() {
            Image($rawfile('imagefor1/语音识别.png'))
              .btnLogo()
            Text(`语音识别`)
          }
        }
        .button()

        Button() {
          Row() {
            Image($rawfile('imagefor1/智能助手提醒.png'))
              .btnLogo()
            Text(`智能提醒建议`)
          }
        }
        .button()

      }
      .justifyContent(FlexAlign.Start)
      .alignItems(VerticalAlign.Center)
      .width(`100%`)
      .height(`10%`)
      .backgroundColor(`#fff`)


      Row() {
        Button() {
          Row() {
            Image($rawfile('imagefor1/手势识别.png'))
              .btnLogo()
            Text(`手势识别`)
          }
        }
        .button()

        Button() {
          Row() {
            Image($rawfile('imagefor1/姿态识别.png'))
              .btnLogo()
            Text(`生长检测`)
          }
        }
        .button()
      }
      .justifyContent(FlexAlign.Start)
      .alignItems(VerticalAlign.Center)
      .width(`100%`)
      .height(`10%`)
      .backgroundColor(`#fff`)

      Row() {
        Button() {
          Row() {
            Image($rawfile('imagefor1/出门警戒.png'))
              .btnLogo()
            Text(`生长播报`)
          }
        }
        .button()

        Button() {
          Row() {
            Image($rawfile('imagefor1/添加.png'))
              .btnLogo()
            Text(`添加`)
          }
        }
        .button()


      }
      .justifyContent(FlexAlign.Start)
      .alignItems(VerticalAlign.Center)
      .width(`100%`)
      .height(`10%`)
      .backgroundColor(`#fff`)



    }
  }
}






























