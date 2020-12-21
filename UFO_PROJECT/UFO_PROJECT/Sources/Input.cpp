#include "Input.h"

Vector2 Input::mouse = Vector2();
std::map<int, bool> Input::keyboard;

Input::Input() {
	keyboard.insert({ GLFW_KEY_W, false });
}

Input::~Input() {

}

void Input::Update() {
}

void Input::SetMouse(double xpos, double ypos) {
	mouse = Vector2(xpos, Screen::height - ypos);
}

void Input::PressKeyBoard(int type, int keyCode) {
	auto temp = keyboard[keyCode];

	if (type == GLFW_PRESS) {
		if (keyboard.count(keyCode) == 0) {
			// Ű ���� ����
		}
		else {
			// Ű ���� ����
			keyboard[keyCode] = true;
		}
	}
	if (type == GLFW_RELEASE) {

		if (keyboard.count(keyCode) == 0) {
			// Ű ���� ����
		}
		else {
			// Ű ���� ����
			keyboard[keyCode] = false;
		}
	}
}

bool Input::GetKeyDown(int keyCode) {
	return keyboard[keyCode];
}