# EasyDeliveryCoLanCoop

LAN-кооп мод для Easy Delivery Co на базе BepInEx 5.

Текущая версия: 0.2.18

## Описание репозитория

EasyDeliveryCoLanCoop — это мод, который добавляет LAN-кооператив в Easy Delivery Co: подключение Host/Client, синхронизацию игроков и машин, базовую синхронизацию прогресса и расширенную синхронизацию автомобильных звуков.

Репозиторий предназначен для:

- использования готовой сборки мода;
- сборки из исходников;
- совместной доработки и отладки сетевой части.

Статус проекта: experimental (активная разработка).

## Что умеет мод

- LAN-сетевой слой Host/Client поверх UDP
- Автообнаружение хоста в локальной сети (broadcast)
- Синхронизация игроков, машин и груза в машине
- Синхронизация денег и части прогресса через ключи сохранений
- Синхронизация звуков машины:
  - клаксон
  - шины/скольжение
  - удары/столкновения
- Режим работы игры в фоне (не останавливается при потере фокуса)

## Ограничения

- Мод в статусе experimental, не все игровые системы реплицируются 1:1
- Авторитет у хоста: хост принимает/применяет ключевые изменения и рассылает снапшоты
- Возможны рассинхроны на сложной физике и нестандартных сценариях

## Требования

- Windows
- Easy Delivery Co
- BepInEx 5 (Mono)

## Установка

1. Установите BepInEx 5 в папку игры.
2. Скопируйте собранный файл EasyDeliveryCoLanCoop.dll в:
   - BepInEx/plugins/EasyDeliveryCoLanCoop/
3. Если Harmony не подхватывается автоматически, убедитесь, что 0Harmony.dll доступен (обычно через BepInEx, либо рядом с плагином).

## Быстрый старт

### Вариант 1: через конфиг

Файл конфига:
- BepInEx/config/EasyDeliveryCoLanCoop.cfg

Параметр Mode:
- Off
- Host
- Client

Для клиента также задайте HostAddress и Port.

### Вариант 2: через аргументы запуска (рекомендуется)

Поддерживаемые аргументы:
- --lancoop-server или --lancoop-host
- --lancoop-client
- --lancoop-off

Пример:
- EasyDeliveryCo.exe --lancoop-server

## Готовые bat-скрипты

В корне проекта есть:

- run_lancoop_server.bat
- run_lancoop_client.bat
- run_lancoop_off.bat

Примеры запуска из PowerShell:

- .\run_lancoop_server.bat "D:\Easy Delivery Co\EasyDeliveryCo.exe"
- .\run_lancoop_client.bat "D:\Easy Delivery Co\EasyDeliveryCo.exe"

## Важные настройки

### Сеть

- Mode
- Port
- HostAddress
- TickRate
- ClientTimeoutSeconds

### LAN discovery

- AutoDiscovery
- DiscoveryPort
- DiscoveryIntervalMs

### Звуки машин

- CarSoundSyncEnabled
- CarSoundSyncMode
  - All: клаксон + шины + удары
  - HornOnly: только клаксон
- CarSoundSyncMinIntervalSeconds

### Прогресс/сейв

- SaveKeySyncEnabled
- SaveKeyDenySubstrings
- ClientReceivesHostSaveOnJoin
- ClientWipeLocalSaveOnJoin

### Позиции игроков

- Positions.Enabled
- Positions.SaveIdOverride
- Positions.ClientTeleportOnJoin

### Отладка

- Debug.DebugLogs
- Debug.DebugLogIntervalSeconds

## Логи

Ищите логи BepInEx в стандартной папке игры.

Полезные маркеры в логах:

- UDP host listening
- UDP client started
- Client registered
- Snapshot send / Snapshot recv
- CarSfx send / CarSfx recv / CarSfx relay

## Сборка из исходников

1. Положите необходимые зависимости в папку lib (см. lib/README.md).
2. Выполните:

   dotnet build -c Release

3. Готовая сборка:

   bin/Release/netstandard2.1/EasyDeliveryCoLanCoop.dll

