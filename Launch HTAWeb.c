#include <stdio.h>
#include <stdlib.h>

int main() {
    const char* verbose_info[] = {
        "Setting up Internet Explorer runtime...",
        "Loading up HTA code...",
        "Exiting C loader script..."
    };

    int verbose_info_length = sizeof(verbose_info) / sizeof(verbose_info[0]);

    for (int i = 0; i < verbose_info_length; i++) {
        printf("%s\n", verbose_info[i]);
    }

    const char* hta_file = "htaweb.hta";

    printf("Launching HTA file...\n");

    if (system(hta_file) != 0) {
        printf("Error launching HTA file.\n");
    }

    return 0;
}
