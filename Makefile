NAME=3dpwr

$(NAME): $(NAME).cpp GPIOClass.cpp GPIOClass.h
	g++ -o $(NAME) GPIOClass.cpp $(NAME).cpp

clean:
	rm -f $(NAME)

install: $(NAME)
	cp $(NAME) /usr/local/bin
	chown root /usr/local/bin/$(NAME)
	chmod 4750 /usr/local/bin/$(NAME)

uninstall: /usr/local/bin/$(NAME)
	rm -f /usr/local/bin/$(NAME)

