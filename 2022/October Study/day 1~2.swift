import Foundation

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

    1~2 주차 (월-금) 강좌 
           복습(rewind)

/    << 초반부 1주차 (목,금수업)분량분은 아직 새싹인 내겐 hard한 범위와 깊이를
        강사님께서 일부로 다뤄주신것이기에  총 복습이 끝나면 다시돌아가서 rewide하자 >>..
        ((즉, 아래내용들은 2주차 월 ~ 금))

        //따라서 해당 본문의 진행순서 2주차 월~금 >> 1주차 목,금
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

//8bit ---> 1byte
//64bit --> 64차선의 도로



//타입: 정보가 저장되는 '형식'
//변수: 타입을 사용해 지정한 값을 '저장하는 곳'
//-데이터 타입이 필요한 이유??? : 메모리 공간을 차지하는 내용들의 타입에 따라 미리 필요한 크기만큼 자리를 잡아주기위함 --->그냥 미리 자리 확보해두기 위함이라고 익혀두자




//여러줄의 문자열을 출력하고 싶다??----> 삼중 따옴표!!!
var multipleline = """
 안녕하세요, 만나서 반갑습니다
nice to meet and glad happy to meet u
"""
print(multipleline)


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

 <<<<'튜플Tuple'>>>>

// ----->내가 아직도 실전에서는 헷갈리는 개념 @@@@@@@
/특징들을 일단 나열해보면
//1.추석선물꾸러미(여러타입값들이 튜플내에 저장 가능함)
//2.그렇기에 여럿값들을 하나의 항목으로 임시적으로 묶음
//3.결국 ...이로인해 하나의 함수에서 ===> 여러값들을 반환하는데 사용 가능!
let mytuple: (Int, String, Double) = (5, "hi", 3.3)
let mytuple = (5, "hi", 3.3) @@@ 이렇게도가능((일단 교재엔 이렇게나옴)) @@강사님도 이걸로씀@@

                  //지금 위의줄 자체가 하나의 함수이기에
print(mytuple)    //지금과같은 출력은 의미x mytuple이아닌 무엇을 적어도
                  //프린트가 된다
print(mytuple.2)//이런식으로 해줘야 튜플의도를 살리는 예제이다.   
                //의도대로 하나의 함수에서 여러값들을 반환받기가 가능함을 보여주는 예시였음.


//(**참고로교재에선 과정을 하나더 추가해서 한다 )
let myString = mytuple.1
print(myString)         //이런식으로 말이다...          
//이걸 응용해서 각각의 값들에 미리 변수를 설정해두면?
let(myInt, myString1, myDouble) = mytuple  ///이런식으로하면 된다.
//각각의 값들에게 순서대로 '이름을 부여해서' 필요할때마다 꺼내쓰는 개념...
//그런데.......이걸 번거롭게 다~ 적어야 할까??
// 쉽게말해서 꺼내 쓸떄마다 미리 다부여하고 꺼내고 , 또 새로설정하고 꺼내고..
//이런 번거로움을 피할 수 있게 해주는게 아래와같은 형태이다
let(_, _, myString2) = mytuple


//위의 방법이 튜플을 사용할떄 각각의 값들에 '네임'을 부여하는 2번째 방법이라면,
//마지막 3번쨰 방법이 '강사님이 주로 쓰시는 방법'이라고 한다
//바로 애초에 생성할떄 '네임'을 부여해주는 것이다
//** 이방법이 '협업'을 하시기에 가장 좋았떤 방법이었기 떄문이시라고 한다
let mytuple2 = (count:5, message:"hi", percent:3.3)
print(mytuple2.count)


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<<<옵셔널 타입 Optional Type>>>

//옵셔널이 중요한 이유가.... 이게 거의 Swift의 철학을 담고있기 때문이라고 강사님이 말하신다. 다른언어에는 없다고 한다
//공부해보니깐 일단, 이건 우선 형태를 먼저 봐야한다
            var index: Int?
// 뒤에 '물음표' 보이는가????    
//'변수'를 선언할때 '데이터 타입 뒤쪽에' '물음표를 붙이면' 형태가 끝이다
// 왜?????????????
//변수or상수의 뒤쪽에 값이 '할당'되어 있지 않을경우, 불안전하고 일관되지않은
//접근방식으로 설정되지만 "물음표"를 통해 <안전하고,일관된>접근방식을 갖게된다...
/ --------------> 정수형(옵셔널)타입 이라고 한다


// 우리들의 컴퓨터는 이 타입의 값을 2가지로 인식한다
/(정수 or nil)
//원래대로 정수를 할당하면 정수값을 갖게되는것이고
//어떤값도 할당되지 않은 옵셔널은, 'nil'의 값을 갖게 되는 것이다.
//(**)즉, <'nil타입의 값' or '정수타입의 값'>
/쉽게 설명하면..... 있으면 있는대로 없으면 없는대로 굴러가게 해줌


