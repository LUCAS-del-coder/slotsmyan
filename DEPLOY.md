# 上傳 GitHub 並部署到 Vercel

## 一、上傳到 GitHub

### 1. 安裝 Git（若尚未安裝）

到 [git-scm.com](https://git-scm.com/) 下載並安裝。

### 2. 在專案資料夾開啟終端機

路徑請指向 **有 `index.html` 和 `package.json` 的那一層**（例如 `myanslots-seo-main` 專案夾）。

### 3. 初始化並推送到 GitHub

在終端機依序執行（請把 `你的使用者名稱` 和 `你的倉庫名` 換成你自己的）：

```bash
# 初始化 Git
git init

# 加入所有檔案
git add .

# 第一次提交
git commit -m "Initial commit: Slots Myan site template"

# 把 main 設為預設分支（若尚未是）
git branch -M main

# 連到你的 GitHub 倉庫（請先到 GitHub 建立一個「空倉庫」）
git remote add origin https://github.com/你的使用者名稱/你的倉庫名.git

# 推送到 GitHub
git push -u origin main
```

**建立空倉庫：**

1. 登入 [github.com](https://github.com) → 右上角 **+** → **New repository**
2. Repository name 填例如：`slotsmyan` 或 `slotsmyan-seo`
3. 選 **Public**，**不要**勾選 "Add a README file"
4. 點 **Create repository**，然後照頁面上的指示做（若你已執行上面的 `git init` 等，就只要執行 `git remote add origin ...` 和 `git push -u origin main`）

---

## 二、部署到 Vercel

### 1. 登入 Vercel

到 [vercel.com](https://vercel.com)，用 **GitHub 帳號**登入並授權 Vercel。

### 2. 匯入專案

1. 點 **Add New…** → **Project**
2. 在 **Import Git Repository** 選你剛推送的倉庫（例如 `slotsmyan`）
3. 點 **Import**

### 3. 建置設定（通常會自動帶入）

Vercel 會依 `package.json` 和 `vercel.json` 偵測，請確認：

| 設定項 | 應為 |
|--------|------|
| **Framework Preset** | Other |
| **Build Command** | `npm run build` |
| **Output Directory** | `output` |
| **Install Command** | `npm install`（預設即可） |

若沒有自動帶入，在 **Configure Project** 底下手動填 **Build Command** 和 **Output Directory**。

### 4. 部署

點 **Deploy**，等幾分鐘。完成後會給你一個網址，例如：  
`https://slotsmyan-xxx.vercel.app`

### 5. 綁定自己的網域 slotsmyan.com

1. 在 Vercel 專案頁點 **Settings** → **Domains**
2. 新增 **slotsmyan.com**（以及需要的 **www.slotsmyan.com**）
3. 依畫面指示到你的網域註冊商（如 Cloudflare、GoDaddy）新增 Vercel 提供的 DNS 記錄（CNAME 或 A 記錄）

之後每次把程式 **push 到 GitHub**，Vercel 都會自動重新建置並上線。
