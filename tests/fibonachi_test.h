#ifndef FIBONACHI_H
#define FIBONACHI_H
#include <gtest/gtest.h>
#include <stdio.h>
#include<string.h>
#include<fcntl.h>

extern "C" {

#define STDOUT 1
}
TEST (first, r1)
{

    text txt=create_text();
    ASSERT_EQ(currentline(txt), 1);

}

TEST(second,r2)
{
    char* filename=(char*) malloc(1024 * sizeof(char));
    sprintf(filename,"%s/first.txt",INPUTDIR);
int p=0;
p=p+1;
 text txt=create_text();
load(txt, filename);
c_to_pos(txt,1,1);
p=currentline(txt);
ASSERT_EQ(p,1);
}
    
TEST(third,r3)
{

    char* filename=(char*) malloc(1024 * sizeof(char));
    sprintf(filename,"%s/second.txt",INPUTDIR);



    int p=0;
    p=p+1;
    text txt=create_text();
    load(txt, filename);
    c_to_pos(txt,1,0);
    p=currentline(txt);
    ASSERT_EQ(p,1);

}

TEST(fourth,r4)
{

    char* filename=(char*) malloc(1024 * sizeof(char));
    sprintf(filename,"%s/4.txt",INPUTDIR);
        int p=0;
        p=p+1;
        text txt=create_text();
        load(txt, filename);
        c_to_pos(txt,6,6);
        p=currentline(txt);
        ASSERT_EQ(p,3);
}



TEST (rh,r1)
{
   char* filename=(char*) malloc(1024 * sizeof(char));
        sprintf(filename,"%s/stroka.txt",INPUTDIR);




 text txt =create_text();
          load(txt,filename);
                    rh(txt);
      SUCCEED();


}
TEST(rhsecond,r2)
{
    char* filename=(char*) malloc(1024 * sizeof(char));
         sprintf(filename,"%s/stroka.txt",INPUTDIR);
int fptr;
          int oldstdout;
          fptr = open("DUMMY.BIL",O_CREAT|O_RDWR,S_IREAD|S_IWRITE);

            oldstdout = dup(STDOUT);
            dup2(fptr,STDOUT);
            close(fptr);

            text txt = create_text();
            load(txt,filename);
            rh(txt);
            dup2(oldstdout,STDOUT);

            FILE *d;
            d =fopen(filename,"rw");
            if(d == NULL){
               FAIL();
                   return;
            }
            char *buf2 = (char*)malloc(sizeof(char)*512);
            int readcount2 = fread(buf2,1,512,d);


       FILE *t;
            t = fopen("DUMMY.BIL","rw");
            if(t == NULL)
            {
               FAIL();
                   return;
            }
       char *buf = (char*)malloc(sizeof(char)*512);
          int readcount = fread(buf,1,512,t);



            fclose(t);
            fclose(d);
            if (readcount2 >readcount)
            {
                SUCCEED();
            }
}
            TEST(rhthird,r3)
            {
                char* filename=(char*) malloc(1024 * sizeof(char));
                     sprintf(filename,"%s/4.txt",INPUTDIR);

                     int fptr;
                               int oldstdout;
                               fptr = open("DUMMY.BIL",O_CREAT|O_RDWR,S_IREAD|S_IWRITE);

                                 oldstdout = dup(STDOUT);
                                 dup2(fptr,STDOUT);
                                 close(fptr);




                     text txt=create_text();
                     load(txt, filename);
                     c_to_pos(txt,0,0);
                 rh(txt);
                 dup2(oldstdout,STDOUT);

                 FILE *d;
                 d =fopen(filename,"rw");
                 if(d == NULL){
                    FAIL();
                        return;
                 }
                 char *buf2 = (char*)malloc(sizeof(char)*512);
                 int readcount2 = fread(buf2,1,512,d);


            FILE *t;
                 t = fopen("DUMMY.BIL","rw");
                 if(t == NULL)
                 {
                    FAIL();
                        return;
                 }
            char *buf = (char*)malloc(sizeof(char)*512);
               int readcount = fread(buf,1,512,t);



                 fclose(t);
                 fclose(d);
                 if (readcount2 >readcount)
                 {
                     SUCCEED();
                 }


     }













  #endif // FIBONACHI_H



