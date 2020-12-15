#define PI 3.141592f
#define RADIAN ( PI / 180.0f )
#define DEGREE ( 180.0f / PI )
#define RAD2DEG( Rad  ) ( Rad * DEGREE )
#define DEG2RAD( Degree ) ( Degree * RADIAN )

#include <cmath>
#include <time.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <chrono>

using namespace std;
using namespace chrono;

struct Vector2
{
    float x = 0;
    float y = 0;

    Vector2() {
        x = 0;
        y = 0;
    }

    Vector2(float _x, float _y) {
        x = _x;
        y = _y;
    }

    float Length() {
        return sqrt(pow(x, 2) + pow(y, 2));
    }

    Vector2 Normalize() {
        float distance = Length();
        return Vector2(x / distance, y / distance);
    }

    Vector2 operator+(Vector2 rhs) {
        return Vector2(x + rhs.x, y + rhs.y);
    }
    Vector2 operator-(Vector2 rhs) {
        return Vector2(x - rhs.x, y - rhs.y);
    }
    Vector2 operator*(Vector2 rhs) {
        return Vector2(x * rhs.x, y * rhs.y);
    }

    float tan() {
        return y / x;
    }
};

struct Starship {
    Vector2 position;
    float radius = 0.1f;
    float degree = 0;

    Starship() {

    }

    void GetVertexes(Vector2* vertexes) {
        vertexes[0] = Vector2(+radius * cos(degree) - 0 * sin(degree), +radius * sin(degree) + 0 * cos(degree)) + position;
        vertexes[1] = Vector2(-radius * cos(degree) - +radius * sin(degree), -radius * sin(degree) + +radius * cos(degree)) + position;
        vertexes[2] = Vector2(-radius * cos(degree) - -radius * sin(degree), -radius * sin(degree) + -radius * cos(degree)) + position;
    }
};

float tan(Vector2 lhs, Vector2 rhs) {
    float dAngle1 = RAD2DEG(atan2(lhs.x, lhs.y));
    float dAngle2 = RAD2DEG(atan2(rhs.x, rhs.y));

    float dDiffAngles = dAngle2 - dAngle1;

    if (dDiffAngles < 0)
        dDiffAngles = 360 + dDiffAngles;

    return dDiffAngles;
}

static int width = 600;
static int height = 600;
static float horizontal = 0;
static float vertical = 0;
static Vector2 mousePosition = Vector2(0, 0);

static float speed = 0.01f;

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods)
{
    switch (action) {
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
    }
}

static void cursor_position_callback(GLFWwindow* window, double xpos, double ypos)
{
    mousePosition = Vector2(xpos, 600) - Vector2(0, ypos);
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

    duration<double> sec;
    double time = 0;

    Starship starship;
    starship.radius = 0.05f;

    /* Loop until the user closes the window */
    while (!glfwWindowShouldClose(window))
    {
        system_clock::time_point start = system_clock::now();
        /* Render here */
        glClear(GL_COLOR_BUFFER_BIT);

        auto timeSpeed = 5.0f;
        auto asd = duration_cast<milliseconds>(sec);

        starship.position.x += horizontal;
        starship.position.y += vertical;

        Vector2 relativePosition = mousePosition - Vector2(width / 2, height / 2) - starship.position * Vector2(width / 2, height / 2);

        float degree = DEG2RAD(tan(relativePosition.Normalize(), Vector2(1, 0)));
        starship.degree = degree;

        Vector2 vertexes[3] = { Vector2(), Vector2(), Vector2() };
        starship.GetVertexes(vertexes);

        glBegin(GL_TRIANGLES);
        glVertex3f(vertexes[0].x, vertexes[0].y, 0.0f);
        glVertex3f(vertexes[1].x, vertexes[1].y, 0.0f);
        glVertex3f(vertexes[2].x, vertexes[2].y, 0.0f);
        glEnd();

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
        system_clock::time_point end = system_clock::now();

        sec = end - start;
        time += sec.count() * timeSpeed;
    }

    glfwTerminate();
    return 0;
}