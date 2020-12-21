<<<<<<< HEAD
#define PI 3.14159
#define WINDOW_SIZE 600


#include <iostream>
#include <cstdlib>
#include <ctime>
#include <chrono>
#include <unordered_map>
#include <GLFW/glfw3.h>
#include <windows.h>
#include "InputManager.h"



// ���� ĳ������ ��ġ, ũ�� �����
double xPosCharacter = 0;
double yPosCharacter = 0;
double sizeC = 1;
=======
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
>>>>>>> 1a4cd7823d8d660c76cafc6862702373118a2857


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
<<<<<<< HEAD
    window = glfwCreateWindow(WINDOW_SIZE, WINDOW_SIZE, "Hello World", NULL, NULL);
=======
    window = glfwCreateWindow(width, height, "Hello World", NULL, NULL);
>>>>>>> 1a4cd7823d8d660c76cafc6862702373118a2857
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

    // FPS ���� ����
    duration<double> sec;
    double time = 0;

    starship.radius = 0.05f;
    starship.speed = 0.005f;



    // Ű����� ���콺 ó���� ���� ��ü ����
    InputManager inputManager(window);



    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
<<<<<<< HEAD
        // ����Ƽ������ delta time ���ϱ� (���� ���������κ����� �Ⱓ)
        std::chrono::time_point<std::chrono::system_clock> now = std::chrono::system_clock::now();
        auto duration = now.time_since_epoch();
        auto millis = std::chrono::duration_cast<std::chrono::milliseconds>(duration).count();
        //std::cout << millis << std::endl;


        // Ű �Է¿� ���� �̵�
        if (inputManager.Get_KeyPressedCheck(GLFW_KEY_D) == TRUE)
        {
            xPosCharacter += 0.05;
        }
        if (inputManager.Get_KeyPressedCheck(GLFW_KEY_A) == TRUE)
        {
            xPosCharacter -= 0.05;
        }
        if (inputManager.Get_KeyPressedCheck(GLFW_KEY_W) == TRUE)
        {
            yPosCharacter += 0.05;
        }
        if (inputManager.Get_KeyPressedCheck(GLFW_KEY_S) == TRUE)
        {
            yPosCharacter -= 0.05;
        }
        if (inputManager.Get_KeyPressedCheck(GLFW_KEY_E) == TRUE)
        {
            sizeC += 0.03;
        }
        if (inputManager.Get_KeyPressedCheck(GLFW_KEY_Q) == TRUE)
        {
            sizeC -= 0.03;
        }

        // ���콺 ��ġ ��� (�׽�Ʈ)
        //std::cout << inputManager.Get_ReletiveMousePosX() << " / " << inputManager.Get_ReletiveMousePosY() << std::endl;


        // ȸ�� �ӵ� (���� �������� ����)
        long long speed = 10.0;
        long long ticktock = millis / speed;
=======
        system_clock::time_point start = system_clock::now();
        auto millisecond = duration_cast<milliseconds>(sec);
>>>>>>> 1a4cd7823d8d660c76cafc6862702373118a2857

        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

<<<<<<< HEAD

        // �ﰢ�� �׸���
        glBegin(GL_TRIANGLES);      // Drawing Using Triangles
        static double cost;         cost = cos(ticktock * PI / 180);
        static double sint;         sint = sin(ticktock * PI / 180);

        glVertex3f( (-sizeC * sint) + xPosCharacter,                    (+sizeC * cost) + yPosCharacter,                    0.0 ); // Top
        glVertex3f( (-sizeC * cost + sizeC * sint) + xPosCharacter,     (-sizeC * sint - sizeC * cost) + yPosCharacter,     0.0 ); // Bottom Left
        glVertex3f( (sizeC * cost + sizeC * sint) + xPosCharacter,      (sizeC * sint - sizeC * cost) + yPosCharacter,      0.0 ); // Bottom Right





=======
        starship.Update();
>>>>>>> 1a4cd7823d8d660c76cafc6862702373118a2857

        // Finished Drawing The Triangle
        glEnd();

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


