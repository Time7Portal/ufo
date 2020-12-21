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



int main(void)
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
    {
        return -1;
    }

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(WINDOW_SIZE, WINDOW_SIZE, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);



    // Ű����� ���콺 ó���� ���� ��ü ����
    InputManager inputManager(window);



    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
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

        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);


        // �ﰢ�� �׸���
        glBegin(GL_TRIANGLES);      // Drawing Using Triangles
        static double cost;         cost = cos(ticktock * PI / 180);
        static double sint;         sint = sin(ticktock * PI / 180);

        glVertex3f( (-sizeC * sint) + xPosCharacter,                    (+sizeC * cost) + yPosCharacter,                    0.0 ); // Top
        glVertex3f( (-sizeC * cost + sizeC * sint) + xPosCharacter,     (-sizeC * sint - sizeC * cost) + yPosCharacter,     0.0 ); // Bottom Left
        glVertex3f( (sizeC * cost + sizeC * sint) + xPosCharacter,      (sizeC * sint - sizeC * cost) + yPosCharacter,      0.0 ); // Bottom Right






        // Finished Drawing The Triangle
        glEnd();

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();


        Sleep(10);
    }

    glfwTerminate();
    return 0;
}


