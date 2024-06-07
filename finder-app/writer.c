#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>

int main(int argc, char **argv)
{
   FILE *fptr;

   openlog(NULL, 0, LOG_USER);

   if (argc != 3) {
      syslog(LOG_ERR, "Exactly two arguments should be provided: filename and contents");
      exit(1);
   }

   fptr = fopen(argv[1], "w");
   if (fptr == NULL) {
      syslog(LOG_ERR, "File %s could not be created", argv[1]);
      exit(1);
   }

   syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
   fprintf(fptr, "%s", argv[2]);
   fclose(fptr);

   return 0;
}
