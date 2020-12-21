#pragma once

#include <map>
#include <GLFW/glfw3.h>

#include "Object.h"
#include "Vector2.h"
#include "Screen.h"

class Input : public Object
{
public:
	static Vector2 mouse;
	static std::map<int, bool> keyboard;
	//static Input* instance;

public:
	Input();
	~Input();

	//static Input& instance() {
	//	// 게으른 초기화 
	//	if(instance == NULL) {
	//		instance = new Input();
	//	} 
	//	
	//	return *instance;
	//}

	void Update() override;

	static void SetMouse(double xpos, double ypos);
	static void PressKeyBoard(int type, int keyCode);
	static bool GetKeyDown(int keyCode);
};