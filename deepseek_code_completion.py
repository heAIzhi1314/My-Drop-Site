from openai import OpenAI

client = OpenAI(
    api_key="<your api key>",
    base_url="https://api.deepseek.com/beta",
)

response = client.completions.create(
    model="deepseek-chat",
    prompt="def fib(a):",
    suffix="    return fib(a-1) + fib(a-2)",
    max_tokens=128
)
print(response.choices[0].text)

# 完整的斐波那契函数示例
def fib(a):
    if a <= 1:
        return a
    return fib(a-1) + fib(a-2)

# 测试函数
if __name__ == "__main__":
    # 计算前10个斐波那契数
    print("前10个斐波那契数:")
    for i in range(10):
        print(f"fib({i}) = {fib(i)}")
    
    # 使用API补全代码的示例
    print("\n使用DeepSeek API进行代码补全...")
    print("注意：需要替换为真实的API密钥才能运行")