//이렇게 옵셔널된 'nil타입의 값'에 값을 부여한다면????
//이걸 용어로는 해당값으로 옵셔널 내에서 '래핑wrapped'되었따고 한다
//용어에 쫄지 말자.. 난지금 덜 익숙할 뿐이다. 자주 마주치자
     index = 3        //<---3이란 값으로 래핑된 모습
//그리고 우리는 이제부터 이 래핑된 값을 사용할떄마다
/'강제언래핑forced unwrapping'을 한다...고 부르자

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

/그리고 실전에서 사용할때는 '느낌표(!)'를 활용한다

var colors: [String] = ["red", "blue", "white", "purple"]
if index != nil{              //참고로 왼쪽형태 그대로 띄어쓰기 맞춰야함
    print(colors[index!])
}   else{ 
    print("there is no index number")
}                     /// 출력되는 값 ---> purple
//여기서 드는 궁금증..... 꼭 강제언래핑(!)를 써야 Purple값이 나오나?
//      print(colors.3)        튜플처럼했는데 일단 이거는 안됬음
//  let mycolors = colors.3
//   print(mycolors.3)         요방식도 안됨
//// 할당된 값을 '강제언래핑(!)' 형태가아닌 직접 접근하여 호출하면
//error생길 확률이 커진다고 한다. 
//비유하자면 강제언래핑은 일종의 폭탄들어있는 선물상자를 착각해서 뜯을 우려가 
//있기에 자주 사용되는 명령어는 아니라고 한다! <강제로 포장 뜯지 말자!!>

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

//그럼 선물이 궁금한데 어떻게 해야 상자를 뜯지?
//이럴때를 위한 방법이 있다.
<<< 옵셔널 바인딩 optional binding에 관하여 >>>


// 우선 말로 풀어서 쉽게 비유하자면,
// "똑똑똑 optional name님 안에 계신가요??... 계신다면 나오실떄 constant name이라는 이름을 명찰달고 나와주실래요??"
//이걸 코드로 나타내보면
// if let constanName = optionalName{
// }        
// if var constanName = optionalName{
// }       //이렇게 나타낼 수 있다.. 
           //이걸 우리가 만들었던 color배열에 적용하면??
index = 2
if let myValue = index{
    print(colors[myValue])
}   else{
    print("there is no index number")
}                         //이러면 무사히 white 출력된다
/////이런식으로 if let A = B{}
//형태를 이루고 자주나온다. 마치 for _ in ...처럼
//그러니 형태를 익혀두는것도 추천한다

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

//추가로 더 들어가보자면....옵셔널이 여러개 있다면?????
var pet1: String?
var pet2: String?
pet1 = "dog"
pet2 = "cat"
if let firstPet = pet1, let secondPet = pet2 {
    print(firstPet)
    print(secondPet)
}   else{             //*주의) else 앞뒤로' } { '가 있는데 계속 실수중
    print("no pet")     // pet2를 아예 없앨경우 출력되는 "no pet"
}
// 참고사항 1) pet2 = nil   -----> "no pet"
// 참고사항 2) 콤마(,)대신 &&를 넣으면? 2가지 모두 충족해야만하기에 error
// 이걸 한번더 응요해서 '조건문'에 카운트 까지 넣을수도 있다
let petCount = 10
if let firstPet = pet1, let secondPet = pet2, petCount > 1 {
    print(firstPet)
    print(secondPet)
}   else{             
    print("no pet")     
}
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

// 추가로 if let & if var 예시를 좀더 비교해서 알아두면...
var name2: String?
name2 = "Minji"

if var myName2 = name2{
  myName2 = "Daniel"
  print("\(myName2)")
} else{
  print("other Nwjs members")
}                               //---> Daniel 

if let myName3 = name2{
  print("\(myName3)")
} else{
  print("other Nwjs members")
}                               //---> Minji

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


/끝으로 옵셔널의 주의점!!!
// nil 을 사용할 수 있는건 -----> 옵셔널 뿐이다
//그렇기에 아래 3가지 모두 error
//      var myInt = nil       (x)
//      var myString = nil    (x)
//      let myConstant = nil  (x)
//즉, 옵셔널이 아닌 변수 or 상수에는 nil을 할당할 수 없다
//     선언부에서 물음표로(?) 옵셔널 결정을 미리 해야한다

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

