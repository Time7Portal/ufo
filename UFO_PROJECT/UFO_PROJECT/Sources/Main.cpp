#define PI 3.14159

#include <iostream>
#include <cstdlib>
#include <ctime>
#include <chrono>
#include <GLFW/glfw3.h>
#include <windows.h>


int main(void)
{
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
    {
        return -1;
    }

    /* Create a windowed mode window and its OpenGL context */
    window = glfwCreateWindow(600, 600, "Hello World", NULL, NULL);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        // ����Ƽ������ delta time ���ϱ� (���� ���������κ����� �Ⱓ)
        std::chrono::time_point<std::chrono::system_clock> now = std::chrono::system_clock::now();
        auto duration = now.time_since_epoch();
        auto millis = std::chrono::duration_cast<std::chrono::milliseconds>(duration).count();
        //std::cout << millis << std::endl;

        // ȸ�� �ӵ� (���� �������� ����)
        long long speed = 10.0;
        long long ticktock = millis / speed;

        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);


        glBegin(GL_TRIANGLES);                      // Drawing Using Triangles
        static double cost;         cost = cos(ticktock * PI / 180);
        static double sint;         sint = sin(ticktock * PI / 180);


        std::cout << &cost << " = " << cost << std::endl;
        std::cout << &sint << " = " << sint << std::endl;

        glVertex3f(-1.0 * sint, +1.0 * cost, 0.0); // Top
        glVertex3f(-1.0 * cost + 1.0 * sint, -1.0 * sint - 1.0 * cost, 0.0); // Bottom Left
        glVertex3f(1.0 * cost + 1.0 * sint, 1.0 * sint - 1.0 * cost, 0.0); // Bottom Right


        //glVertex3f(0.0f, 1.0f, 0.0f);              // Top
        //glVertex3f(-1.0f, -1.0f, 0.0f);              // Bottom Left
        //glVertex3f(1.0f, -1.0f, 0.0f);              // Bottom Right
        //glVertex3f(0.0 * cos(ticktock * PI / 180) - 1.0 * sin(ticktock * PI / 180), 0.0 * sin(ticktock * PI / 180) + 1.0 * cos(ticktock * PI / 180), 0.0f); // Top
        //glVertex3f(-1.0 * cos(ticktock * PI / 180) + 1.0 * sin(ticktock * PI / 180), -1.0 * sin(ticktock * PI / 180) - 1.0 * cos(ticktock * PI / 180), 0.0f); // Bottom Left
        //glVertex3f(1.0 * cos(ticktock * PI / 180) + 1.0 * sin(ticktock * PI / 180), 1.0 * sin(ticktock * PI / 180) - 1.0 * cos(ticktock * PI / 180), 0.0f); // Bottom Right


        glEnd();                            // Finished Drawing The Triangle


        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();


        Sleep(10);
    }

    glfwTerminate();
    return 0;
}