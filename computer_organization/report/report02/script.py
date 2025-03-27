def read_data_from_file(file_path):
    """从文件中读取数据并返回行列表"""
    with open(file_path, 'r') as file:
        lines = [line.strip() for line in file if line.strip()]
    return lines

def convert_to_markdown_table(lines):
    """将数据行转换为Markdown表格"""
    # 提取表头
    headers = lines[0].split()
    
    # 处理数据行
    rows = []
    for line in lines[1:]:
        rows.append(line.split())
    
    # 计算每列的最大宽度
    col_widths = [len(header) for header in headers]
    for row in rows:
        for i, cell in enumerate(row):
            if len(cell) > col_widths[i]:
                col_widths[i] = len(cell)
    
    # 构建Markdown表格
    markdown = []
    
    # 表头行
    header_row = "| " + " | ".join(header.center(col_widths[i]) for i, header in enumerate(headers)) + " |"
    markdown.append(header_row)
    
    # 分隔行
    separator_row = "|-" + "-|-".join("-" * col_widths[i] for i in range(len(headers))) + "-|"
    markdown.append(separator_row)
    
    # 数据行
    for row in rows:
        data_row = "| " + " | ".join(cell.center(col_widths[i]) for i, cell in enumerate(row)) + " |"
        markdown.append(data_row)
    
    return "\n".join(markdown)

def save_markdown_to_file(markdown_table, output_file):
    """将Markdown表格保存到文件"""
    with open(output_file, 'w') as file:
        file.write(markdown_table)

def main():
    # 输入和输出文件路径
    input_file = r".\zhenzhi4.txt"  # 替换为你的输入文件路径
    output_file = "output_table.md"  # 替换为你想要的输出文件路径
    
    try:
        # 从文件读取数据
        lines = read_data_from_file(input_file)
        
        # 转换为Markdown表格
        markdown_table = convert_to_markdown_table(lines)
        
        # 保存到文件
        save_markdown_to_file(markdown_table, output_file)
        
        print(f"Markdown表格已成功生成并保存到 {output_file}")
        
        # 可选：在控制台打印结果
        print("\n生成的Markdown表格预览:")
        print(markdown_table[:500] + "...")  # 只打印前500个字符作为预览
        
    except FileNotFoundError:
        print(f"错误：找不到输入文件 {input_file}")
    except Exception as e:
        print(f"发生错误: {str(e)}")

if __name__ == "__main__":
    main()