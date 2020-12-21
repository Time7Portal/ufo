#pragma once
#include <GLFW/glfw3.h>
#include <unordered_map>


class InputManager
{
public:
	InputManager(GLFWwindow* window);
	~InputManager();

	// 이 키가 눌렸는가? 체크해서 반환하는 Getter
	bool Get_KeyPressedCheck(int keyID);

	//윈도우 사이즈가 변경되면 업데이트 받는 함수 추가 필요... (별로 좋은 방법은 아닌 것 같다)
	//void Update_Windowsize();

	// 마우스의 좌표 계산을 위한 상대적 위치 (-1 ~ 1 스케일) 계산 (템플릿으로 하나로 줄일 수 있을듯...)
	inline double Get_ReletiveMousePosX()
	{
		return ((((double)xMousePos / 600) * 2.0) - 1.0); // 마우스 위치를 창 내에서 상대적인 값으로 (-1 ~ +1) 재계산을 위함
	}
	inline double Get_ReletiveMousePosY()
	{
		return ((((double)yMousePos / 600) * 2.0) - 1.0); // 마우스 위치를 창 내에서 상대적인 값으로 (-1 ~ +1) 재계산을 위함
	}


private:
	// 윈도우 사이즈 관련
	int windowWidth, windowHeight;

	// 키보드 마우스 관련
	static std::unordered_map<unsigned int, bool> keyPressedMap; // 키가 눌렸는지 플래그 저장용
	static double xMousePos;
	static double yMousePos;


	// 키 이벤트를 처리하는 콜백 함수
	static void Key_Callback(GLFWwindow* window, int key, int scancode, int action, int mods);

	// 마우스 이벤트를 처리하는 콜백 함수
	static void Cursor_Callback(GLFWwindow* window, double xpos, double ypos);

};


