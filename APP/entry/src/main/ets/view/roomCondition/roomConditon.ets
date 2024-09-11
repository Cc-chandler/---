
@Styles function blocks(){
  .height('10%')
  .width('90%')
}


//主干内容
//1.环境参数
@Component
struct Sunshine{

  iron:string
  title:ResourceStr
  @State  comfortability:string = ''
  image:string
  @State show:number = 0
  build() {

    Row() {
      Image($rawfile(this.iron))
        .height(50)
        .width (50)
        .margin({left:15})
      Text(this.title)
      Text(this.comfortability)
      Blank()
      Image($rawfile(this.image))
      Text(this.show + 'lx')
    }
    .blocks()

    .backgroundColor('#cfcfcf')
    .margin({top:'20',bottom:'10'})
    .borderRadius(30)
    // if (this.show<=0){
    //   // this.image = "../../resources/rawfile/image/太阳.png";
    // }
  }
}


//2.温度
@Component
struct Temp{

  iron:string
  title:ResourceStr
  @State  comfortability:string = ''
  image:string
  show:number
  build() {

    Row() {
      Image($rawfile(this.iron))
        .height(50)
        .width (50)
        .margin({left:15})
      Text(this.title)
      Text(this.comfortability)
      Blank()
      Image($rawfile(this.image))
      Text(this.show + '℃')
    }
    .blocks()
    .backgroundColor('#cfcfcf')
    .margin({top:'20',bottom:'10'})
    .borderRadius(30)
  }
}


//3.湿度
@Component struct wetness{
  iron:string
  title:ResourceStr
  @State show:number = 0
  build() {

    Row() {
      Image($rawfile(this.iron))
        .height(50)
        .width (50)
        .margin({left:15})
      Text(this.title)
      Blank()
      Progress({value:this.show,total:100,type:ProgressType.Ring})
        .margin({right:10})
        .width(50)
      Text(this.show + '%')
        .margin({right:'10'})
    }
    .blocks()
    .backgroundColor('#cfcfcf')
    .margin({top:'20',bottom:'10'})
    .borderRadius(30)
  }
}


//4.天气
@Component struct weather{
  iron:string
  title:ResourceStr

  @State image:string = ''
  @State show:string = ''
  build() {

    Row() {
      Image($rawfile(this.iron))
        .height(50)
        .width (50)
        .margin({left:15})
      Text(this.title)
      Blank()
      Image($rawfile(this.image))
      Text(this.show)
        .margin({right:'10'})
    }
    .blocks()
    .backgroundColor('#cfcfcf')
    .margin({top:'20',bottom:'10'})
    .borderRadius(30)
  }
}

//建议
@Component struct suggestion{
  @State adv:string = '建议的内容'
  build(){

    Row(){
      Text('建议：')
        .margin({top:'0'})
        .lineHeight(20)
        .fontSize(20)
      Text(this.adv)
      // .onClick(() =>{
      //   this.adv = 'changed'
      // })
      // .textOverflow
    }
    .width('90%')
    .height('100')
    .backgroundColor('#cecece')
    .borderRadius(30)
  }

}

@Component
export default struct roomCondition{
  @State head: string = '生长环境'
  @State room: string = ''
  build(){
    Column(){
      Row(){
        Text(this.head)
          .fontSize(45)
          .fontWeight(FontWeight.Bold)
          .textAlign(TextAlign.Center)
          .width('75%')
          .backgroundColor('#cecece')
          .height(60)
        Text(this.room)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .width('25%')
          .backgroundColor('#9a9a9a')
          .height('60')
          .alignSelf(ItemAlign.Center)
      }
      .margin({ top: 60 })

      Sunshine({
        iron: '../../resources/rawfile/image/太阳.png',
        title: '光照',
        comfortability: '（适宜）',
        image: '',
        show: 1500
      })
      Temp({
        iron: '../../resources/rawfile/image/温度.png',
        title: '温度',
        comfortability: '（适宜）',
        image: '',
        show: 26
      })
      //湿度
      wetness({
        iron: '../../resources/rawfile/image/湿度.png',
        title: '湿度',

        show: 80
      })

      //天气
      weather({
        iron: '../../resources/rawfile/image/天气.png',
        title: '天气',
        image: '',
        show: '多云'
      })

      suggestion()

    }

    .backgroundColor('#efefef')
    .height('100%')
    .width('100%')

  }
}