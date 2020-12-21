//#define PI 3.141592f
//#define RADIAN ( PI / 180.0f )
//#define DEGREE ( 180.0f / PI )
//#define RAD2DEG( Rad  ) ( Rad * DEGREE )
//#define DEG2RAD( Degree ) ( Degree * RADIAN )

#include <cmath>
#include <time.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <chrono>

#include "Vector2.h"
#include "Starship.h"
#include "Missile.h"
#include "Input.h"
#include "Screen.h"

using namespace std;
using namespace chrono;

static int width = 600;
static int height = 600;
//static Screen screen = Screen(width, height);
//static float horizontal = 0;
//static float vertical = 0;
//static Vector2 mousePosition = Vector2(0, 0);
//static Input input;


//static float speed = 0.01f;
//static float missileSpeed = 0.05f;

static Starship starship = Starship();
//Missile missile;
//Missile missiles[10];
//static int missileCount = 0;

static void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    /*switch (action) {
        case GLFW_PRESS:
            if (key == GLFW_KEY_A) {
                horizontal -= speed;
            }
            if (key == GLFW_KEY_S) {
                vertical -= speed;
            }
            if (key == GLFW_KEY_D) {
                horizontal += speed;
            }
            if (key == GLFW_KEY_W) {
                vertical += speed;
            }
            if (key == GLFW_KEY_SPACE) {
                if (missileCount >= 10) return;

                missile = Missile(starship.position, starship.degree, missileSpeed);
                missiles[missileCount] = missile;
                ++missileCount;
            }
            break;
        case GLFW_RELEASE:
            if (key == GLFW_KEY_A) {
                horizontal += speed;
            }
            if (key == GLFW_KEY_S) {
                vertical += speed;
            }
            if (key == GLFW_KEY_D) {
                horizontal -= speed;
            }
            if (key == GLFW_KEY_W) {
                vertical -= speed;
            }
        break;
    }*/

    Input::PressKeyBoard(action, key);
}

static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos)
{
    Input::SetMouse(xpos, ypos);
}

static void change_window_size_callback(GLFWwindow* window, int _width, int _height) {
    Screen::SetScreen(_width, _height);
}

int main(void)
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
    {
        return -1;
    }

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(width, height, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GLFW_TRUE);
    glfwSetKeyCallback(window, key_callback);
    glfwSetCursorPosCallback(window, cursor_position_callback);
    glfwSetWindowSizeCallback(window, change_window_size_callback);

    Screen::width = width;
    Screen::height = height;

    // FPS 관련 변수
    duration<double> sec;
    double time = 0;

    starship.radius = 0.05f;
    starship.speed = 0.005f;

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        system_clock::time_point start = system_clock::now();
        auto millisecond = duration_cast<milliseconds>(sec);

        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        starship.Update();


        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
        system_clock::time_point end = system_clock::now();

        sec = end - start;
        auto timeSpeed = 5.0f;
        time += sec.count() * timeSpeed;
    }

    glfwTerminate();
    return 0;
}