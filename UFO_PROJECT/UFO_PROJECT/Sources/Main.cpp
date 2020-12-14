#include <cmath>
#include <time.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <chrono>

using namespace std;
using namespace chrono;

double Deg2Rad(double deg) {
    double PI = 3.141592;
    return deg * (2 * PI) / 360;
}

int main(void)
{
    GLFWwindow* window;

    /*
    time_t timer;
    struct tm y2k = { 0 };
    double seconds;

    y2k.tm_hour = 0;   y2k.tm_min = 0; y2k.tm_sec = 0;
    y2k.tm_year = 100; y2k.tm_mon = 0; y2k.tm_mday = 1;
    */

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

    duration<double> sec;
    double time = 0;

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        system_clock::time_point start = system_clock::now();
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        /*time_t tttime = time(&timer);

        seconds = difftime(timer, mktime(&y2k));
        printf("%lf\n", seconds);*/

        double PI = 3.141592;

        auto speed = 5.0f;
        auto asd = duration_cast<milliseconds>(sec);

        //glBegin(GL_TRIANGLES);                      // Drawing Using Triangles
        //glVertex3f(sin(time * (2 * PI) / 360), cos(time * (2 * PI) / 360), 0.0f);              // Top
        //glVertex3f(-cos(time * (2 * PI) / 360), -1 + sin(time * (2 * PI) / 360), 0.0f);              // Bottom Left
        //glVertex3f(cos(time * (2 * PI) / 360), -1 -sin(time * (2 * PI) / 360), 0.0f);              // Bottom Right
        //glEnd();                            // Finished Drawing The Triangle

        glBegin(GL_TRIANGLES);                      // Drawing Using Triangles
        glVertex3f(sin(time * (2 * PI) / 360), cos(time * (2 * PI) / 360), 0.0f);              // Top
        glVertex3f(-cos(Deg2Rad(time - 45)) * sqrt(2), sin(Deg2Rad(time - 45)) * sqrt(2), 0.0f);              // Bottom Left
        glVertex3f(cos(Deg2Rad(time + 45)) * sqrt(2), -sin(Deg2Rad(time + 45)) * sqrt(2), 0.0f);              // Bottom Right
        glEnd();                            // Finished Drawing The Triangle


        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
        system_clock::time_point end = system_clock::now();

        sec = end - start;
        time += sec.count() * speed;
    }

    glfwTerminate();
    return 0;
}