/옵셔널에 대한 마지막 첨언
//굳이 옵셔널을 쓰지않더라도 원하는값을 직접넣어 바로초기화 하는게 편하지않나??
//이런 질문에대한 대답은---->
//(*nill이란 '포스트잇 붙여넣은 상태의 박스'가 옵셔널!!!)
  //(우리가 편해서 하는것이라고 하기보단)
    //(안정성을 위해 메모리를 미리 부여하는것이라고 일단 이해)


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<<Any, AnyObject, Nil에 관하여.....>>>

/ : Any    ---> 타입 Any는 모든타입ok
//               그러면 지금까지 내가 배운건 헛수고??
//               그건 아니다 차차 알게 됨
//우선,간단히라도 설명하자면....
//swift언어특성상 타입에 엄격함! 그런데 만약 위의 것들을쓰게되면
//해당타입으로 선언된 변수를 가져다 쓰기위해서는
//매번 타입 및 변환을 해줘야만 한다 ----> 오류error 발생 가능성 커짐

//*cf) Any는 그냥 Any로서 모든타입가능한것뿐이지 다른 타입들과 상하관계는 X
//아래의 예시가 그걸 보여주는 예제이다
var someAny: Any = 100
someAny = "어떤 타입도 ok"    //String
someAny = 123.123          //Float,Double
//let someDouble: Double = someAny    --> error

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

 AnyObject   ----> Any보다 좀더 '한정적'
//                     클래스의 인스턴스만 할당가능  
class someClass {}      //이런 클래스가 있다면,
// var someObject: AnyObject = someclass()//<---클래스의 인스턴스  
//위의 처럼은 가능하지만....아래처럼은 안된다
//someAnyObject = 123.123    





                                           <<여기까지가 ppt 95~132 page 까지의 분량임 >>
                                   //   해야될것 1. 133 ~ 182 pageq 복습
                                   //          2. 추가 보충 101~102,104,106~110 page
                                               3. 71 ~ 94 page 복습 
                                               (여기까지하면 1~2주차도 복습 마무리)
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
  my ppt 133page~
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< nil >

// 특정한 type을 말하는게 아닌 '없음'을 나타내는 keyword
// 비유하자면 선물박스에 없음을 나타내는 포스트잇만 떡하니 붙음. 내용물 (x)
/즉, nil이란 "내용없는 상태"


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< 타입캐스팅 & 타입검사 >>

/ [타입캐스팅] :  '욱여넣다'
               //이쪽type에서 만들어진걸 저쪽type으로 '옥여넣을때' 사용됨
               //일반적으론 '변환'한다고들하지만, 강사님생각엔 '손실'되는부분이 발생하기이 이표현을 더 선호
               / upcasting & downcasting 2가지 형태가 존재
               
        // swift로 코딩을 작성할때 컴파일러가 '어떤값의 특정타입을 식별못하는 경우' 가 종종 발생하기이               
            //---> 이런경우는 메서드나 함수가 '반환'하는 값이 불분명하거나 추론되지않는 타입값일떄 발생
                //---> 그래서 이럴땐 타입 캐스팅 
                     --->  << as >> 키워드를 사용하여 '형변환'을시킴

let myValue = A( )as! String    
//----> A()메서드가 반환하는 값을 string타입으로 처리해야한다고 커맢일러에게 알리기 위함                      
즉, 내가 어떤 타입인지 알던..혹은 모르던..간에
    어쨋든 특정type으로 활용해야만 하는경우 이 '타입캐스팅'을 사용한다

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

/ ((업캐스팅)) -  //특정 class의 객체가 '상위클래스'들 중의 하나로 변형
                    //예를들어 상위에서 하위클래스 순서로 UIView > UIControl > UIButton이 존재
                     //---> let myButton: UIButton = UIButton()   --->(버튼을 만듬)       
                     //     let myControl = myButton as UIControl 
                    위의 코딩은 'as'를 사용하여 업캐스팅한 모습이다

/ ((다운캐스팅)) - // 단순히 'as'가아니라 
                    /    'as!' 를 사용하여 그 클래스의 하위클래스로 '강제변환forced conversion'
                     //---> let myControl: UIControl = UIControl()       
                     //     let myButton = myControl as! UIButton
                    위의 코딩은 'as!'를 사용하여 다운캐스팅한 모습이다
//그러나 이러한 다운캐스팅은 안정성을 보장 못한다(작동은ok,오류도 possible)
//뭔가 느낌적으로는 자식이 부모따라하는건되도 부모가 자식이용하긴 애매한늠낌(?) (내생각임)
//컴파일러가 발견못하면 대부분 런타임에서 error발생...즉, 위험성이 있따는 뜻이다
//애초에 이런 '느낌표(!)' 붙이는거 자체가 '강제'를 의미함. 충돌발생 가능.

