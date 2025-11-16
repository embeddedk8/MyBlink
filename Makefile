# FQBN for your board (change if needed)
FQBN ?= arduino:avr:uno

# Serial port (change if needed)
PORT := /dev/ttyACM0

# Build dirs
BUILD_DEBUG := build/debug
BUILD_RELEASE := build/release

# Arduino CLI executable
ARDUINO_CLI := arduino-cli

# Default build release
all: release

debug:
	$(ARDUINO_CLI) compile \
		--fqbn $(FQBN) \
		--build-path $(BUILD_DEBUG) \
		--optimize-for-debug \
		--verbose

release:
	$(ARDUINO_CLI) compile \
		--fqbn $(FQBN) \
		--build-path $(BUILD_RELEASE) \
		--verbose

upload-debug: debug
	$(ARDUINO_CLI) upload \
		-p $(PORT) \
		--fqbn $(FQBN) \
		--input-dir $(BUILD_DEBUG)

upload-release: release
	$(ARDUINO_CLI) upload \
		-p $(PORT) \
		--fqbn $(FQBN) \
		--input-dir $(BUILD_RELEASE)

monitor:
	$(ARDUINO_CLI) monitor -p $(PORT)

clean:
	rm -rf build


.PHONY: all debug release upload-debug upload-release clean monitor