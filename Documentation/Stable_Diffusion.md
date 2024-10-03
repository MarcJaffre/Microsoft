## Logiciel:
```
https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe
https://github.com/git-for-windows/git/releases/download/v2.46.2.windows.1/Git-2.46.2-64-bit.exe
```
## Stable Diffusion
```
https://github.com/lshqqytiger/stable-diffusion-webui-amdgpu
```

## webui-user.bat (AMD)
Permet de rendre accessible Stable Diffusion sur Internet
```
@echo off
set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--precision full --no-half --use-cpu all --skip-torch-cuda-test --listen --port 80
call webui.bat
```

```
usage: python launch.py -h
--add-stop-route
--administrator
--allow-code
--always-batch-cond-uncond
--api
--api-auth API_AUTH
--api-log
--api-server-stop
--autolaunch
--bsrgan-models-path BSRGAN_MODELS_PATH
--ckpt CKPT
--ckpt-dir CKPT_DIR
--clip-models-path CLIP_MODELS_PATH
--codeformer-models-path CODEFORMER_MODELS_PATH
--config CONFIG
--cors-allow-origins CORS_ALLOW_ORIGINS
--cors-allow-origins-regex CORS_ALLOW_ORIGINS_REGEX
--data-dir DATA_DIR
--dat-models-path DAT_MODELS_PATH
--deepdanbooru
--device-id DEVICE_ID
--disable-all-extensions
--disable-console-progressbars
--disable-extra-extensions
--disable-model-loading-ram-optimization
--disable-nan-check
--disable-opt-split-attention
--disable-safe-unpickle
--disable-tls-verify
--do-not-download-clip
--dump-sysinfo
--embeddings-dir EMBEDDINGS_DIR
--enable-console-prompts
--enable-insecure-extension-access
--esrgan-models-path ESRGAN_MODELS_PATH
--filenames-max-length FILENAMES_MAX_LENGTH
--force-enable-xformers
--freeze-settings
--freeze-settings-in-sections FREEZE_SETTINGS_IN_SECTIONS
--freeze-specific-settings FREEZE_SPECIFIC_SETTINGS
--gfpgan-dir GFPGAN_DIR
--gfpgan-model GFPGAN_MODEL
--gfpgan-models-path GFPGAN_MODELS_PATH
--gradio-allowed-path GRADIO_ALLOWED_PATH
--gradio-auth GRADIO_AUTH
--gradio-auth-path GRADIO_AUTH_PATH
--gradio-debug
--gradio-img2img-tool GRADIO_IMG2IMG_TOOL
--gradio-inpaint-tool GRADIO_INPAINT_TOOL
--gradio-queue
--hide-ui-dir-config
--hypernetwork-dir HYPERNETWORK_DIR
--listen
--localizations-dir LOCALIZATIONS_DIR
--log-startup
--loglevel LOGLEVEL
--lowram
--lowvram
--max-batch-count MAX_BATCH_COUNT
--medvram
--medvram-sdxl
--models-dir MODELS_DIR
--ngrok NGROK
--ngrok-options NGROK_OPTIONS
--ngrok-region NGROK_REGION
--no-download-sd-model
--no-gradio-queue
--no-half
--no-half-vae
--no-hashing
--no-progressbar-hiding
--no-prompt-history
--nowebui
--opt-channelslast
--opt-sdp-attention
--opt-sdp-no-mem-attention
--opt-split-attention
--opt-split-attention-invokeai
--opt-split-attention-v1
--opt-sub-quad-attention
--port PORT
--precision {full,half,autocast}
--realesrgan-models-path REALESRGAN_MODELS_PATH
--reinstall-torch
--reinstall-xformers
--server-name SERVER_NAME
--share
--show-negative-prompt
--skip-install
--skip-load-model-at-start
--skip-ort
--skip-prepare-environment
--skip-python-version-check
--skip-torch-cuda-test
--skip-version-check
--styles-file STYLES_FILE
--sub-quad-chunk-threshold SUB_QUAD_CHUNK_THRESHOLD
--sub-quad-kv-chunk-size SUB_QUAD_KV_CHUNK_SIZE
--sub-quad-q-chunk-size SUB_QUAD_Q_CHUNK_SIZE
--subpath SUBPATH
--test-server
--textual-inversion-templates-dir TEXTUAL_INVERSION_TEMPLATES_DIR
--theme THEME
--timeout-keep-alive TIMEOUT_KEEP_ALIVE
--tls-certfile TLS_CERTFILE
--tls-keyfile TLS_KEYFILE
--ui-config-file UI_CONFIG_FILE
--ui-debug-mode
--ui-settings-file UI_SETTINGS_FILE
--unix-filenames-sanitization
--unload-gfpgan
--update-all-extensions
--update-check
--upcast-sampling
--use-cpu USE_CPU [USE_CPU ...]
--use-cpu-torch
--use-directml
--use-ipex
--use-textbox-seed
--use-zluda
--vae-dir VAE_DIR
--vae-path VAE_PATH
--xformers
--xformers-flash-attention

```
