#!/usr/bin/env bash

PATH_DOWNLOAD=./
USER_AGENT="User-Agent: Mozilla/5.0 (Linux; U; Tizen 2.0; en-us) AppleWebKit/537.1 (KHTML, like Gecko) Mobile TizenBrowser/2.0"

# Tracks
NAME_SCRIPT=tracks
URL=https://cub.red/plugin
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# Онлайн мод
NAME_SCRIPT=online_mod.js
URL=https://nb557.github.io/plugins
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
    echo ${URL}
    # Зеркало
    URL2=http://nb557.surge.sh
    echo "Используем зеркало для online_mod.js"
    if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL2}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
        echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
        curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL2}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
    else
        echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
        echo ${URL2}
    fi
fi

# Выход в меню
NAME_SCRIPT=e.js
URL=https://tsynik.github.io/lampa
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# Отзывы и рейтинг (отключен у меня в лампе)
NAME_SCRIPT=o.js
URL=http://newtv.mail66.org
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# Рейтинг Кинопоиск и IMDB
NAME_SCRIPT=rating.js
URL=https://nb557.github.io/plugins
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# TMDB Proxy (отключено)
NAME_SCRIPT=tmdb-proxy
URL=https://cub.red/plugin
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый!"
fi

# Красивая визуализация пред. загрузки торрентов
NAME_SCRIPT=ts-preload.js
URL=https://plugin.rootu.top
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# Приятные мелочи
NAME_SCRIPT=tricks.js
URL=https://andreyurl54.github.io/diesel5
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# IPTV свои плейлисты
NAME_SCRIPT=tv.js
URL=https://plugin.rootu.top
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# LME Torrent manager
# Плагин добавляет возможность скачивать торрент через клиенты.
# Плагин выполняет функцию менеджера загрузок
NAME_SCRIPT=torrentmanager.js
URL=https://lampame.github.io/main
if [[ $(curl -is -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} | head -n 2 | grep -i HTTP | awk '{print $2}') == 200 ]]; then
    echo "Скрипт ${NAME_SCRIPT} доступен. Скачиваем его на GitHub!"
    curl -H "$USER_AGENT" -k -4s --max-time 90 --retry-delay 3 --retry 5 ${URL}/${NAME_SCRIPT} > ${PATH_DOWNLOAD}/${NAME_SCRIPT}
else
    echo "$(date +"%d.%m.%y %H:%M:%S"): Скрипт ${NAME_SCRIPT} недоступен. Не скачиваем его на GitHub,оставляем старый\!"
fi

# Условие проверяет не пусты ли сами файлы. Дело в том, что файл может существовать на удаленном сервере, но может быть пустым от такого первое if не спасает. Если такой будет, то делаем git restore , чтобы не закоммить в git пустой файл.
for filename in {torrentmanager.js,tracks,online_mod.js,e.js,o.js,rating.js,tmdb-proxy,ts-preload.js,tricks.js,tv.js}; do if [[ -s ${PATH_DOWNLOAD}${filename} ]]; then echo "No empty $filename";else echo -e "\e[1;33mEmpty\033[0m $filename" && git restore ./$filename; fi; done

exit 0
