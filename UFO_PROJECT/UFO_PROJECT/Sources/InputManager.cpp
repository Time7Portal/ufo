#include "InputManager.h"

// static 멤버변수 초기화
std::unordered_map<unsigned int, bool> InputManager::keyPressedMap = {};
double InputManager::xMousePos = 0;
double InputManager::yMousePos = 0;


// 생성자
InputManager::InputManager(GLFWwindow* window)
{
    // 키보드와 마우스 입력 처리를 위한 초기 셋팅
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GLFW_TRUE);
    glfwSetKeyCallback(window, Key_Callback); // 키보드 콜백함수
    glfwSetCursorPosCallback(window, Cursor_Callback); // 마우스 콜백함수

    // 초기 윈도우 사이즈 받기
    glfwGetWindowSize(window, &windowWidth, &windowHeight);
}


// 소멸자
InputManager::~InputManager()
{
}


// 이 키가 눌렸는가? 체크해서 반환하는 Getter
bool InputManager::Get_KeyPressedCheck(int keyID)
{
    if (keyPressedMap[keyID] == GLFW_TRUE)
    {
        return true;
    }

    return false;
}


// 키 이벤트를 처리하는 콜백 함수
void InputManager::Key_Callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action == GLFW_PRESS) // 키를 눌렀음
    {
        keyPressedMap[key] = GLFW_TRUE;
    }
    else if (action == GLFW_RELEASE) // 키를 땠음
    {
        keyPressedMap[key] = GLFW_FALSE;
    }
}


// 마우스 이벤트를 처리하는 콜백 함수
void InputManager::Cursor_Callback(GLFWwindow* window, double xpos, double ypos)
{
    xMousePos = xpos;
    yMousePos = ypos;
}

