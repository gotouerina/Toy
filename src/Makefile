abc = batch_noneout.o 
target = batch
CC = gcc

$(target) : $(abc)
	$(CC) $(abc) -o $(target)
%.o:%.c
	$(CC) -c $< -o $@

.PHONY:clean
clean:
	rm -rf $(abc) $(target)