그렇다면? 다른방법은???
//이럴떈 ...
                  /    ' as? ' 방식의 (옵셔널 바인딩)을 사용하면 보다 더 안전함

                    let myControl: UIControl = UIControl() 
                    if let myButton = myControl as? UIButton {
                        print("타입캐스트 to UIButton 성공") 
                    }  else {
                        print("타입캐스트 to UIButton 실패")
                    }    
      //코딩 2번째 줄이 실패하면 마지막 줄로 하면 된다는 의미이다              



/@(강사님의 조언)@
앞으로 코딩해나가면서,
느낌표가 있다는건.....왠만해서는 물음표로 바꿀 수 있고 그 방법들은
언딘가 찾아보면 나올것이며 그게 더 ..좀 더 안전한 방법이다
이걸가지고 일단 시간급해서 느낌표때려버리고 납품기한 겨우겨우 맞췄다가는
흔히들 겪는 업데이트하자마다 사용자들 오류발생하는 그런일이 닥쳐올것이다


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


/ [타입검사 TypeCheck] : ' is 키워드를 사용한다''
               
if myObject is MyClass {
    //my object는 myclass의 인스턴스 ---> object 길동이
}                                      // myclass 홍가네    

//해당코드는 MyClass라는 이름의 클래스의 인스턴지인지를 검사하는 코드

                                                                         my ppt( ~ 140page)               


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< 표현식 Expression >>

// 표현식의 구문에는
-하나의 연산자(operator)
-두개의 피연산자(operand)
-할당자(assignment) 

//  var myResult: Int = 1 + 2
/* 위의 표현식에서    ' = '    : 할당연산자 (덧셈의 결과를 '변수'에 할당)
                      ' 1, 2 ' : 피연산자 (숫자외에도 변수,상수등의 혼합도 가능O )
                      ' + '    : 연산자    (1과 2를 더하는데 사용)  */
                      
     할당자assignment(=)는 --->값--->Copy--->Call by Value
/즉, 오른쪽에 있는 값value를 등호(할당자)가 할당해준다
        //(표현식의 결과를 변수에 저장해주는게 할당연산자(=)의 역할)

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< 기본할당 연산자 >>

//그냥 할당연산자를 기준으로 좌우로 나눠서 찾아보면
//   var myResult: Int = 1 + 2
//     (왼쪽의 피연산자)   (오른쪽의 피연산자)
/       ((할당받을대상))      ((할당할 값))
//원리로 들어가보면 오른쪽의 피연자 값을 왼쪽에 'Copy(반영)'한다
/그러므로 헷갈리거나 겁먹지말고 등호를 기준으로 좌,우를 바라보자

//다양한 예제들
var x: Int?         //---> 옵셔널 Int 변수 선언
var y = 10          //---> 두번째 Int 변수 선언과 초기화
x = 10              //---> x에 값 할당
x = x! + y          //---> 언래핑한 x와 y의 합을 x에 할당
x = y의             //---> y의 값을 x에 할당

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< 산술 연산자 >>
//구분할것은 음수를 나타내는 '-' 에서는 단항(1개의항)연산자로 ok
//           뺄셈을 나타내는 '-'뺄셈연산자는 이항(2개의항)연산자가 필요 ok

==> - (단항 연산자) , * , / (나눗셈), +, -, %(나머지연산)

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<<복합할당 연산자 >>
/*오른쪽에서 연산을 수행한 결과를
왼쪽의 피선언자들 중 하나에 저장하기위해 주로 사용된다 */

x = x + y ---------> x += y -----> x와 y를 더한값을 x에 저장
x = x / y ---------> x /= y -----> x를 y로 나눈값을 x에 저장
x = x % y ---------> x %= y -----> x를 y로 나눈후의 나머지 값을 x에 저장

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<<비교 연산자 >>
//swift의 비교연사자는 모두======> [ 비교결과에따라 '불리언bool 결과를 반환'한다 ]
                                     //---> 굳이 type상으로 따지자면 Bool이란뜻
//비교를 위해 당연히 두개의 피연산자가 필요
// 비교연산자의 경우엔 주로 '프로그램흐름 제어로직'을 만드는데 많이 사용됨

let condition: Bool = ( x == y )        // cf. 여기선사실 연산자쪽에 사실 괄호없어도되지만 
                                        //     강사님은 쓰시는 편이라고..헷갈려서...
                                       
if x == y {
    //작업들 수행                   ---> True or False 중 결정된 후 아래로
}


// == , >, >=, <, <=, 
/  그리고생소해 보이는 이건
    x != y  (----> 만약 x,y가 같지 않다면 True를 반환함)

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<<불리언 논리 연산자 >>
//논리연산자? ---> True or False 값을 반환하도록 설계됨
//이러한 연산자들은 피연산자로 불리언값을 받고 그리고 불리언 결과를 반환함

