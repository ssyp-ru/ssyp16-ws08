#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <locale.h>
#include <malloc.h>

#define _MAX_COMMANDS_STACK_SIZE 10000
#define _MIF_FILE_DEPTH 36000
#define _MAX_COMMAND_PARTS_NUMBER 4
#define _MAX_STRING_SIZE 255
#define _COMMANDS_NUMBER 22

typedef struct Operation {
	char* key;
	char* type;
} Operation;

typedef struct String {
	char *str;
	size_t len;
} String;

Operation AVAILABLE_COMMANDS[_COMMANDS_NUMBER];

Operation init(char* key, char* type) {
	Operation new_op;
	new_op.key = key;
	new_op.type = type;
	return new_op;
}

void initialize() {
	AVAILABLE_COMMANDS[0] = init("nop", "nop");
	AVAILABLE_COMMANDS[1] = init("mova", "A");
	AVAILABLE_COMMANDS[2] = init("add", "A");
	AVAILABLE_COMMANDS[3] = init("sub", "A");
	AVAILABLE_COMMANDS[4] = init("and", "A");
	AVAILABLE_COMMANDS[5] = init("or", "A");
	AVAILABLE_COMMANDS[6] = init("xor", "A");
	AVAILABLE_COMMANDS[7] = init("not", "A");
	AVAILABLE_COMMANDS[8] = init("adi", "B");
	AVAILABLE_COMMANDS[9] = init("sbi", "B");
	AVAILABLE_COMMANDS[10] = init("ani", "B");
	AVAILABLE_COMMANDS[11] = init("ori", "B");
	AVAILABLE_COMMANDS[12] = init("xri", "B");
	AVAILABLE_COMMANDS[13] = init("movb", "A");
	AVAILABLE_COMMANDS[14] = init("lsr", "A");
	AVAILABLE_COMMANDS[15] = init("lsl", "A");
	AVAILABLE_COMMANDS[16] = init("ld", "ld");
	AVAILABLE_COMMANDS[17] = init("st", "st");
	AVAILABLE_COMMANDS[18] = init("jmr", "jmr");
	AVAILABLE_COMMANDS[19] = init("bz", "C");
	AVAILABLE_COMMANDS[20] = init("bnz", "C");
	AVAILABLE_COMMANDS[21] = init("jmp", "C");
}

int find_in_commands(char* key) {
	for (int i = 0; i < _COMMANDS_NUMBER; i++) {
		if (strcmp(key, AVAILABLE_COMMANDS[i].key) == 0)
			return i;
	}
	return -1;
}

char* mult_chars(char c, int n) {
	char *out = (char*) malloc(n * sizeof(char));
	for (int i = 0; i < n; i++) {
		out[i] = c;
	}
	return out;
}

char* int_to_bin(int x, size_t bin_size) {
	char* bin_x = (char*) malloc(bin_size * sizeof(char));
	int i = bin_size - 1;
	while (i >= 0 && x > 0) {
		bin_x[i] = (x % 2 == 0 ? '0' : '1');
		x /= 2;
		i--;
	}
	while (i >= 0) {
		bin_x[i] = '0';
		i--;
	}
	return bin_x;
}

long long bin_to_int(char* bin_x, size_t bin_x_size) {
	long long x = 0, q = 1;
	for (int i = bin_x_size - 1; i >= 0; i--) {
		x += (bin_x[i] - '0') * q;
		q *= 2;
	}
	return x;
}

int str_to_int(char* str_x) {
	int x = 0, q = 1;
	for (int i = strlen(str_x) - 1; str_x[i] - '0' >= 0
	 && str_x[i] - '0' <= 9 && i >= 0; i--) {
		x += (str_x[i] - '0') * q;
		q *= 10;
	}
	return x;
}

char *conc_str(char* s, int pos, char* add_s, size_t add_s_size) {
	for (int i = pos; i < pos + add_s_size; i++) {
		s[i] = add_s[i - pos];
	}
	return s;
}

char** parse_line(char* line) {
	char** command_parts = (char**)malloc(_MAX_COMMAND_PARTS_NUMBER * sizeof(char*));
	for (int i = 0; i < _MAX_COMMAND_PARTS_NUMBER; i++)
		command_parts[i] = (char*)malloc(_MAX_STRING_SIZE * sizeof(char));
	char* command = strtok(line, " ,;\n");
	int i = 0;
	while (command != NULL) {
		strcpy(command_parts[i], command);
		command = strtok(NULL, " ,;\n");
		i++;
	}
	return command_parts;
}

