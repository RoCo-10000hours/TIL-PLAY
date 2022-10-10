#import <Foundation/Foundation.h>

//-------------------------------------------------------------
//-------------------------------------------------------------
                  10.6(목) / 4주차 (목요일)
                                 my ppt(10월-1주) 1 ~ 164page
//                      1 ~ 4교시 
//-------------------------------------------------------------
//-------------------------------------------------------------
// <<Objective-C 둘러보는 시간>>
/* 
옵젝C에서 자주 등장하는 NS란
Next Step 줄임말....스티브잡스가 창업했던 회사이름
여튼 NS를 넣은 이유는 NSobject의 상속을 받아서
만들어 졌기 때문이다
*/

//-------------------------------------------------------------

/*내가 항상 swift할때 맨위에 적던 import Foundation
이런걸 '기초프레임워크'를 불러온다고한다
자주 사용되는 클래스등을 뭉탱이로 뭉쳐 미리 모아둔것이다
그걸 import로 불러왔던것이다 */

//-------------------------------------------------------------

//실제 코드를 보면서 설명해보면
@interface SampleClass:NSObject
- (void)sampleMethod;                //메소드를 선언하는 방법을 보여준다
@end

@implementation SampleClass           //인터페이스 SampleClass를 구현
- (void)sampleMethod {                //sampleMethod의 구현
    NSLog(@"hello, World! \n");             //출력
} 
@end

int main() {                            // 프로그램 실행시작되는 주.요.함.수
    SampleClass *sampleClass = [[SampleClass alloc]init];       //*** alloc --> '할당하다allocate'의 줄임말
                                                                            //새로운클래스에 메모리를 할당하는것
                                                                            //클래스에 alloc메세지를 보내면, 그 클래스의 새로운 인스턴스를 받는다.
                                                                        //해당 메서드는 객체의 모든 인스턴스 변수를 '0'으로 초기화하는데,
                                                                        //그러나..이것만으론 초기화됬다할수없기에 'init'도 같이사용되는것
                                                            // ClassA* a = [ClassA alloc];  형태와  a = [a init] 형태가 합쳐져
                                                            // ClassA* a = [[ClassA alloc] init]; 되는것이고
                                                            // 해당 코드는 새 ClassA 객체를 생성하고 그 후 초기화함. 그리고..
                                                            // 초기화한 결과가 a 변수에 할당됨.
    [sampleClass sampleMethod];       //sampleClass.sampleMethod() '(feat.swift버전)'
    return 0;                         //메인함수종료.0값반환
}

                                        //void--->The type void (타입무효) 
                                                 //   : 사용할 수 있는 값이 없음을 나타냄

/* 
interface SampleClass:NSObject ---> 
인터페이스를 만드는 방법을 보여준다.
모든 객체의 기본클래스인 NSObject를 상속한다    

1) - (void)sampleMethod; -----> 메소드를 선언하는 방법을 보여준다
                                (즉, 메서드의 이름을 정하는 부분)
2)   @end                ------> 인터페이스의 끝을 표시
3)   @implementation SampleClass ---->인터페이스 SampleClass를 구현하는 
                                      방법을 보여준다
4) - (void)sampleMethod { }     ------> sampleMethod의 구현을 보여준다
5)    NSLog(@"hello, World! \n")     ---> 프린트를 위해 NSLog를 찍고
6)    @end.               -------> 구현의 끝을 표시
7)   int main() { }       ----> 프로그램 실행시작되는 주.요.함.수
8)   return 0;            ------> main() 함수를 종료하고 값 0을 반환.    */

//-------------------------------------------------------------

**스위프트는 위에서부터 쭉내려오지만.. 옵젝은 그렇지않다
실제로 코드 작성할 떄도 강사님은 전처리 맨위 한다음 바로 내려와서 메인부터 함수 만드심
** @end로 묶인 기준으로 --------> 맨위 : '선언부'
                                  중간 : '구현부'
                                  
