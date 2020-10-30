#include <stdio.h>
#include <stdlib.h>
#include <termios.h>
#include <stdbool.h>

struct termios old, current;

/* Initialize new terminal i/o settings */
void initTermios()
{
    tcgetattr(0, &old);              /* grab old terminal i/o settings */
    current = old;                   /* make new settings same as old settings */
    current.c_lflag &= ~ICANON;      /* disable buffered i/o */
    current.c_lflag &= ~ECHO;        /* set no echo mode */
    tcsetattr(0, TCSANOW, &current); /* use these new terminal i/o settings now */
}

/* Restore old terminal i/o settings */
void resetTermios(void)
{
    tcsetattr(0, TCSANOW, &old);
}

/* Read 1 character */
char getch()
{
    char ch;
    initTermios();
    ch = getchar();
    resetTermios();
    return ch;
}

char Map[9][20] = {
    {"vvwwwwwwwwwwwwwwwwvv"},
    {"vw       w        wv"},
    {"w        w         w"},
    {"w                  w"},
    {"w        w         w"},
    {"w        w         w"},
    {"w        w         w"},
    {"vw       w        wv"},
    {"vvwwwwwwwwwwwwwwwwvv"},
};

typedef struct Player
{
    uint8_t x;
    uint8_t y;
    uint8_t h_of;
    uint8_t w_of;
} Player_t;

Player_t player = {3, 6, 0, 0};

static inline bool isPlayer(uint8_t x, uint8_t y)
{
    return ((y == player.y || y == player.y - player.h_of || y == player.y + player.h_of) && (x == player.x || x == player.x - player.w_of || x == player.x + player.w_of));
}

void drawMap()
{
    for (uint8_t y = 0; y < 9; y++)
    {
        for (uint8_t x = 0; x < 20; x++)
        {
            if (isPlayer(x, y))
            {
                printf("@");
            }
            else
            {
                printf("%c", Map[y][x]);
            }
        }
        printf("\n");
    }
}

char readInput()
{
    char input;
    input = getch();
    return input;
}

void movePlayer(char input)
{
    switch (input)
    {
    case 'w':
        if (player.h_of == 0)
        {
            player.h_of = 1;
            if (Map[player.y + 1][player.x] == 'w')
                player.y--;
        }
        else if (Map[player.y - 2][player.x] != 'w')
        {
            player.y--;
        }
        break;
    case 's':
        if (player.h_of == 1)
        {
            player.h_of = 0;
        }
        else if (Map[player.y + 1][player.x] != 'w')
        {
            player.y++;
        }
        break;
    case 'a':
        if (player.w_of == 1)
        {
            player.w_of = 0;
        }
        else if (Map[player.y][player.x - 1] != 'w')
        {
            player.x--;
        }
        break;
    case 'd':
        if (player.w_of == 0)
        {
            player.w_of = 1;
            if (Map[player.y][player.x - 1] == 'w')
                player.x++;
        }
        else if (Map[player.y][player.x + 2] != 'w')
        {
            player.x++;
        }
        break;
    }
}

int main()
{
    while (1)
    {
        drawMap();
        char input = readInput();
        if (input == 'q')
        {
            break;
        }
        movePlayer(input);
        system("clear");
    };
    return 0;
}