## Документы проекта

- Changelog: [CHANGELOG.md](CHANGELOG.md)
- Contributing guide: [CONTRIBUTING.md](CONTRIBUTING.md)

## Лицензия

Проект распространяется по лицензии MIT.
См. [LICENSE](LICENSE).

## Обратная связь

При баг-репорте прикладывайте:

- версию мода
- логи хоста и клиента
- шаги воспроизведения
- какие настройки в cfg использовались

---

# English

LAN co-op mod for Easy Delivery Co built with BepInEx 5.

Current version: 0.2.18

## Repository Description

EasyDeliveryCoLanCoop adds LAN multiplayer to Easy Delivery Co with Host/Client networking, player/car sync, partial progression sync, and extended vehicle SFX sync.

This repository is intended for:

- using the released DLL;
- building from source;
- collaborative networking/mod development.

Project status: experimental.

## Features

- UDP-based LAN Host/Client networking
- Automatic host discovery over LAN broadcast
- Player, car, and in-car cargo synchronization
- Money and partial save/progression synchronization
- Vehicle sound synchronization:
  - horn
  - tire/skid sounds
  - impact/crash sounds
- Runs in background (does not stop when window loses focus)

## Requirements

- Windows
- Easy Delivery Co
- BepInEx 5 (Mono)

## Installation

1. Install BepInEx 5 into the game folder.
2. Copy EasyDeliveryCoLanCoop.dll into:
   - BepInEx/plugins/EasyDeliveryCoLanCoop/
3. If Harmony is not auto-resolved, ensure 0Harmony.dll is available (usually via BepInEx or next to the plugin).

## Quick Start

### Option 1: Config mode

Config file:
- BepInEx/config/EasyDeliveryCoLanCoop.cfg

Mode values:
- Off
- Host
- Client

For client mode also set HostAddress and Port.

### Option 2: Launch arguments (recommended)

Supported args:
- --lancoop-server or --lancoop-host
- --lancoop-client
- --lancoop-off

Example:
- EasyDeliveryCo.exe --lancoop-server

## Included Launcher Scripts

- run_lancoop_server.bat
- run_lancoop_client.bat
- run_lancoop_off.bat

PowerShell examples:

- .\run_lancoop_server.bat "D:\Easy Delivery Co\EasyDeliveryCo.exe"
- .\run_lancoop_client.bat "D:\Easy Delivery Co\EasyDeliveryCo.exe"

## Important Settings

### Network

- Mode
- Port
- HostAddress
- TickRate
- ClientTimeoutSeconds

### LAN Discovery

- AutoDiscovery
- DiscoveryPort
- DiscoveryIntervalMs

### Vehicle Sounds

- CarSoundSyncEnabled
- CarSoundSyncMode
  - All: horn + tires + impacts
  - HornOnly: horn only
- CarSoundSyncMinIntervalSeconds

### Save/Progress

- SaveKeySyncEnabled
- SaveKeyDenySubstrings
- ClientReceivesHostSaveOnJoin
- ClientWipeLocalSaveOnJoin

### Player Positions

- Positions.Enabled
- Positions.SaveIdOverride
- Positions.ClientTeleportOnJoin

### Debug

- Debug.DebugLogs
- Debug.DebugLogIntervalSeconds

## Logs

Use BepInEx logs from the game folder.

Useful log markers:

- UDP host listening
- UDP client started
- Client registered
- Snapshot send / Snapshot recv
- CarSfx send / CarSfx recv / CarSfx relay

## Build From Source

1. Put required dependencies into lib (see lib/README.md).
2. Run:

   dotnet build -c Release

3. Build output:

   bin/Release/netstandard2.1/EasyDeliveryCoLanCoop.dll

## Project Documents

- Changelog: [CHANGELOG.md](CHANGELOG.md)
- Contributing: [CONTRIBUTING.md](CONTRIBUTING.md)

## License

MIT License.
See [LICENSE](LICENSE).

## Feedback

When reporting bugs, include:

- mod version
- host/client logs
- reproduction steps
- relevant config values
