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
