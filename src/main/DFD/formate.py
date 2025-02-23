import os
import csv

# 设置数据文件夹路径
folder_path = 'csv/'

# 获取所有 csv 文件
csv_files = [f for f in os.listdir(folder_path) if f.endswith('.csv')]

# 遍历所有 csv 文件
for csv_filename in csv_files:
    csv_file_path = os.path.join(folder_path, csv_filename)

    # 读取 CSV 文件
    with open(csv_file_path, 'r', newline='', encoding='utf-8') as csv_file:
        csv_reader = csv.reader(csv_file, quotechar='"')
        rows = list(csv_reader)

    # 写入 TXT 文件（使用 CSV 文件名）
    txt_filename = csv_filename.replace('.csv', '.txt')
    txt_file_path = os.path.join(folder_path, txt_filename)

    with open(txt_file_path, 'w', newline='', encoding='utf-8') as txt_file:
        for row in rows:
            # 对每个字段进行处理
            cleaned_row = [
                # 如果字段中有换行符（不管是否有逗号），都去掉换行符
                field.replace('\n', ' ').replace('\r', '') if field else field
                for field in row
            ]
            txt_file.write(','.join(cleaned_row) + '\n')

print("所有 CSV 文件已转换为 TXT 格式！")
