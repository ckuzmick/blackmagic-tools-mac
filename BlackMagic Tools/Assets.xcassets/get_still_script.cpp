#include <iostream>
#include <string>

int main(int argc, char* argv[]) {
    // argc contains the number of arguments passed (including the program name)
    // argv is an array of character pointers (C-style strings) representing each argument

    std::cout << "Number of arguments passed: " << argc << std::endl;

    for (int i = 0; i < argc; ++i) {
        // Convert argv[i] to a std::string if you need to work with it as a string
        std::string arg = argv[i];

        // Display each argument
        std::cout << "Argument " << i << ": " << arg << std::endl;
    }

    // Example of processing arguments
    if (argc > 1) {
        std::string firstArg = argv[1]; // First argument (excluding program name)
        std::cout << "Processing first argument: " << firstArg << std::endl;

        // Add your logic here to process the argument
    }

    return 0;
}
