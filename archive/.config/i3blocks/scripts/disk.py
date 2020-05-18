import shutil


disk = shutil.disk_usage("/")
total = int(disk.total * 1e-9)
used = int(disk.used * 1e-9)

print(f"{used}/{total} GB")

