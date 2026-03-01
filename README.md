# EasyDeliveryCoLanCoop (BepInEx)

Экспериментальный LAN-кооп **с нуля** для *Easy Delivery Co.*

Что делает текущая версия:
- Поднимает LAN сервер/клиент поверх UDP (чистый `System.Net.Sockets`)
- Синхронизирует **прогресс/сейв-ключи** через `sSaveSystem` (дельты ключей)
- Синхронизирует **доску заказов** (`jobBoard`) снапшотом списка `jobs` (базово)
- Синхронизирует **деньги** и **время суток** (минимально)
- Показывает и синхронизирует **игроков** (удалённые игроки отображаются капсулой)
- Синхронизирует **машину** и **груз в машине** (payload) снапшотом от хоста

Ограничения:
- Это не "готовый" кооп: физика/AI/все интеракции ещё не реплицируются.
- Авторитетный хост: клиенты отправляют запросы, хост применяет и рассылает.
- Управление машиной у клиентов пока не согласовано (возможны рывки/рассинхрон, если клиент пытается ехать локально).

## Установка
1) Установи BepInEx 5 (Mono) в папку игры.
2) Скопируй `EasyDeliveryCoLanCoop.dll` в `BepInEx/plugins/EasyDeliveryCoLanCoop/`.
3) Если BepInEx не подхватит Harmony автоматически, положи `0Harmony.dll` рядом с плагином.

## Настройка
Конфиг создаётся в `BepInEx/config/EasyDeliveryCoLanCoop.cfg`.

- `Mode`:
  - `Off`
  - `Host`
  - `Client`
- `Port`: UDP порт сервера
- `HostAddress`: IP хоста для клиента (можно оставить пустым при включённом авто-discovery)

### Запуск мода как сервер (без правки конфига)
Можно передать аргумент запуска игры:
- `--lancoop-server` (или `--lancoop-host`) — принудительно запускает мод в режиме Host
- `--lancoop-client` — принудительно запускает мод в режиме Client
- `--lancoop-off` — принудительно отключает сетевой режим

Пример ярлыка для серверного запуска:
`EasyDeliveryCo.exe --lancoop-server`

Готовые `.bat` в корне проекта:
- `run_lancoop_server.bat`
- `run_lancoop_client.bat`
- `run_lancoop_off.bat`

Примеры:
- `run_lancoop_server.bat "D:\Easy Delivery Co\EasyDeliveryCo.exe"`
- `run_lancoop_client.bat "D:\Easy Delivery Co\EasyDeliveryCo.exe"`

### LAN discovery
- `AutoDiscovery`: включить/выключить авто‑поиск хоста в локальной сети
- `DiscoveryPort`: порт, на который хост шлёт broadcast, а клиент слушает
- `DiscoveryIntervalMs`: частота broadcast у хоста

## Сборка
Перед сборкой положи нужные DLL в папку `lib/` (см. `lib/README.md`), затем:

`dotnet build -c Release`

Сейчас проект собирается под `netstandard2.1` (под Unity-сборки игры).
