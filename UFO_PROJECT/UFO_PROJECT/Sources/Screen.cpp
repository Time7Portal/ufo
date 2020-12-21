#include "Screen.h"

int Screen::width = 0;
int Screen::height = 0;

Screen::Screen(int _width, int _height) {
	width = _width;
	height = _height;
}

Screen::~Screen() {

}

void Screen::SetScreen(int _width, int _height) {
	width = _width;
	height = _height;
}