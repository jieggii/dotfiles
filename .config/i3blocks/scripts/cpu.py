import psutil


usage = psutil.cpu_percent(interval=0.1)
temperature = psutil.sensors_temperatures().get("amdgpu")[0].current


print(f"{int(usage)}%, {int(temperature)}°C")
