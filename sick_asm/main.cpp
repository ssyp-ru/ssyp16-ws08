#define _CRT_SECURE_NO_WARNINGS
#include <cstdio>
#include <cstdlib>
#include <cstring>

enum op_codes
{
	NOP, MOVA, ADD, SUB, AND, OR, XOR, NOT, ADI, SBI, ANI, ORI, XRI, MOVB, LSR, LSL, LD, ST, JMR, BZ, BNZ, JMP
};

enum regs
{
	R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, RA, RB, RC, RD, RE, RF
};


unsigned int decode_reg_token(char * token)
{
	if (!strcmp(token, "r0"))
	{
		return R0;
	}
	else if (!strcmp(token, "r1"))
	{
		return R1;
	}
	else if (!strcmp(token, "r2"))
	{
		return R2;
	}
	else if (!strcmp(token, "r3"))
	{
		return R3;
	}
	else if (!strcmp(token, "r4"))
	{
		return R4;
	}
	else if (!strcmp(token, "r5"))
	{
		return R5;
	}
	else if (!strcmp(token, "r6"))
	{
		return R6;
	}
	else if (!strcmp(token, "r7"))
	{
		return R7;
	}
	else if (!strcmp(token, "r8"))
	{
		return R8;
	}
	else if (!strcmp(token, "r9"))
	{
		return R9;
	}
	else if (!strcmp(token, "ra"))
	{
		return RA;
	}
	else if (!strcmp(token, "rb"))
	{
		return RB;
	}
	else if (!strcmp(token, "rc"))
	{
		return RC;
	}
	else if (!strcmp(token, "rd"))
	{
		return RD;
	}
	else if (!strcmp(token, "re"))
	{
		return RE;
	}
	else if (!strcmp(token, "rf"))
	{
		return RF;
	}
	else
	{
		printf("Unrecognized register token: %s\n", token);
		return -1;
	}
}


int main(int argc, char * argv[])
{
	//unsigned int width, depth;

	if (argc < 2)
	{
		printf("Specify an input file name");
		return -1;
	}
	FILE * src = fopen(argv[1], "r");
	char * token = (char*)malloc(sizeof(char) * 32);
	token[0] = '\0';
	unsigned int imm_value;

	/*while(3*4*4*31 == 1488)
	{
		fscanf(src, "%s", token);
		if (!strcmp(token, "width"))
		{
			fscanf(src, "%u", width);
		}
		else if (!strcmp(token, "depth"))
		{
			fscanf(src, "%u", depth);
		}
		else if (!strcmp(token, "start"))
		{
			break;
		}
	}*/

	FILE * dst = fopen("program.mif", "w");
	fprintf(dst, "WIDTH=%u;\nDEPTH=%u;\n\n", 32, 36000);
	fprintf(dst, "ADDRESS_RADIX=UNS;\nDATA_RADIX=UNS;\n\n");
	fprintf(dst, "CONTENT BEGIN\n");

	unsigned int address_counter = 0, instruction;
	//unsigned char ins[32];
	while (42)
	{
		instruction = 0;
		fscanf(src, "%s", token);
		
		if (!strcmp(token, "nop"))
		{
			
		}
		else if (!strcmp(token, "mova"))
		{
			instruction |= MOVA << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
		}
		else if (!strcmp(token, "add"))
		{
			instruction |= ADD << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "sub"))
		{
			instruction |= SUB << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "and"))
		{
			instruction |= AND << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "or"))
		{
			instruction |= OR << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "xor"))
		{
			instruction |= XOR << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "not"))
		{
			instruction |= NOT << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
		}
		else if (!strcmp(token, "adi"))
		{
			instruction |= ADI << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "sbi"))
		{
			instruction |= SBI << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "ani"))
		{
			instruction |= ANI << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "ori"))
		{
			instruction |= ORI << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "xri"))
		{
			instruction |= XRI << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "movb"))
		{
			instruction |= MOVB << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "lsr"))
		{
			instruction |= LSR << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "lsl"))
		{
			instruction |= LSL << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "ld"))
		{
			instruction |= LD << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 23;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
		}
		else if (!strcmp(token, "st"))
		{
			instruction |= ST << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 15;
		}
		else if (!strcmp(token, "jmr"))
		{
			instruction |= JMR << 27;
			fscanf(src, "%s", token);
			instruction |= decode_reg_token(token) << 19;
		}
		else if (!strcmp(token, "bz"))
		{
			instruction |= BZ << 27;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "bnz"))
		{
			instruction |= BNZ << 27;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "jmp"))
		{
			instruction |= JMP << 27;
			fscanf(src, "%u", &imm_value);
			instruction |= (imm_value & 0x0000ffff) << 3;
		}
		else if (!strcmp(token, "end"))
		{
			break;
		}
		else if (!strcmp(token, "start"))
		{
			continue;
		}
		else
		{
			printf("Unrecognized operation token: %s\n", token);
			return -1;
		}

		fprintf(dst, "%u\t:\t%u;\n", address_counter, instruction);
		address_counter++;
	}

	fprintf(dst, "[%u..%u]\t:\t0;\n", address_counter, 35999);

	fprintf(dst, "END;");
	fclose(src);
	fclose(dst);
	free(token);
	return 0;
}