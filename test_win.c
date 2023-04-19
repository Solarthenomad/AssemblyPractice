#include <windows.h> //windows.h 헤더 파일 : 기본적인 데이터 타입, 함수 원형, 매크로 상수 : 윈도우에서 하나의 헤더 파일에 모든 api함수들의 원형과 상수들을 정의한다. 
#include <stdio.h>   //보조 헤더 파일 포함함

LRESULT CALLBACK	WndProc(HWND, UINT, WPARAM, LPARAM);
HINSTANCE g_hInst;
LPCTSTR lpszClass=TEXT("First"); //전역변수임 
//LRESULT, HINSTANCE, LPCTSTR : 선언하는 타입들임. 
//지금까지 헤더 타입들을 선언해놓음 



//윈도우 프로그래밍 소스 코드들 
//WinMain : main 함수임. 
int APIENTRY WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
                     LPSTR lpszCmdParam, int nCmdShow) //int main()의 파라미터들임. 우리는 이것들을 쓸 때 생략해서 사용하기 함 : int argc, char * argv[], char *env 를 윈도우식으로 바꿔써놓음
// lpszCmdParam : 롱포인트 스트링인데 null 캐릭터로 끝이난다...?
// LPSTR : 
{
  HWND hWnd; //HWND : 데이터타입, hWnd : 변수선언 h는 핸들러 -> hWnd: 윈도우 핸들러라는 의미
  MSG Message;
  WNDCLASS WndClass; //HWND, MSG, WndClass : 선언하는 타입들. MSG는 메세지를 받기 위한 타입, WndClass : 윈도우 상에서 연다는 의미의 타입

  g_hInst=hInstance;
  WndClass.cbClsExtra=0;
  WndClass.cbWndExtra=0;
  WndClass.hbrBackground=(HBRUSH)GetStockObject(WHITE_BRUSH);
  WndClass.hCursor=LoadCursor(NULL, IDC_ARROW);   //hCursor : 커서의 핸들러
  WndClass.hIcon=LoadIcon(NULL, IDI_APPLICATION);  //hIcon : 아이콘의 핸들러
  WndClass.hInstance=hInstance; //hInstance : 인스턴스의 핸들러
  WndClass.lpfnWndProc=WndProc;
  WndClass.lpszClassName=lpszClass;
  WndClass.lpszMenuName=NULL;
  WndClass.style=CS_HREDRAW | CS_VREDRAW;
  RegisterClass (&WndClass);

  hWnd=CreateWindow(lpszClass,lpszClass, WS_OVERLAPPEDWINDOW,
                    CW_USEDEFAULT,CW_USEDEFAULT,CW_USEDEFAULT,CW_USEDEFAULT,
                    NULL, (HMENU)NULL, hInstance, NULL);
  ShowWindow(hWnd,nCmdShow);

  while (GetMessage(&Message,NULL,0,0)) //무한 루프 문 
  {
    TranslateMessage(&Message);
    DispatchMessage(&Message);
  }

  return (int)Message.wParam;
}

LRESULT CALLBACK WndProc(HWND hWnd,UINT iMessage,WPARAM wParam,LPARAM lParam)  //CALLBACK WndProc은 운영체제가 호출해준다. --> 따로 선언을 앞에서 하지 않아도 됨 
{
  switch (iMessage) 
  {
    case WM_DESTROY :
      PostQuitMessage(0);
      return 0;
  }

  return ( DefWindowProc(hWnd, iMessage, wParam, lParam 
}

// WinMain, WndProc 이 두개의 함수로 소스코드가 구성되어 있다. 
