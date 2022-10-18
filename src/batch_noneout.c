#include <stdio.h>
#include <string.h>
#include <stdlib.h> 
int main(void)
{
	FILE *fp;
	int count;
	int flag = 0;
	char constant1 [1024];
	char constant2 [1024];
	fp = fopen("batch_file","r");
		if(fp == NULL)
		{
		perror("Error when open the file");
		return(-1);
		}
	scanf("%s",&constant1);
	scanf("%s",&constant2);
	printf("%s\t",constant1);
	while(!feof(fp))
		{
		flag = fgetc(fp);
		if(flag == '\n')
			{count ++;
			printf("\t%s",constant2);
			printf("%c",flag);
			printf("%s\t",constant1);
			}
		else
			{
			printf("%c",flag);
			}
		}
	fclose(fp);
	return 0;
}

