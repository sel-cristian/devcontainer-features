# Dev Container Features: Gemini CLI & BMAD METHOD

This repository provides [Dev Container Features](https://containers.dev/features) for:

- **`gemini-cli`** → Installs the [Google Gemini CLI](https://github.com/google-gemini/gemini-cli).  
- **`bmad-method`** → Installs the [BMAD METHOD CLI](https://github.com/bmad-code-org/BMAD-METHOD).

---

## ✨ Usage

In your `.devcontainer.json`:

```json
{
  "image": "mcr.microsoft.com/devcontainers/javascript-node:20",
  "features": {
    "ghcr.io/<your-gh-username>/devcontainer-features/gemini-cli:1": {
      "version": "latest",
      "setApiKeyEnv": true
    },
    "ghcr.io/<your-gh-username>/devcontainer-features/bmad-method:1": {
      "version": "latest",
      "autoInstall": true
    }
  },
  "remoteEnv": {
    "GEMINI_API_KEY": "${localEnv:GEMINI_API_KEY}"
  }
}
```
Replace <your-gh-username> with your GitHub username.

## Feature Options

### Gemini CLI
| Option         | Type    | Default  | Description                                          |
| -------------- | ------- | -------- | ---------------------------------------------------- |
| `version`      | string  | `latest` | Gemini CLI version to install                        |
| `setApiKeyEnv` | boolean | `true`   | If true, expose GEMINI\_API\_KEY to container if set |

### BMAD METHOD
| Option        | Type    | Default  | Description                                  |
| ------------- | ------- | -------- | -------------------------------------------- |
| `version`     | string  | `latest` | BMAD METHOD version from npm                 |
| `autoInstall` | boolean | `true`   | Run `bmad-method install` after installation |

## 🔑 Authentication
### Gemini CLI
- Google login: `gemini auth login`
- API key: export `GEMINI_API_KEY locally`, it will be passed into the container.
### BMAD METHOD
- Installs globally, optional `bmad-method install` run automatically.

## ✅ Verification
Inside your container:
```bash
  gemini --version
  bmad-method --version
```
## 📚 Resources
[Gemini CLI GitHub](https://github.com/google-gemini/gemini-cli)
[BMAD METHOD GitHub](https://github.com/bmad-code-org/BMAD-METHOD?utm_source=chatgpt.com)
[Dev Container Features Documentation](https://containers.dev/features)


