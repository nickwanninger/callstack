default:
	mkdir -p build
	cd build && cmake ../; make -j
	@cp build/compile_commands.json .


clean:
	rm -rf build
