# Mobile Progress Dashboard

The Mobile Progress Dashboard is a simple static page generated at:

```text
docs/index.html
```

It is designed for phone viewing and shows project progress, current phase, branch status, latest decision/checkpoint, BLOCKED items, whether user intervention is needed, and the next step.

## Update the Dashboard

Run after important progress/checkpoints:

```bash
./scripts/update_mobile_dashboard.sh
./scripts/checkpoint.sh "update mobile progress dashboard"
```

## Enable GitHub Pages

In GitHub:

1. Open the repository.
2. Go to **Settings**.
3. Go to **Pages**.
4. Set **Source** to **Deploy from branch**.
5. Set **Branch** to `main`.
6. Set **Folder** to `/docs`.
7. Save.

## Find the Link

After GitHub Pages finishes deploying, the Pages screen shows the site URL. It is usually similar to:

```text
https://<username>.github.io/<repository>/
```

Open that link from your phone.

## Read Progress from Mobile

- Big percentage = overall progress from `PROJECT_PROGRESS.json`.
- Green = good/done/pass.
- Yellow = TODO/in progress/info.
- Red = blocked/failure/problem.
- “User intervention needed” should normally be **NO** because the project follows the Full Autonomy Rule.
- If it says **YES**, check the BLOCKED section for external blockers such as accounts, credentials, or legal/financial approvals.
