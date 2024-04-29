// SPDX-License-Identifier: GPL-3.0

// https://www.codestates.com/blog/content/%EC%86%94%EB%A6%AC%EB%94%94%ED%8B%B0-%EB%AC%B8%EB%B2%95%EA%B3%BC-%EC%98%88%EC%A0%9C-2

pragma solidity >= 0.7.0 < 0.9.0;

/*
함수 접근자 종류
public : 외부, 내부 어디서든 접근이 가능합니다.
external : 선언된 컨트랙트 외부에서만 접근이 가능합니다.
private : 오직 선언된 컨트랙트 내부에서만 접근이 가능합니다.
internal : 선언된 컨트랙트 내부와 이를 상속 받은 컨트랙트 내부에서 접근이 가능합니다.
*/

contract Ex1 {
    function plusNum(uint a, uint b) public pure returns(uint){
        return a+b;
        // 기본 함수 선언
    }
}

/*
메모리 종류

스토리지(Storage)
데이터가 영구적으로 저장되는 공간입니다. 

메모리(Memory)
단기적으로만 데이터를 저장하는 공간입니다.

콜데이터(Calldata)
트랜잭션 또는 call함수의 매개변수가 유지되는 읽기 전용 공간입니다.

스택(Stack)
이더리움 가상 머신에서 휘발성을 가진 데이터를 유지 및 관리하는 공간입니다.
*/

contract Ex2{
    function getValue(uint a) public pure returns(uint){
        return a;
    }

    function getReference(string memory a) public pure returns(string memory){
        return a;
    }
}

/*
모디파이어
(아래 두 가지 경우 모두에 해당하지 않는 경우에는 생략 가능합니다.)

pure
함수 밖에 선언된 변수를 함수 내부로 가져오지 못하게 하는 키워드입니다. 순수하게 함수 내부에서 정의된 변수나 전달받은 매개변수만 사용 가능합니다. 

view
함수 외부의 변수를 읽을 수 있으나, 값을 함수 내부에서는 변경할 수 없습니다.
*/

contract Ex3{
    string g = 'hello solidity';

    uint a = 1+2;
    uint b = 2-1;
    uint c = 3*2;
    uint d = 5/5;
    uint e = 5 % 2;
    uint f = 2 ** 2;

    function getResult() public view returns(uint,uint,uint,uint,uint,uint){
        return (a,b,c,d,e,f);
    }
}

/*
// getResult
0:
uint256: 3
1:
uint256: 1
2:
uint256: 6
3:
uint256: 1
4:
uint256: 1
5:
uint256: 4
*/

contract Ex4{

    uint a = 10;
    uint b = 10;
    uint c = 10;
    uint d = 10;
    uint e = 10;

    function getResult() public returns(uint,uint,uint,uint,uint){
        a += 2;
        b -= 2;
        c *= 2;
        d /= 2;
        e %= 2;
        return(a,b,c,d,e);
    }

}

/*
	"0": "uint256: 12",
	"1": "uint256: 8",
	"2": "uint256: 20",
	"3": "uint256: 5",
	"4": "uint256: 0"
*/

contract Ex5{

    bool a = 1 > 3;
    bool b = 1 < 3;
    bool c = 10 >= 2;
    bool d = 3 <= 3;
    bool e = 1 == 2;
    bool f = 1 != 2;

    function getResult() public view returns(bool,bool,bool,bool,bool,bool) {
        return (a,b,c,d,e,f);
    }
}

/*
0:
bool: false
1:
bool: true
2:
bool: true
3:
bool: true
4:
bool: false
5:
bool: true
*/

contract Ex6{
    bool a = true && true;
    bool b = true && false;
    bool c = false && false;
    bool d = true || true;
    bool e = true || false;
    bool f = false || false;
    bool g = !false;

    function getResult() public view returns(bool,bool,bool,bool,bool,bool,bool) {
        return (a,b,c,e,d,f,g);
    }
}

/*
0:
bool: true
1:
bool: false
2:
bool: false
3:
bool: true
4:
bool: true
5:
bool: false
6:
bool: true
*/