/1) NOT (!)
var flag: Bool = true --->//변수는 true로하고
var secondFlag: Bool = !flag    ---->//secondFlag에서는 'false'로 저장이되버린다
/즉, 단순히 변수앞에 '!문자'를 두어 
     불리언변수의 현재값이나 표현식의 결과를 '반전'시켜버림


/2) AND (&&)


/3) OR (||)
/or(||)는 2개의 피연산자 중 하나가 true ---> true 반환
          2개의 피연산자 중 어느것도 true(x) ---> false 반환
          //   T   T   ----> T
          //   T   F   ----> T
          //   F   F   ----> F
if (10 < 20) || (20 < 10) {
    print("this is ture")
}                       //----> true
if (10 < 20) && (20 < 10) {
    print("this is ture")
}                       //----> false


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< 범위 연산자 >>
//말그래도 값이 '범위를 선언'할 수 있도록 하는 연산자
//주로 프로그램에서 '' 반.복.작.업''수행시 중요함

1)closed range operator 닫힌범위 연산자
// x...y ('x범위'로부터 시작해 'y범위'로 끝이나는 ... ''범위'')
2)half-open range operator 반열린범위 연산자
// x..<y ('x범위'로 시작하여 'y'까지이지만 정작 'y자체는 포함(x)' )
3)one-sided range operator 단방향범위 연산자
//직접 작성할 확률이 1만분의1 정도로 흔치않다고함 ㅋㅋ
// x...    (이처럼 범위선언부의 '한쪽부분생략')
// y...
// 2...   (만약 문자열일 경우엔 세번째 문자로부터 시작해 마지막 문자까지)

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< 삼항 연산자 ternary operator>>       //cf.ternary (삼원형의)

/ 동작방식은 ? true or false를 반환하는 표현식을
                '조건문의 위치에'두는 것  /
/* 만약 결과가 true ---> '참'인 경우의 표현식이 수행                
               false ---> '거짓'인 경우의 표현식이 수행
/@ 사실 '왠만하면 if문을 써서 쭉~길게쓸걸 쏙~ 간단하게 만들어줄게!' 
     이런개념인데 그러나 'if문의 요행'같은 느낌이기에
        초반 개념을 익히는 개발자에겐 사용하길 권장하지 않는다는 강사님의 조언 */
let x = 10
let y = 20

print("largest number is \(x>y ? x:y)")  --->//largest number is 20 출력
                                                // x > y뒤는 바로 '조건문의 위치'인데 
                                                // 그곳에 T or F를 반환하는 표현식이 온 경우다
                                             // x > y  :Bool
                                             // ? x : y 
                                             //  (T) (F)
                                             //추라고 x,y들의 띄어쓰기 상관없지만 
                                             //'?' 이것만은 y뒤에서한칸 띄고 써야지 출력됨
    
                                                                             
                                                                             
                                                                   my ppt ~ 154page

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
my ppt 155 ~  page ====> Open Source 관련 내용
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
my ppt 161 ~ 182 ===> 제어흐름 관련 내용
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

<< 스위프트의 제어흐름control flow >>

/제어 흐름이란??? 대부분의 프로그래밍기술은 '하나이상의 조건을 기반으로 결정해가는 코드를 작성하는것'!
/* 즉, 어떤 코드를 실행할까?
       몇 번을 수행할까?
       이런방식으로 프로그램의 '흐름을 통제'하는것을 ''제어흐름control flow''이라한다 */
// 앞서 언급한대로
/ 어떤 코드를 실행할까?   ----> 조건부제어흐름 conditional flow control
/     몇 번을 수행할까? ----> 반복제어 looping control
//위의 2가지로 제어흐름control flow는 주로 나뉜다

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ



<< 반복제어 흐름 looping control >>



[1] for - in 반복문

//배열,딕셔너리와 같은 '컬렉션'을 가지고 작업할때 유용함
 for 상수명 in 컬렉션 또는 범위 {   //--->컬렉션 or 범위 : 문자열들의 배열, 범위연산자, 문자열자체 등등
        //실행될 코드               //--->상수명 : 이러한 컬렉션이나 범위들의 ''' *현재* '''값을 담게될 상수 
}                                                                         //현재? (컬렉션에서 현재 '적용'시키고있는 현재)
/즉, for문의 루틴이 돌때마다 'let 상수명 = 컬렉션 값'이 반복되어 새로 선언됨


var integers = [1, 2, 3]        //Array -----------------> < 컬렉션collection >
for integer in integers {
    print(integer)
}                           //---> 당연히 1/ 2/ 3 출력
//여기에 
let people = ["park": 10, "kim":20, "lee": 30]    //Dictionary -----> < 컬렉션collection >
for (name, age) in people {                          //Dictionary의 itemdms 'key와 value'로 구성된 ''튜플타입''
    print("\(name): \(age)")
}

