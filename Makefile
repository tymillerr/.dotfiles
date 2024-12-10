# Target to run the ./bin/linux.sh script
linux: clean
	./bin/linux.sh

# Target to run the ./bin/cleanup.sh script
clean:
	./bin/cleanup.sh

# Set execute permissions for the shell scripts
chmod:
	chmod +x ./bin/linux.sh ./bin/cleanup.sh