/ 추가tip____>>> [sampleClass sampleMethod]; 부분을 swift로 바꾸면?
                  sampleClass.sampleMethod() 가 된다 
                  
//-------------------------------------------------------------

/*스위프트는 위에서부터 쭉내려오지만.. 옵젝은 그렇지않다....
이말의 이미를 다시 생각해보자면 
코딩 하셨떤 순서가 '전처리기명령' ---> 메인함수 열어주고 그안에 return 0; 만 넣고
        -=->  선언부 코딩(메서드선언)  ---> 구현부 코딩(인터페이스와 매서드 구현)
                ---> 출력코딩  -------> 그 후에 처음에 만들어둔 주요함수로와서 그곳에 
                                        샘플클래스를 가져옴....맞나??? 선언부부터인지 구현먼저인지...
                                        
 */ 일단은 큰 틀만 잡자...               
  alloc , void, 이런건 일단 제쳐두고
                    
//-------------------------------------------------------------

((목차별 간당 정리))
  -예약어(Keywords)
  
  -[ 데이터 타입 (basic, 열거, void, 파생(포인터,배열, ...)) ]
  
  -정수타입(Integer type)
    
  -타입별 차지하는 바이트크기는?
    -----> < sizoeof > 를 활용한다!!!!!
   
   int main(){
       NSLog(@"Storage size for int : %d\n", sizeof(int));
       return 0;
       
   }                 //출력값 : Storage size for int : 4
   
   -부동소수점 타입
   -void타입 1) return값이 없을때 사용됨
             2) 공백값이 나타날떄.. int rad(void)
                        ---->그러나 실제론 () 이렇게 더 많이 쓰임
                        
    -변수선언 (Variable Declaration)
    
    - extern (아직 정확한이해는 힘들지만, 다른곳에서 선언된 변수를 가져올 수 있음)                                    
    
    -상수(리터럴literal)                                   
    
    -정수리터럴 (대표적인 C언어 상수)
    
    -문자상수( \\ ---> \ , \' ---> '. \""--->""
                \n ---> 줄바꿈 , \t ---> 탭    )
                
    -문자열 리터럴(String Literal)
       *) 'h' char리터럴, "hello" 문자열리터럴, 
           @"hello" NSString 

//-------------------------------------------------------------
     
 -상수 정의하는 2가지 방법          
   1) #define 전처리기                                    
     형태--> #define identifier value.  //(identifier = 식별자)
            #define Length 10
            #define WIDTH 5    
   2) const 키워드
     형태--> const type Variable = value;
             const int Length = 10;
             const int WIDTH = 5;                          
                                        
//              그런데 상수명을...왜 다르 대문자로??
                        // 그게 국룰입니다 (in C언어계열)
 int main() {
   const int  LENGTH = 10;
   const int  WIDTH  = 5;
   const char NEWLINE = '\n';
   int area;  
   
   area = LENGTH * WIDTH;
   NSLog(@"value of area : %d", area);
   NSLog(@"%c", NEWLINE);

   return 0;
}


//-------------------------------------------------------------
//-------------------------------------------------------------
//                   
//                      5 ~ 8 교시 
//-------------------------------------------------------------
//-------------------------------------------------------------                         

    <<연산자 Operator>>
    
-연산자는---> 컴파일러에게 수학/논리적 조작 수행 지시                          
-산술연산자 (중에 ++ 정수값을 1만큼증가시키는)
                ((--->스위프트라면 +=1 이거와 같다))
-관계연산자 (중에 !=  양옆숫자들의 값이 같은지 확인)                
-논리연산자 (중에 ! 는 논리NOT 연산자라고도 한다)
-비트연산자                           
-할당연산자 (중에 = 는 'C = A + B'일경우 오른쪽합의값을 왼쪽에 할당)                           
- sizeof()
-삼항연산자 (1) & 변수의 주소를 반환
            (2) * 변수에대한 포인터!!(변수를 가리킬것임)
            (3) ?: 조건식
            ------> 이중에서(1),(2)는 Pointer 불러왔던것이다
            
