"""
    Формат команды: сначала идёт название операции (список ниже), затем список параметров.
    Оператор и параметры разделяются пробелом, каждая команда должна быть на отдельной строке.
    Команды можно подать тремя способами:
        A: 3 числа от 0 до 15 - номера регистров: dest_sel, A_sel и B_sel.
        B: 2 числа от 0 до 15 - номера регистров, 1 число от 0 до 65535: dest_sel, A_sel, const_in.
        C: 1 число от 0 до 65535: const_in.
    Также есть 4 исключения:
        nop - без параметров;
        ld - 2 числа от 0 до 15: dest_sel, A_sel;
        st - 2 числа от 0 до 15: A_sel, B_sel;
        jmr - 1 число от 0 до 15: A_sel.
    Тип каждой команды можно посмотреть ниже.
    Лог выполнения программы можно посмотреть в файле asm_log.txt
    После запуска программы нужно открыть mif-файл в ide заново
"""

"""
    Шаблон выхода интерпретатора - 32 бита, записанные в десятичном виде:
        [31:27] - op_code;
        [26:23] - dest_sel;
        [22:19] - A_sel;
        [18:15] - B_sel;
        [18:3] - const_in;
    В зависимости от типа команды некоторые параметры могут отсутствовать.
"""

""" Задавать самим """

path = 'C:\\Main_Circuit\\test.asm'  # ASM FILE PATH
mif_path = 'C:\\Main_Circuit\\rom.mif'  # MIF FILE PATH
mif_file_depth = 36000  # число ячеек в mif-файле


class Translator:

    AVAILABLE_COMMANDS = {
        'nop': 0,
        'A_pattern': {
            'mova': 1,
            'add': 2,
            'sub': 3,
            'and': 4,
            'or': 5,
            'xor': 6,
            'not': 7,
            'movb': 13,
            'lsr': 14,
            'lsl': 15,
        },
        'B_pattern': {
            'adi': 8,
            'sbi': 9,
            'ani': 10,
            'ori': 11,
            'xri': 12
        },
        'ld': 16,
        'st': 17,
        'jmr': 18,
        'C_pattern': {
            'bz': 19,
            'bnz': 20,
            'jmp': 21
        }
    }

    def __init__(self, operation, params):
        self.operation = operation
        self.params = params
        self.op_code = ''

    def str_bin(self, x):
        return str(bin(int(x)))

    def parse_int_to_bin(self, x, trunc_len):
        x = x[2:]
        if len(x) < trunc_len:
            x = '0' * (trunc_len - len(x)) + x
        return x

    def translate(self):
        if self.operation == 'nop':
            return '0' * 32
        op = param_1 = param_2 = param_3 = None
        op_code = ""
        if self.operation in self.AVAILABLE_COMMANDS['A_pattern']:
            op = self.parse_int_to_bin(self.str_bin(
                self.AVAILABLE_COMMANDS['A_pattern'][self.operation]), 5)
            param_1 = self.parse_int_to_bin(self.str_bin(self.params[0]), 4)
            param_2 = self.parse_int_to_bin(self.str_bin(self.params[1]), 4)
            param_3 = self.parse_int_to_bin(self.str_bin(self.params[2]), 4)
            op_code = op + param_1 + param_2 + param_3

        elif self.operation in self.AVAILABLE_COMMANDS['B_pattern']:
            op = self.parse_int_to_bin(self.str_bin(
                self.AVAILABLE_COMMANDS['B_pattern'][self.operation]), 5)
            param_1 = self.parse_int_to_bin(self.str_bin(self.params[0]), 4)
            param_2 = self.parse_int_to_bin(self.str_bin(self.params[1]), 4)
            param_3 = self.parse_int_to_bin(self.str_bin(self.params[2]), 16)
            op_code = op + param_1 + param_2 + param_3

        elif self.operation in self.AVAILABLE_COMMANDS['C_pattern']:
            op = self.parse_int_to_bin(self.str_bin(
                self.AVAILABLE_COMMANDS['C_pattern'][self.operation]), 5)
            param_1 = self.parse_int_to_bin(self.str_bin(self.params[0]), 16)
            op_code = op
            op_code += '0' * 8
            op_code += param_1

        elif self.operation == 'ld':
            op = self.parse_int_to_bin(self.str_bin(
                self.AVAILABLE_COMMANDS['ld']), 5)
            param_1 = self.parse_int_to_bin(self.str_bin(self.params[0]), 4)
            param_2 = self.parse_int_to_bin(self.str_bin(self.params[1]), 4)
            op_code = op + param_1 + param_2

        elif self.operation == 'st':
            op = self.parse_int_to_bin(self.str_bin(
                self.AVAILABLE_COMMANDS['st']), 5)
            param_1 = self.parse_int_to_bin(self.str_bin(self.params[0]), 4)
            param_2 = self.parse_int_to_bin(self.str_bin(self.params[1]), 4)
            op_code = op + ('0' * 4) + param_1 + param_2

        elif self.operation == 'jmr':
            op = self.parse_int_to_bin(self.str_bin(
                self.AVAILABLE_COMMANDS['jmr']), 5)
            param_1 = self.parse_int_to_bin(self.str_bin(self.params[0]), 4)
            op_code = op + ('0' * 4) + param_1

        op_code += '0' * (32 - len(op_code))
        return op_code

data = open(path, 'r').readlines()
mif_file_data = open(mif_path, 'r').readlines()
mif_file = open(mif_path, 'w')

log = open('asm_log.txt', 'w')

for i in range(len(mif_file_data) - 1, 0, -1):
    if mif_file_data[i] == 'CONTENT BEGIN\n':
        mif_file_data.remove(mif_file_data[i])
        break
    mif_file_data.remove(mif_file_data[i])

counter = 0

for line in data:
    line = line.replace('\n', '').split(' ')
    operation = line[0]
    params = line[1:]
    tslr = Translator(operation, params)
    op_code = tslr.translate()
    log.write(op_code + '\n')
    mif_file_data.append('\t' + str(counter) + " : " +
                         str(int(op_code, 2)) + ';\n')
    counter += 1
mif_file_data.append(
    '\t[' + str(counter) + '..' + str(mif_file_depth - 1) + ']' + ' : 0;\n')
mif_file_data.append('END;')
for line in mif_file_data:
    mif_file.write(line)
mif_file.close()
log.close()
