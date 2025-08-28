# Aureus Aquatics Website

Static site (HTML/CSS/JS) built for GitHub Pages + Cloudflare.

## Customize
- **GA4**: Replace `G-XXXXXXXXXX` in `<head>` across pages with your GA4 Measurement ID.
- **Google Search Console**: Replace `YOUR_SEARCH_CONSOLE_TOKEN`.
- **Mailchimp**: Replace the footer form `action` URL with your **Embedded form action** from Mailchimp (Audience → Signup forms → Embedded forms).
- **HubSpot**: In `contact.html`, paste your embed snippet (portalId + formId) into the placeholder comment.
- **Stripe**: Replace the “Pay Design Retainer” Checkout link.

## Deploy on GitHub Pages
1. Repo Settings → Pages → Source: `Deploy from a branch`
2. Branch: `main` • Folder: `/ (root)` → Save.
3. Your site will publish at `https://<username>.github.io/<repo>/` (or custom domain).

## Connect Custom Domain (Cloudflare)
- In repo Settings → Pages → **Custom domain**: `www.yourdomain.com` (creates `CNAME`).
- Cloudflare DNS:
  - `www` → **CNAME** → `<username>.github.io` (Proxy **OFF** recommended).
  - Apex `yourdomain.com` → **A** records to GitHub Pages IPs:
    - 185.199.108.153
    - 185.199.109.153
    - 185.199.110.153
    - 185.199.111.153
- Turn on **Always Use HTTPS** in Cloudflare.

## OneDrive → GitHub workflow
- Keep this folder in OneDrive.
- Use GitHub Desktop or the web UI to upload/commit files from your OneDrive folder.
