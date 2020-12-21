#pragma once
#include <GLFW/glfw3.h>
#include <unordered_map>


class InputManager
{
public:
	InputManager(GLFWwindow* window);
	~InputManager();

	// �� Ű�� ���ȴ°�? üũ�ؼ� ��ȯ�ϴ� Getter
	bool Get_KeyPressedCheck(int keyID);

	//������ ����� ����Ǹ� ������Ʈ �޴� �Լ� �߰� �ʿ�... (���� ���� ����� �ƴ� �� ����)
	//void Update_Windowsize();

	// ���콺�� ��ǥ ����� ���� ����� ��ġ (-1 ~ 1 ������) ��� (���ø����� �ϳ��� ���� �� ������...)
	inline double Get_ReletiveMousePosX()
	{
		return ((((double)xMousePos / 600) * 2.0) - 1.0); // ���콺 ��ġ�� â ������ ������� ������ (-1 ~ +1) ������ ����
	}
	inline double Get_ReletiveMousePosY()
	{
		return ((((double)yMousePos / 600) * 2.0) - 1.0); // ���콺 ��ġ�� â ������ ������� ������ (-1 ~ +1) ������ ����
	}


private:
	// ������ ������ ����
	int windowWidth, windowHeight;

	// Ű���� ���콺 ����
	static std::unordered_map<unsigned int, bool> keyPressedMap; // Ű�� ���ȴ��� �÷��� �����
	static double xMousePos;
	static double yMousePos;


	// Ű �̺�Ʈ�� ó���ϴ� �ݹ� �Լ�
	static void Key_Callback(GLFWwindow* window, int key, int scancode, int action, int mods);

	// ���콺 �̺�Ʈ�� ó���ϴ� �ݹ� �Լ�
	static void Cursor_Callback(GLFWwindow* window, double xpos, double ypos);

};