char* translate(char** op_data) {   //op_data[0] - operation, op_data[1:] - params
	int command = find_in_commands(op_data[0]);
	char* op_type = AVAILABLE_COMMANDS[command].type;
	char *op, *A_sel, *B_sel, *dest_sel, *const_in;
	char* op_code = mult_chars('0', 32);
	op = int_to_bin(command, 5);
	op_code = conc_str(op_code, 0, op, 5);
	switch (op_type[0]) {
	case 'n':
		return mult_chars('0', 32);
	case 'A':
		dest_sel = int_to_bin(str_to_int(op_data[1]), 4);
		A_sel = int_to_bin(str_to_int(op_data[2]), 4);
		B_sel = int_to_bin(str_to_int(op_data[3]), 4);
		op_code = conc_str(op_code, 5, dest_sel, 4);
		op_code = conc_str(op_code, 9, A_sel, 4);
		op_code = conc_str(op_code, 13, B_sel, 4);
		break;
	case 'B':
		dest_sel = int_to_bin(str_to_int(op_data[1]), 4);
		A_sel = int_to_bin(str_to_int(op_data[2]), 4);
		const_in = int_to_bin(str_to_int(op_data[3]), 16);
		op_code = conc_str(op_code, 5, dest_sel, 4);
		op_code = conc_str(op_code, 9, A_sel, 4);
		op_code = conc_str(op_code, 13, const_in, 16);
		break;
	case 'C':
		const_in = int_to_bin(str_to_int(op_data[1]), 16);
		op_code = conc_str(op_code, 5, "00000000", 8);
		op_code = conc_str(op_code, 13, const_in, 16);
		break;
	case 'l':
		dest_sel = int_to_bin(str_to_int(op_data[1]), 4);
		A_sel = int_to_bin(str_to_int(op_data[2]), 4);
		op_code = conc_str(op_code, 5, dest_sel, 4);
		op_code = conc_str(op_code, 9, A_sel, 4);
		break;
	case 's':
		A_sel = int_to_bin(str_to_int(op_data[1]), 4);
		B_sel = int_to_bin(str_to_int(op_data[2]), 4);
		op_code = conc_str(op_code, 5, "0000", 4);
		op_code = conc_str(op_code, 9, A_sel, 4);
		op_code = conc_str(op_code, 13, B_sel, 4);
		break;
	case 'j':
		A_sel = int_to_bin(str_to_int(op_data[1]), 4);
		op_code = conc_str(op_code, 5, "0000", 4);
		op_code = conc_str(op_code, 9, A_sel, 4);
		break;
	default:
		break;
	}
	return op_code;
}

int main() {
	setlocale(LC_ALL, "Russian");
	initialize();
	printf("Info file here: info.txt\n");
	printf("Binary log here: bin_log.txt\n");
	char asm_file_path[100], mif_file_path[_MAX_STRING_SIZE];
	char asm_data[_MAX_COMMANDS_STACK_SIZE][32];

	printf("asm file path: ");
	gets(asm_file_path);

	FILE *asm_file = fopen(asm_file_path, "r");
	FILE *bin_log = fopen("bin_log.txt", "w");

	char temp_comm[_MAX_STRING_SIZE];
	int asm_pointer = 0;

	while (fgets(temp_comm, _MAX_STRING_SIZE, asm_file)) {
		char* op_code = translate(parse_line(temp_comm));
		for (int i = 0; i < 32; i++) {
			fprintf(bin_log, "%c", op_code[i]);
			asm_data[asm_pointer][i] = op_code[i];
		}
		asm_pointer++;
		fprintf(bin_log, "\n");
	}
	fclose(bin_log);

	printf("mif file path: ");
	gets(mif_file_path);
	FILE *mif_file = fopen(mif_file_path, "r");

	char** mif_file_data = (char**)malloc(_MAX_COMMANDS_STACK_SIZE * 10 * sizeof(char*));
	int mif_file_pointer = 0;
	while (1) {
		mif_file_data[mif_file_pointer] = (char*)malloc(_MAX_STRING_SIZE * sizeof(char));
		if (!fgets(mif_file_data[mif_file_pointer], _MAX_STRING_SIZE, mif_file) || 
			strcmp(mif_file_data[mif_file_pointer], "CONTENT BEGIN\n") == 0)
			break;
		mif_file_pointer++;
	}
	fclose(mif_file);
	mif_file = fopen(mif_file_path, "w");
	for (int i = 0; i < mif_file_pointer + 1; i++) {
		fputs(mif_file_data[i], mif_file);
	}
	for (int i = 0; i < asm_pointer; i++) {
		fprintf(mif_file, "\t%d : %lld;\n", i, bin_to_int(asm_data[i], 32));
		for (int j = 0; j < 32; j++) {
			printf("%c", asm_data[i][j]);
		}
		printf("\n");
	}
	fprintf(mif_file, "\t[%d..%d] : 0;\nEND;", asm_pointer, _MIF_FILE_DEPTH - 1);
	fclose(mif_file);
	printf("Done!\n");
	system("pause");
	return 0;
}