int batch(void)
{
	FILE *fp;
        int count;
	int flag = 0 ;
	fp = fopen("batch_file","r");
	if(fp == NULL)
	{
	perror("Error when open the file");
	return(-1);
	}
        char constant[100] = {"wget"};
	printf("%s\t",constant);
	while(!feof(fp))
	{
	flag = fgetc(fp);
	if(flag == '\n')
	   {count ++;
	   printf("%c",flag);
	   printf("%s\t",constant);
	   }
	else
	  {
	  printf("%c",flag);
	  }
	}
        fclose(fp);
	return 0;
}
