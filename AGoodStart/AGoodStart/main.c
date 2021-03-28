//
//  main.c
//  AGoodStart
//
//  Created by admin on 2021/3/24.
//

#include <stdio.h>
#include <stdbool.h>
#include <unistd.h> //sleep
#include <math.h>
#include <readline/readline.h>




void printFunc(char *name, int age){
    printf("%s is %d year-old.\n", name, age);
}

void recursion(int num){
    if(num<=0) return;
    printf("num = %d\n", num);
    recursion(num-1);
}

int main(int argc, const char * argv[]) {
    //sizeof()
    char *str = "string";
    printf("the size of this string is %zu.\n", sizeof(str));
    
    //Pointer
//    printf("this program started at: %p.\n", &main);
//
//    int i = 27;
//    printf("i stores its value in address: %p.\n", &i);
//
//    int *addressOfI = &i;
//    printf("i stores its value in address: %p.\n", addressOfI);
    
    //Readline
//    printf("input your name:\n");
//    const char *name = readline(NULL);
//    printf("your name is %s.\n", name);
    
    
    
    //Math.h
//    printf("%f", sin(M_PI*0.5));
    
    
    //Number
//    int x = 255;
//    printf("x is %d\n", x);
//    printf("in octal, x is %o\n", x);//8
//    printf("in hexadecimal, x is %x\n", x);//16
//
//    long y = 255;
//    printf("y is %ld\n", y);
//    printf("in octal, y is %lo\n", y);//8
//    printf("in hexadecimal, y is %lx\n", y);//16
//
//    unsigned long z = 255;
//    printf("z is %lu\n", z);
//
//    float f = 1234.5678;
//    printf("float number is %f\n", f);
//    printf("float number is %e\n", f); //%e scientific notation
    
    
    //recursion
//    recursion(4);
    
    //func
//    printFunc("Rachel", 24);
//    sleep(2);//unistd
//    printFunc("Ross", 26);
    
    //print bool
//    bool t = true;
//    bool f = false;
//    bool ans = !(t&&f);
//    printf(ans? "true\n":"false\n");
    
    // print float
//    float weight = 11.1;
//    float cookingTime = 15*weight;
//    printf("turkey weights %f\n", weight);
//    printf("cooking time: %f\n", cookingTime);
    


    
    
    
    
    return 0;
}
