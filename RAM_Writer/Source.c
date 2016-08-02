#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void text_to_asm(FILE *asm_file, FILE *file) {
	fprintf(asm_file, "ani 0 0 0\nani 1 1 0\nani 2 2 0");
	fseek(file, 0, SEEK_END);
	long long fileSize = ftell(file);
	rewind(file);
	unsigned char* buffer = (unsigned char*)malloc(fileSize * sizeof(unsigned char));
	fread(buffer, 1, fileSize, file);
	for (int i = 0; i < fileSize; i++) {
		fprintf(asm_file, "\nori 2 0 %d\n", (int)buffer[i]);
		fprintf(asm_file, "st 1 2\n");
		fprintf(asm_file, "adi 1 1 1\n");
		fprintf(asm_file, "ani 2 2 0");
	}
	fclose(asm_file);
	fclose(file);
}

int main() {
	printf("File path: ");
	char file_path[100];
	gets(file_path);
	FILE *data = fopen(file_path, "rb");
	FILE *ram_out = fopen("ram_out.asm", "w");
	text_to_asm(ram_out, data);
	printf("Done! Asm out file here: ram_out.asm\n");
	system("pause");
	return 0;
}