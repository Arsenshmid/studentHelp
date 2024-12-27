#!/bin/bash

# Массив абсолютных путей к файлам
files=(
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\redux\counterSlice.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\redux\store.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\screens\lab1.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\screens\lab2.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\screens\lab3.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\screens\lab4_2.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\screens\lab4.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\App.js"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\app.json"
    "C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\index.js"
)

# Путь к выходному файлу
output_file="C:\Users\Arsenshmid\Desktop\studentHelp\chomchoevAndreyNew\сохраненные_файлы.txt"

# Очистка выходного файла
> "$output_file"

# Обход массива файлов
for file in "${files[@]}"
do
    # Проверка, существует ли файл
    if [ -f "$file" ]; then
        # Вывод полного пути файла
        echo "File Path: $file" >> "$output_file"
        echo "==================================================" >> "$output_file"
        
        # Добавление содержимого файла
        cat "$file" >> "$output_file"
        
        # Разделитель между файлами
        echo -e "\n\n==================================================\n\n" >> "$output_file"
    else
        echo "Файл не найден: $file" >> "$output_file"
    fi
done

# Открытие файла (для Windows)
start "" "$output_file"
# Для Linux можно использовать: xdg-open "$output_file"
# Для MacOS можно использовать: open "$output_file"
