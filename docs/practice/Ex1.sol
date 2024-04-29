// SPDX-License-Identifier: GPL-3.0

// https://www.codestates.com/blog/content/%EC%86%94%EB%A6%AC%EB%94%94%ED%8B%B0-%EB%AC%B8%EB%B2%95%EA%B3%BC-%EC%98%88%EC%A0%9C-1

pragma solidity >= 0.7.0 < 0.9.0;

contract Ex1 {

    mapping(address => uint) public myAddr;
    // mapping/(키 자료형 -> 값 자료형) / 가시성 지정자 / 매핑명

    function addM(address _key, uint _val) public {
        myAddr[_key] = _val;
    }
        function getM(address _key) public view returns(uint) {
            return myAddr[_key];
        }

        function deleteM(address _key) public {
            delete(myAddr[_key]);
            //delete 키워드 선언
            }

        function deleteM2(address _key) public{
            myAddr[_key] = 0;
                // mapping의 값이 unit 자료형일 때만 가능
        }

}

contract EX2{
    uint [] public arr  = [1,2,3];
    // 동적 배열 (실행 시간에 크기가 결정)

    string [10] public arr2 = ['block','chain','solidity','ethereum'];
    // 정적 배열 (선언 시 크기가 결정)
    // 정해진 크기를 늘리거나 줄일 수 없다.
    // 4개의 값이 저장된 상태, 나머지 인덱스는 공백

    function getArrleng() public view returns(uint) {
        return arr.length;
    }

    function getArr2leng() public view returns(uint) {
        return arr2.length;
    }

    function getArr(uint _index) public view returns(uint) {
        return arr[_index];
    }

    function getArr2(uint _index) public view returns(string memory){
        return arr2[_index];
    }

    function plusArr(uint _value) public{
        arr.push(_value);
        // arr 배열에 컨트랙트로 하나씩 추가할 수 있는 함수
    }

    // function plusArr2(string memory _value) public {
    //     arr2.push(_value);
    // }
    // 요건 오류가 발생함
}
contract Ex3{
        uint[] public arr = [1,2,3];

        function getLeng() public view returns(uint) {
            return arr.length;
        }

        function removeArr() public {
            arr.pop();
            // 삭제 펑션
        }

        function deleteArr(uint _index) public {
            delete arr[_index];
            // index 삭제 펑션
        }
    }

