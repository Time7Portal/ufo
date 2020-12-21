#pragma once

#include <stdio.h>

class Object
{
private:
	
public:
	Object();
	~Object();

	virtual void Update();

	virtual void Render();
};