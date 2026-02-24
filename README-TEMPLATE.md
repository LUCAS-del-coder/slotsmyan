# 網站模板使用說明

本專案已改為**模板**：版面、文案、圖片均保留，僅將**網站名稱**與**所有連結**改為可設定的佔位符。您只需修改設定檔並執行一鍵腳本，即可產生屬於自己的網站。

## 使用步驟

### 1. 編輯設定檔 `template-config.json`

用文字編輯器開啟 `template-config.json`，依需求修改下列項目：

| 設定鍵 | 說明 | 範例 |
|--------|------|------|
| `SITE_NAME` | 網站顯示名稱（如標題、footer） | `"My New Slots"` |
| `SITE_NAME_SHORT` | 網站簡稱（用於關於我們等內文） | `"NewSlots"` |
| `SITE_DOMAIN` | 網域（不含 https） | `"newsite.com"` |
| `SITE_URL` | 網站完整網址（不含結尾斜線） | `"https://newsite.com"` |
| `SITE_LOGO_ALT` | Logo 的 alt 文字 | `"My New Slots Logo"` |
| `GA_ID` | Google Analytics 測量 ID（可改為自己的） | `"G-XXXXXXXX"` |
| `LINK_MYANCASINO` | 合作站 A 首頁連結 | 依實際網址修改 |
| `LINK_MYANCASINO_BEST` | 合作站 A 特定頁連結 | 依實際網址修改 |
| `LINK_INYA7` ~ `LINK_POPA777` | 各合作/聯盟站連結 | 依實際網址修改 |
| `LINK_SHWECASINO99`、`LINK_MYANSLOTSAPP` | 其他合作站連結 | 依實際網址修改 |
| `LINK_MYANBETS`、`LINK_WINKYAT99` | Footer 常用連結 | 依實際網址修改 |
| `PARTNER_MYANCASINO`、`PARTNER_SHWECASINO99`、`PARTNER_MYANSLOTSAPP` | 合作站顯示名稱 | 依實際品牌名稱修改 |

**注意：**  
- 網址請勿在結尾多加 `/`，腳本會自動在需要處加上。  
- 修改後請存檔。

### 2. 執行套用腳本

在專案根目錄（與 `template-config.json` 同層）開啟終端機，執行：

```bash
node apply-template.js
```

腳本會：

- 讀取 `template-config.json`
- 將 `index.html`、`myan66.html`、`a80.html` 中的 `{{KEY}}` 替換為設定值
- 將結果與 `assets`、`article`、`favicon.ico` 等一併輸出到 **`output`** 資料夾

### 3. 使用產出的網站

- 客製化後的網站檔案在 **`output`** 資料夾內。
- 將 `output` 內所有檔案上傳至您的主機或靜態網站空間即可。
- 本專案根目錄的 HTML 維持為「帶佔位符的模板」，可重複修改 `template-config.json` 再執行 `node apply-template.js` 產生不同版本。

## 檔案說明

- **`template-config.json`**：網站名稱與連結的設定檔（唯一需要手動編輯的設定）。
- **`apply-template.js`**：Node.js 腳本，依設定替換佔位符並輸出到 `output`。
- **`index.html`、`myan66.html`、`a80.html`**：內含 `{{SITE_NAME}}`、`{{SITE_URL}}`、`{{LINK_xxx}}` 等佔位符的模板檔，請勿手動改佔位符以外的結構。
- **`output/`**：執行腳本後產生的客製化網站，對外上線請使用此資料夾內容。

## 需求

- 已安裝 **Node.js**（建議 v14 以上）。若未安裝，請至 [nodejs.org](https://nodejs.org/) 下載。

---

只要修改 `template-config.json` 的網站名與連結，再執行 `node apply-template.js`，即可在保留版型與內容的前提下，產出屬於自己的網站。
