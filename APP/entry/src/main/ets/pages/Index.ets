
import myHome from '../view/myHome/myHome'
import roomCondition from '../view/roomCondition/roomConditon'




@Entry
@Component
struct Index {
  @State currentIndex:number = 0
  @State head: string = '房间环境'
  @State room: string = '客厅'
  @Builder tabBuilder1(title:string,image:ResourceStr,index:number){

    Column({space:4}){
      Image(this.currentIndex === index ? $rawfile('image/abbn1(cked).png') : $rawfile('image/abbn1(uncked).png'))
        .width(20)
      Text(title).fontColor(this.currentIndex === index ? Color.Black : Color.Gray)
    }
    .justifyContent(FlexAlign.Center)

  }
  @Builder tabBuilder2(title:string,image:ResourceStr,index:number){

    Column({space:4}){
      Image(this.currentIndex === index ? $rawfile('image/tabbtn2(cked).png') : $rawfile('image/tabbtn2(uncked).png'))
        .width(20)
      Text(title).fontColor(this.currentIndex === index ? Color.Black : Color.Gray)
    }
    .justifyContent(FlexAlign.Center)

  }  @Builder tabBuilder3(title:string,image:ResourceStr,index:number){



}
  build() {
    Tabs({barPosition:BarPosition.End}){
      // page1
      TabContent(){
        myHome()
      }
      .tabBar(this.tabBuilder1(`首页`,$rawfile('image/abbn1(uncked).png'),0))
      // page2
      TabContent(){
        roomCondition()
      }
      .tabBar(this.tabBuilder2(`环境`,$rawfile('image/tabbtn2(uncked).png'),1))
      // page3
    }
    .onChange(index => this.currentIndex = index)
    .width('100%')
    .height('100%')
    .vertical(false)

  }
}
