all: build test_2intput_3output clean
build:
	gcc main.c
run: build
	./a.out
clean:
	rm a.out
test:
	bash test/test.sh
test_1output:
	bash test/test_1output.sh
test_2output:
	bash test/test_2output.sh
test_1intput_2output:
	bash test/test_1intput_2output.sh	
test_2intput_2output:
	bash test/test_2intput_2output.sh
test_2intput_3output:
	bash test/test_2intput_3output.sh