//추가적으로
//상수명을 반드시 선언하지않고 '_ 언더바'로도 대체 가능(O)
//---> 현재 항목에대한 참조체가 for반복문 안에서 필요치 않을경우...
            var count = 0
            for _ in 1...5 {
                //현재 값에 대한 참조체가 필요(X) 
               count +=1
            }  

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
[2] while 반복문

// for----> 몇번반복해야하는지 알.고.있.을.때 유용함
/while 반복문 ---> 조건충족을 위해 몇번 반복해야하는지 
                   알 수 없는 경우 유용함, 만족할 때까지 반복
//*표현식*                   
        while 조건문 {                  --->조건문(ture,false를 반환하는 표현식)
          //실행될 스위프트 구문        ---> (조건문이 true인 동안에만 실행될 코드)
        }

/* 시작과 끝도 굳이 따지지않고 '어떤조건'이 만족할떄까지 이므로
    굳이 while뒤에 이것저것 안쎃고 '조.건.문'만 딱 써있는거임 */

var myCount = 30
while myCount < 100 {           // 98...99. (end)
    myCount += 1                // 출력하면 100(99+1)            
}             //강사님의경운엔 myCount < (99 + 1) 
              //이런식으로 추가입력해서 연습하셨다고한다

var integers = [1, 2, 3] 
while integers.count > 1 {
    integers.removeLast()
}
print(integers).      //---> [1] 출력


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
[3] repetat - while 반복문

//참고 ) 원래는 swift 1.x버전에선 'do...while' 이었으나 대체됨
/repeat - while 반복문 ---> while반복문을 거꾸로 한 것
//*표현식*                              
        repeat {
          //실행될 스위프트 구문
        } while 조건문 {  }

var integers = [1, 2, 3] 
repeat{
  integers.removeLast()
} while integers.count > 0

print(integers)             ///---> 출력시 [ ]


/*위의 while구문같은경우엔 count가 1일경우 즉 intergers항목이
  removelast로 하나씩 지워지면서 [1]만 남았을경우 반복문안의 코드를
  더이상은 실행하지않는다
  //반면 아래의 repeat - while에서는 [1]하나만 남았을지라도 마지막에
    마지막까지 적어도 한번은 더 반복만을 실행하기에 출력시[ ] 나옴 */
    
이를 정리하자면,
while 반복문 ---> 반복문안의 코드를 실행하기 전에 표현식을 평가한다
repeat -while 반복문 ---> repeat엔 조건이 없다.그렇기에 반복문안의 코드가 
                          적어도 한 번은 실행되야하는 상황에 사용됨
                     --------> 쉽게말하면, 배열안의 항목들중에 특정 항목을 찾을떄까지
                               돌려보고싶으면 적어도 배열의 첫번쨰 항목까지는 검사를 해야할 떄 사용됨

[   while 조건문 {반복문}   ]               
[   repeat 반복문 while 조건문    ]      ------->@ 이정리가 맞는진 모르겠음@


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
[4] break구문 (반복문에서 탈출)

//어떤상황에서??  
                  반복문을 만듬. 그런데 조건에 만족해 종료되기전에
                  반복문을 빠져나와야하는경우가있다
                     // ---> ex)  무한반복의 경우 
                           //--->   ex)) 소개팅나갔다가 맘에 안들어 몰래 빠져나오고 싶을때
                  이렇게 빠져나오면 '다음(next)코드'로 이동하여 실행을 게속한다                
//만약 브레이크 구문이 없다면??
                  굉장히 손이 많이간다

var temp = 0
var index = 10

for _ in 0 ..< 100 {            // ..< 앞뒤로 숫자는 한칸씩 띄워야함
    temp += index               //(*계속헷갈림)---> 0 ..< 100 여기서는 0,1,2,3 숫자가아니다, @@@index 횟수이다.. 99번 더하는거다@@@@  
                                            // 0(temp) + 10(index) --> 10 + 10(index) --> 20 + 10 --> 30 + 10 --> 99번바복
    if temp > 100 {                 
        break                   //break가 없을경우 ---> 1000출력
    }                           //break가 있을경우 ---> 100출력
    print("temp = \(temp)")
}


for row in 0...5{
  if row>2{
    break
  }                             //break가 있을경우 --->
  print("\(row) > 2 is false")       // 0 > 2 is false
}                                    // 1 > 2 is false
                                     // 2 > 2 is false   이렇게 3개출력함
                                //break가 없을경우 --->
                                   //일단 예제의 형태가 print구문을보면 for구문안에는 있찌만, if구문 안쪽에 있는게 
                                   //아니기때문에 0...5 총 6개가 출력됨 "\(row) > 2 is false"이 형태로
                                      //  --> 만약 print가 if 구문 안에? 그러면 3,4,5 출력됨
                        /즉, 이 내용을 정리하자면... 
                         break를 통해 조건발동에 (횟수제안)이 걸린 셈    
