CFLAGS+= -Werror -Wall -Isrc/ -g 
VPATH= src
TESTS= bin/lexer_test bin/parser_test bin/opcode_test bin/compiler_test bin/vm_test bin/symbol_table_test 
MAKEFLAGS += --silent

all: bin/fluffy-journey 

bin/:
	echo "create bin/"
	mkdir -p bin/

bin/fluffy-journey: fluffy-journey.c lexer.c parser.c opcode.c compiler.c object.c symbol_table.c builtins.c vm.c gc.c | bin/
	echo "build language"
	$(CC) $(CFLAGS) $^ -Ofast -o $@ 

.PHONY: clean
clean:
	echo "clean bin/"
	rm -r bin

.PHONY: install
install: bin/fluffy-journey
	echo "install binary"
	cp bin/fluffy-journey /usr/local/bin/fluffy-journey
