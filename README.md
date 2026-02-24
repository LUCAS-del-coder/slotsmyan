# Slots Myan (slotsmyan.com)

靜態 SEO 網站，使用模板設定產生。修改 `template-config.json` 後由建置步驟產生 `output` 資料夾供部署。

## 本地開發

```bash
# 安裝（Vercel 會自動執行）
npm install

# 依 template-config.json 產生網站到 output/
npm run build
```

## 部署到 Vercel

1. 將此專案推送到 **GitHub**（見下方步驟）。
2. 前往 [vercel.com](https://vercel.com) 登入，點 **Add New Project**。
3. **Import** 你的 GitHub 倉庫。
4. Vercel 會自動偵測：
   - **Build Command**: `npm run build`
   - **Output Directory**: `output`
5. 若沒有自動帶入，請在專案設定中手動設定：
   - **Root Directory**: 保持預設（勿改為子資料夾）。
   - **Build Command**: `npm run build`
   - **Output Directory**: `output`
6. 點 **Deploy**，完成後會得到 `xxx.vercel.app` 網址。可綁定自訂網域 **slotsmyan.com**（在 Vercel 專案 → Settings → Domains）。

## 修改網站名稱與連結

編輯 `template-config.json`，存檔後重新推送至 GitHub，Vercel 會自動重新部署。