//강사님의 tip
//일종의 패턴같이(ex for _ in ..같은 반복문뒤에 'if'문이 나왔다??
      --->'' 뿌레이크break(등장가능성)''


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
[5] continue구문 (다음번 반복문 처리로 건너뛰기)

//반복문의 나머지코드를 건너띄고 
//해당 반복문의 '처.음.으.로' 돌아가게함

var index = 1
while index < 20 {
  index += 1

  if(index%2) != 0 {            //continuee 있을 경우 --->
    continue                           //짝수만 출력됨 19까지
  }                             //continuee 없을 경우 --->
  print("index = \(index)")            // 2 ~ 20 까지 출력됨
}


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ



<< 조건부제어흐름 conditional flow control >>



[1] if 구문 사용하기 
/*  swift에서의 if구문 특이점은, 
if구문안의 실행될 코드가 한 줄이라해도 ''중괄호{..}가 필수''이다 */
//(강사님의 짐작으로는 어떤곳은 쓰이고 어떤곳은 안쓰여서 헷갈릴 수 있기에
//                            swift에서 이렇게 강제로 한건 아닐까란 의견)

//*표현식*
[1] if 조건식 {
    //조건식이 'Ture'일 때 실행될 스위프트구문
}                  


[2] if ... else ... 구문 사용하기 ((변형된 if 구문))

if 조건식1 {
    //조건식1이 'Ture'일 때 실행될 스위프트구문
}  else  {
    //조건식1이 'False'일 때 실행될 스위프트구문
}


[3] if ... else if ... 구문 사용하기 ((더 변형된 if 구문))

if 조건식1 {
    //조건식1이 'Ture'일 때 실행될 스위프트구문
}  else if 조건식2 {
    //조건식2이 'Ture'일 때 실행될 스위프트구문
}   else if 조건식3 {
    //조건식3이 'Ture'일 때 실행될 스위프트구문
}

//  else { ~~~~~ }   <---이렇게 마지막에하나 더넣고  하는 유형도있음
                                //아래가 그 예시
let someInteger = 100

if someInteger < 100 {
     print("100미만")
 }  else if someInteger > 100 {
     print("100초과")
 }  else {
     print("100")           //---> 100 출력
 }


그런데 만약 조건이 수없이 많아서
if조건들이 지저분하게 늘어진다면???
그래서 나온게 아래의 guard구문 

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


[4]  guard 구문 

//스위프트에만 있다
/ guard도 if처럼 '불리언표현식'을 포함하고 
  true일 경우에만 guard다음에 위치한 코드가 실행된다
/ guard 구문운 불리언표현식이 
         ---> false일경우 이에 수행될 'else'절이 ''반드시필요''
             --->그리고 이런 'else'절은 반드시 코드흐름을 빠져나가는
                  (return, break, continue, thorw...)구문등을 포함함
//이러한 guard는 주로 특정한 조건을 만족하지 않은경우라도
//       현재의 함수 or 반복문에서 빠져나갈 수 있게 해줄떄 이용됨

//*표현식*
guard 조건문(불리언표현식)else {
    //조건문이 false일 때 실행될 스위프트 구문
    < 종료구문 >
}
    //조건문이 true일 때 실행될 스위프트 구문

/(*Tip/ / / guard는 어차피 필수로 else동반하기에...; ' guard..else' 로 익혀두기를)

func solution() {
	if condition1 {
    	if condition2 {
        	if condition 3 {
            	print("come in")
			} else {
            	print("bye")
			}
		} else {
        	print("bye")
		}
	} else {
    	print("bye")
	}
}    /// --> 세 조건이 모두 참이면 come in, 
      //     하나라도 거짓이면 bye를 출력하는 함수
             //(*출처블로그 didu-story.tistory.com)
             
// 위의 코드를 guard를 사용해서 바꿀 경우
func solution() {
	guard condition1 else { return print("bye") }
    guard condition2 else { return print("bye") }
    guard condition3 else { return print("bye") }
    print("come in")
}
/이렇게 정리될 수 있었떤 이유는 기본으로 돌아가서
  guard란건 'true'일 경우에만 구문다음위치의 코드가 실행되기 때문이다