//-------------------------------------------------------------  

     <<반복문 Loops>>

-while
-for
-do...while ( 스위프트로 따지면 reapeat ... while )
-중첩반복

-여러조건문들의 사용과 구구단 출력 예제

1)

int main ()
{
   char grade = 'B';
   
  switch(grade) {
    case 'A':
        NSLog(@"참 잘했어요!");
        break;
    case 'B':
        NSLog(@"적당히 하셨네요~");
        break;
    case 'C':
        NSLog(@"섭섭합니다.");
        break;
    case 'D':
        NSLog(@"재수강을 꿈꾸는가");
        break;
    case 'F':
        NSLog(@"사람이 아닙니다");
        break;
    default:
        NSLog(@"자퇴는 지능순");    
        break;
  }
   
   NSLog(@"학점은 %c", grade);
   
   return 0;
}


2)

int main ()
{
    int a = 10;
    int i, j;
    
    while( a < 20 ) {
        NSLog(@"whlie : value of a: %d\n", a);
        a++;
    }
    
    for( a = 10; a < 20 ; a += 1) {
        NSLog(@"for : value of a: %d\n", a);
    }
    
    a = 10;
    do {
        NSLog(@"do-while : value of a: %d\n", a);
        a++;
    } while( a < 20 );
    
    for( i = 1; i < 10 ; i += 1) {
        for( j = 1; j < 10 ; j += 1) {    
            NSLog(@"%d x %d = %d", i, j, (i * j));
        }
    }

    return 0;
}


//-------------------------------------------------------------  

     <<반복문의 제어문 Loop Control Statements>>

-break : 반복/스위치문 즉시 종류후 다음 차례 명령어실행 
-continue : 반복문이 본문의 나머지 부분을 건너뛰고 반복하기 전에
            즉시 조건을 다시 테스트하도록함
            
int main ()
{
    int a = 10;
    
    while( a < 20) {
        NSLog(@"value of a: %d\n", a);
        a++;
        
        if (a > 15) {
            break;
        }
    }

    a = 10;
    
    do {
        if( a == 15 ) {
            a = a + 1;
            continue;
        }
        NSLog(@"value of a: %d\n", a);
        a++;
    }while( a < 20 );

    return 0;
}

//-------------------------------------------------------------  

     <<무한반복 The infinite Loop>>
     
간단하게 Objective-C에서는 조건식이 없으면 참으로 간주되어
무한한 루프를 돌게 된다 (조건이 거짓이 되지 않기때문에...)

int main() {
    for(;;){            //--->조건이 없음 
        NSLog~~~bulboolbula
    }
    return 0;
}                       //--> 띠리사 무한루프
     
     
//-------------------------------------------------------------
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

그밖의 추가 기록정리들

회고조원이신 
'박x현'님의 조언
->Swift에서는 옵셔널만으로 nil을 통해 초기화할 수 있지만
Objective-C에서는 옵셔널 없이 NULL과 같이 초기화 될 수 있음.
여기서 NULL이 Swift의 nil과 같은 용도라고 이해하면 된다고 강사님께 말씀하심.
Objective-C에서는 변수를 이런식으로 선언하는구나 정도로 이해하면 좋을 것 같다는 조언

'원x영'님의 조언
\n은 개행문자라고 해서 저게 실제로 콘솔에 출력되지는 않고,
줄바꿈을 해주는 기능이 있음
저희 메모장에서 엔터치듯이
엔터칠때 실제로 \n이 동작함
다만, 스위프트에선 print에 이 명령어가 숨어있었기에 
우리는 모르고 있었을뿐임

'박x우'님의 조언
var d : Int = 3  ---->//스위프트
int d = 3         ---->//옵젝C
