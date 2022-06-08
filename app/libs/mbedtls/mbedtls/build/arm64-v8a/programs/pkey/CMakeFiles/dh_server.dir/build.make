# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/eugeniyrudykh/Android/Sdk/cmake/3.18.1/bin/cmake

# The command to remove a file.
RM = /home/eugeniyrudykh/Android/Sdk/cmake/3.18.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/eugeniyrudykh/Sharaga/tmp/mb_main/mbedtls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a

# Include any dependencies generated for this target.
include programs/pkey/CMakeFiles/dh_server.dir/depend.make

# Include the progress variables for this target.
include programs/pkey/CMakeFiles/dh_server.dir/progress.make

# Include the compile flags for this target's objects.
include programs/pkey/CMakeFiles/dh_server.dir/flags.make

programs/pkey/CMakeFiles/dh_server.dir/dh_server.c.o: programs/pkey/CMakeFiles/dh_server.dir/flags.make
programs/pkey/CMakeFiles/dh_server.dir/dh_server.c.o: /home/eugeniyrudykh/Sharaga/tmp/mb_main/mbedtls/programs/pkey/dh_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object programs/pkey/CMakeFiles/dh_server.dir/dh_server.c.o"
	cd /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/programs/pkey && /home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=aarch64-none-linux-android21 --gcc-toolchain=/home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dh_server.dir/dh_server.c.o -c /home/eugeniyrudykh/Sharaga/tmp/mb_main/mbedtls/programs/pkey/dh_server.c

programs/pkey/CMakeFiles/dh_server.dir/dh_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dh_server.dir/dh_server.c.i"
	cd /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/programs/pkey && /home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=aarch64-none-linux-android21 --gcc-toolchain=/home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/eugeniyrudykh/Sharaga/tmp/mb_main/mbedtls/programs/pkey/dh_server.c > CMakeFiles/dh_server.dir/dh_server.c.i

programs/pkey/CMakeFiles/dh_server.dir/dh_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dh_server.dir/dh_server.c.s"
	cd /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/programs/pkey && /home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/bin/clang --target=aarch64-none-linux-android21 --gcc-toolchain=/home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64 --sysroot=/home/eugeniyrudykh/Android/Sdk/ndk/21.4.7075529/toolchains/llvm/prebuilt/linux-x86_64/sysroot $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/eugeniyrudykh/Sharaga/tmp/mb_main/mbedtls/programs/pkey/dh_server.c -o CMakeFiles/dh_server.dir/dh_server.c.s

# Object files for target dh_server
dh_server_OBJECTS = \
"CMakeFiles/dh_server.dir/dh_server.c.o"

# External object files for target dh_server
dh_server_EXTERNAL_OBJECTS = \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/random.c.o" \
"/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o"

programs/pkey/dh_server: programs/pkey/CMakeFiles/dh_server.dir/dh_server.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/asn1_helpers.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/certs.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/hash.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/platform_builtin_keys.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_aead.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_asymmetric_encryption.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_cipher.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_key_management.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_mac.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/drivers/test_driver_signature.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/fake_external_rng_for_test.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/helpers.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/psa_crypto_helpers.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/psa_exercise_key.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/random.c.o
programs/pkey/dh_server: CMakeFiles/mbedtls_test.dir/tests/src/threading_helpers.c.o
programs/pkey/dh_server: programs/pkey/CMakeFiles/dh_server.dir/build.make
programs/pkey/dh_server: library/libmbedtls.so
programs/pkey/dh_server: library/libmbedx509.so
programs/pkey/dh_server: library/libmbedcrypto.so
programs/pkey/dh_server: programs/pkey/CMakeFiles/dh_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dh_server"
	cd /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/programs/pkey && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dh_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
programs/pkey/CMakeFiles/dh_server.dir/build: programs/pkey/dh_server

.PHONY : programs/pkey/CMakeFiles/dh_server.dir/build

programs/pkey/CMakeFiles/dh_server.dir/clean:
	cd /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/programs/pkey && $(CMAKE_COMMAND) -P CMakeFiles/dh_server.dir/cmake_clean.cmake
.PHONY : programs/pkey/CMakeFiles/dh_server.dir/clean

programs/pkey/CMakeFiles/dh_server.dir/depend:
	cd /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/eugeniyrudykh/Sharaga/tmp/mb_main/mbedtls /home/eugeniyrudykh/Sharaga/tmp/mb_main/mbedtls/programs/pkey /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/programs/pkey /home/eugeniyrudykh/Sharaga/tmp/mb_main/build/arm64-v8a/programs/pkey/CMakeFiles/dh_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : programs/pkey/CMakeFiles/dh_server.dir/depend

