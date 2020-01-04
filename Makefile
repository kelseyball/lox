BUILD_DIR := build

default: jlox

# Remove all build outputs and intermediate files.
clean:
	@ rm -rf $(BUILD_DIR)

# Compile the Java interpreter .java files to .class files.
jlox: 
	@ $(MAKE) -f java.make DIR=java PACKAGE=lox
	cd build/java; java com.craftinginterpreters.lox.Lox
	