# node-php-dev

這個專案提供一個基於 Node.js 20 Alpine 的開發容器，內建 PHP 8.3 與常見擴充，方便在同一個映像中同時執行 Node 與 PHP 相關工具。

## 特色

- 基底：`node:20-alpine`
- PHP 版本：8.3（`php83`，並建立 `/usr/bin/php` 連結）
- 常用擴充：`mbstring`, `json`, `openssl`, `pdo_mysql`, `mysqli`, `xml`, `curl`, `fileinfo` 等
- 預設工作目錄：`/var/www/html`

## 快速開始

### 建置映像

```sh
docker build -t node-php-dev:local .
```

### 進入容器

```sh
docker run --rm -it -v "$PWD":/var/www/html node-php-dev:local sh
```

## Docker Hub 自動發布

本專案使用 GitHub Actions，在推送 tag 時自動建置並發布映像：

- Workflow：`.github/workflows/docker-publish.yml`
- 觸發條件：`git push --tags`
- 標籤格式：`joshting1999/node-php-dev:${TAG_NAME}`

### 需要設定的 Secrets

- `DOCKERHUB_USERNAME`
- `DOCKERHUB_TOKEN`

## 版本與標籤建議

```sh
git tag v0.1.0
git push origin v0.1.0
```
