#pragma once

#include "Object.h"

class Screen : public Object
{
public:
	static int width;
	static int height;

public:
	Screen(int _width, int _height);
	~Screen();

	static void SetScreen(int _width, int _height);
};