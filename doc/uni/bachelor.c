#include <stdio.h>
#include <stdbool.h>

float ects_todo(float done)
{ return 180.0 - done; }

int main(int argc, char** argv)
{
    float todo;

    // pending
    float didaktik = 3.0;

    // done
    float vertragsrecht = 1.5; 
    float done = 155.5 + didaktik;
  
    // todo
    float thesis = 10;
    float ana = 2.0;
    float fmod = 3.0;
    float softskills = 3.0;
    float wissensbasierte = 5.0;

    // optional
    float microcomputer = 1.0;    
    float dataprog = 3.0;

    float transferable_skills = didaktik + vertragsrecht + softskills;
    float current_semester = ana + wissensbasierte + softskills + microcomputer;

    printf("todo this semester %f ects\n", current_semester);
    printf("todo until bachelor: %f ects\n", (todo = ects_todo(done + thesis + fmod + current_semester)));
    printf("transferable skills: %f ects, %s\n",  transferable_skills, transferable_skills >= 6.0 ? "done" : "not done");
    return todo > 0;
}