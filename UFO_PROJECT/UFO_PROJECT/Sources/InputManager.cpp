#include "InputManager.h"

// static ������� �ʱ�ȭ
std::unordered_map<unsigned int, bool> InputManager::keyPressedMap = {};
double InputManager::xMousePos = 0;
double InputManager::yMousePos = 0;


// ������
InputManager::InputManager(GLFWwindow* window)
{
    // Ű����� ���콺 �Է� ó���� ���� �ʱ� ����
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GLFW_TRUE);
    glfwSetKeyCallback(window, Key_Callback); // Ű���� �ݹ��Լ�
    glfwSetCursorPosCallback(window, Cursor_Callback); // ���콺 �ݹ��Լ�

    // �ʱ� ������ ������ �ޱ�
    glfwGetWindowSize(window, &windowWidth, &windowHeight);
}


// �Ҹ���
InputManager::~InputManager()
{
}


// �� Ű�� ���ȴ°�? üũ�ؼ� ��ȯ�ϴ� Getter
bool InputManager::Get_KeyPressedCheck(int keyID)
{
    if (keyPressedMap[keyID] == GLFW_TRUE)
    {
        return true;
    }

    return false;
}


// Ű �̺�Ʈ�� ó���ϴ� �ݹ� �Լ�
void InputManager::Key_Callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    if (action == GLFW_PRESS) // Ű�� ������
    {
        keyPressedMap[key] = GLFW_TRUE;
    }
    else if (action == GLFW_RELEASE) // Ű�� ����
    {
        keyPressedMap[key] = GLFW_FALSE;
    }
}


// ���콺 �̺�Ʈ�� ó���ϴ� �ݹ� �Լ�
void InputManager::Cursor_Callback(GLFWwindow* window, double xpos, double ypos)
{
    xMousePos = xpos;
    yMousePos = ypos;
}

