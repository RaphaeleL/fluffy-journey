CFLAGS+= -Werror -Wall -Isrc/ -g 
VPATH= src
TESTS= bin/lexer_test bin/parser_test bin/opcode_test bin/compiler_test bin/vm_test bin/symbol_table_test 

all: bin/fluffy-journey 

bin/:
	mkdir -p bin/

bin/fluffy-journey: fluffy-journey.c lexer.c parser.c opcode.c compiler.c object.c symbol_table.c builtins.c vm.c gc.c | bin/
	$(CC) $(CFLAGS) $^ -Ofast -o $@ 

.PHONY: clean
clean:
	rm -r bin

.PHONY: install
install: bin/fluffy-journey
	cp bin/fluffy-journey /usr/local/bin/fluffy-journey
