#include "program.h"


int main(int argc, char *argv[])
{

  if(argc!=2)
    {
      program_usage();
      exit(EXIT_FAILURE);
    }

  {
    int idx=atoi(argv[1]);
    switch( idx )
      {
      case 0:
        s0_podprogram() ; // podprogram studenta o numerze indeksu 0
        break;
       case 999:
	s999_podprogram() ; // podprogram studenta o numerze indeksu 999
	break;
       case 244959:
	s244959_podprogram(); // podprogram studenta o numerze indeksu 244959
	break;
      case 244960:
	s244960_podprogram(); // podprogram studenta o numerze indeksu 244960
	break;
      case 244968:
        s244968_podprogram();
        break;
        case 245162:
s245162_podprogram();
break;
      default:
	printf("\nStudent o numerze indeksu %d nie wykonał jeszcze zadania\n\n",idx);
      break;

      }
  }
  exit(EXIT_SUCCESS);
}
