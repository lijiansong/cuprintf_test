all:
	nvcc cuprintf_test.cu -o cuprintf_test
clean:
	rm cuprintf_test
