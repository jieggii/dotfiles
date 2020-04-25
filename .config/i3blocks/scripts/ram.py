import psutil


mem = psutil.virtual_memory()
print(f"{int(mem.percent)}%")