/*이게 만약 회원가입하는 코드였으면
  condition1에서 회원이름 (영어입력필수조건, false면 다음으로 못넘어감)
  condition2에서 생년월일 (1990년생 이후만 가입가능, false면 다음으로 못넘어감)
  condition3에서  비밀번호 (10자리까지만 입력가능, false면 다음으로 못넘어감)
  그리고 위의 세조건이 """모두""" true이면 그 다음구문인 실행 print("회원가입축하")
  실행되게 하면된다 */   ((주로 대형프로젝트에 많이쓰인다는 guard구문))

//추가로 '옵셔널바인딩 guard let'에관한 예제 코드도 하나 봐두자
func multiplyByTen(vlaue: Int?) {
    guard let number = value, number < 10 else{
        print("Number is too high")
        return
    }
    let result = number * 10
    print(result)
}



//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


[5-1]  switch 구문

//스위치를 껏다켯다하는 느낌보다는
/'이쪽도끼가 니도끼냐 요쪽도끼가 니도끼냐?'이런느낌
/즉, 다른언어들 같으면 중간에'break'같은걸 걸겠지만
/얜 그런거 없이 case들중에 '하나라도 걸리면 알아서 끊고 넘어'간다
//if ...else if ...구문이 2,3개이상의 조건을 만들 경우 대안이 될 수 있다

switch 표현식{          --------> ////( @@@ 주의!! ) 할것은 '표현식'과 
    case 일치하는 값1:             //'일치하는값'의 type이 서로같아야함               
        //실행할 코드구문               
    case 일치하는 값2:
        //실행할 코드구문
    case 일치하는 값3, 일치하는 값4:            ----> ||
        //실행할 코드구문
    default             -------->// 표현식과 일치하는 case구문이 없을때수행
        //코드구문
}


let value = 5
switch (value) {
    case 0:
        print("zero")           //tip (중괄호는 필수이나 소괄호는 선택사항)
    case 1:                     // case0 (x), case 0 (o)
        print("one")
    case 2:
        print("two")   
    default:
        print("no number")
}                               //---> "no number"출력


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

[5-2]  switch - case 구문 결합하기

/* case구문은 자신만의 실행코드를 가지고있지만...
   가끔은 서로다른 case들끼리 동일한 실행코드를 가질수도 있다
   그럴땐 그런것들을 묶어주면된다 */
   
let value = 5
switch (value) {
    case 0,1:                   //--->*switch문에서 콤마(,)는 &&(X), ||(o)
        print("zero, one")           
 // case 1:                     
 // print("one")
    case 2:
        print("two")   
    default:
        print("no number")
}  

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

[5-3]  switch 구문 '범위매칭'

//그냥 간단히말해서 '일치하는값을 범위로 설정'해둔다는 것

let temperature = 83
switch (temperature) {
    case 0...49:
        print("cold")
    case 50...79:
        print("warm")
    case 80...110:
        print("hot")
    default:
        print("tempereature out of range")
        
}

//cf_ 이걸 if else구문으로 만들어보기를...얼마나차기가 큰지를 느낄것


//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

[5-4]  switch - where 구문 

//case구문에 부가적인 조건들을 추가하기위해 사용된다

let temperature = 50
switch (temperature) {
    case 0...49 where temperature % 2==0:
        print("cold and even(짝수)")
    case 50...79 where temperature % 2==0:
        print("warm and even(짝수)")
    case 80...110 where temperature % 2==0:
        print("hot and even(짝수)")
    default:
        print("tempereature out of range")
}

/*사실은 이 switch문 자체가 요기위에 사이사이에 원래라면
break를 걸어줘야하는데 그런번거로움을 없애기위해서 도입된거....
그..그런데...이걸또 반대로 생각해서...필요할떄도 있지않나??
하고 나온게 아래의 구문이다. */

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

[5-5]  switch - fallthrough 구문 

//fallthrough는 직역하면 '완료(실현)되지 못한'이란 의미
/*    기본적으로 switch case구문에선 다른언어들과는 달리
      case조건에 일치하면? ---->자동으로 구문밖으로 */
/그러나 fallthrough구문을 사용하면? ---> 해당case구문은 그냥 PASS      

let temperature = 50
switch (temperature) {
    case 0...49 where temperature % 2==0:
        print("cold and even(짝수)")
        fallthrough
    case 50...79 where temperature % 2==0:
        print("warm and even(짝수)")
        fallthrough
    case 80...110 where temperature % 2==0:
        print("hot and even(짝수)")
    default:
        print("tempereature out of range")
        //break (<---그냥 머라도아무것도 넣고싶을떈 print대신에 이걸넣은 강사님)
}                                             
                                 /* 근데 이것저것 출력해본결과
                                    10 ---> cold~,wanrm~,hot~처럼 fallthrough붙으면
                                    조건성립상관없이 일단print실행됨
                                    ....근데 hot은 왜된거지? */


                                                                my ppt ~ 183page
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ




