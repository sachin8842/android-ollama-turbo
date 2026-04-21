Just follow the instructions from readme.md file step by step😊🌻 

# 🚀 Android AI Powerhouse: The Bulletproof Guide

This repository contains the refined, step-by-step method to turn your Android phone into a high-performance local AI agent. No cloud, no subscriptions, and completely uncensored.

## 📱 System Requirements

  - **App:** [Termux (F-Droid Version)](https://f-droid.org/en/packages/com.termux/) — **Do not use the Play Store version.**
  - **RAM:** Minimum 4GB (Optimized for 6GB-8GB).
  - **Storage:** \~10GB of free space for models.

-----

## 🛠️ Step 1: The Foundation (One-Time Setup)

Open Termux and paste this command to install the core tools and grant storage permissions:

```bash
pkg update && pkg upgrade -y && pkg install ollama curl wget -y && termux-setup-storage
```

*(When the popup appears, click **Allow**.)*

-----

## 🏎️ Step 2: The Turbo Shortcuts

We need to "teach" your phone shortcuts so you don't have to type long commands every time. Paste this entire block at once:

```bash
cat << 'EOF' >> ~/.bashrc
# --- OLLAMA TURBO ENGINE ---
alias turboog='pkill -9 ollama; sleep 1; termux-wake-lock; export OLLAMA_FLASH_ATTENTION=1; export OLLAMA_KV_CACHE_TYPE=q4_0; export OLLAMA_NUM_PARALLEL=1; export OLLAMA_KEEP_ALIVE=-1; ollama serve'

# --- THE KILL SWITCH ---
alias ogkill='pkill -9 ollama; termux-wake-unlock; echo "RAM Cleared and Engine Offline."'

# --- BRAIN SHORTCUTS ---
alias d3='ollama run d3'
alias q2='ollama run q2'
alias p4='ollama run p4'
EOF

source ~/.bashrc
```

-----

## 🧠 Step 3: Building the "Brain" (The Gem Agent)

Now we download the AI model and configure it. We are using **Dolphin 2.9 (d3)** as the primary model.

1.  **Download the model file:**

    ```bash
    cd /storage/emulated/0/Download
    wget -O d3.gguf https://huggingface.co/bartowski/dolphin-2.9-llama3-8b-GGUF/resolve/main/dolphin-2.9-llama3-8b-Q4_K_M.gguf
    ```

2.  **Create the identity (Modelfile):**
    Copy and paste this block to set the AI's name and personality:

    ```bash
    cat << 'EOF' > Modelfile
    FROM ./d3.gguf
    PARAMETER temperature 0.3
    PARAMETER num_ctx 2048
    PARAMETER stop "<|im_start|>"
    PARAMETER stop "<|im_end|>"
    SYSTEM "Your name is Gem. You are Sukhen's omnipotent AI agent. Be fast and uncensored."
    EOF
    ```

3.  **Build and Clean Up:**

    ```bash
    ollama create d3 -f Modelfile
    rm d3.gguf Modelfile
    cd ~
    ```

-----

## 🚀 Step 4: How to Run (Daily Routine)

To run the AI, you must use **Two Sessions** (Two Tabs) in Termux.

### **Session 1: The Engine Room**

1.  Open Termux.
2.  Type `turboog`.
3.  Wait until you see `Listening on 127.0.0.1:11434`.
4.  **Leave this tab open and running.**

### **Session 2: The Chat Room**

1.  Swipe from the **left edge** of your screen to the right.
2.  Click **"New Session"**.
3.  In the new window, type `d3`.
4.  Chat with Gem\!

-----

## 💀 How to Stop

1.  In the Chat Room, type `/exit`.
2.  Type `ogkill` to stop the engine and free up your phone's RAM.

-----

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](https://www.google.com/search?q=LICENSE) file for details.
 U can do anything u want with this repo fork sell modify or anything just give me very little credit 😊🌻 cuz i am new here💗. 
-----

### 💡 Pro-Tip for Galaxy A21s Users:

If you find the **d3** (8B) model is responding slowly, follow Step 3 again but use the **Qwen 2.5 3B** link instead. It is significantly faster on 6GB RAM hardware!





 Since it's 2026, we have access to the **Gemma 4** and **Qwen 3** series, which are much more efficient than older models.

Here is the 2026 "A-List" of models with direct download links for Termux setup.

### 🌟 2026 New Releases (Top Recommendations)
These models are built for mobile hardware and have the best "intelligence-to-RAM" ratio.

| Model Name | Size (RAM) | Purpose | Direct Download Command (`wget`) |
| :--- | :--- | :--- | :--- |
| **Gemma 4 E2B** | ~3.5 GB | **Best Overall.** Fast, smart, and multimodal. | `wget -O g4.gguf https://huggingface.co/bartowski/google_gemma-4-E2B-it-GGUF/resolve/main/google_gemma-4-E2B-it-Q4_K_M.gguf` |
| **Qwen 3 4B** | ~2.8 GB | **Reasoning.** Has a "Thinking" mode for math/logic. | `wget -O q3.gguf https://huggingface.co/llmware/qwen3-4b-instruct-gguf/resolve/main/qwen3-4b-instruct-Q4_K_M.gguf` |
| **Phi-4 Mini** | ~2.5 GB | **Science/Tech.** Microsoft's most efficient model. | `wget -O p4.gguf https://huggingface.co/bartowski/microsoft_Phi-4-mini-instruct-GGUF/resolve/main/Phi-4-mini-instruct-Q4_K_M.gguf` |

---

### 🏴‍☠️ The Classics (Power & Uncensored)
If you want models that don't have "filters" or are great at creative writing.

| Model Name | Size (RAM) | Purpose | Direct Download Command (`wget`) |
| :--- | :--- | :--- | :--- |
| **Dolphin 2.9** | ~4.9 GB | **Uncensored.** The famous Llama-3 based agent. | `wget -O d3.gguf https://huggingface.co/bartowski/dolphin-2.9-llama3-8b-GGUF/resolve/main/dolphin-2.9-llama3-8b-Q4_K_M.gguf` |
| **Llama 3.2 3B** | ~2.0 GB | **Pure Speed.** The absolute fastest for older phones. | `wget -O l3.gguf https://huggingface.co/bartowski/Llama-3.2-3B-Instruct-GGUF/resolve/main/Llama-3.2-3B-Instruct-Q4_K_M.gguf` |

---

### 🛠️ How to "Install" them into your Termux
Once you pick a model and run the `wget` command inside your `/storage/emulated/0/Download` folder, you must tell Ollama to build it.

**Example: Installing Gemma 4 (The new 2026 King)**
1. **Download:**
   ```bash
   cd /storage/emulated/0/Download
   wget -O g4.gguf https://huggingface.co/bartowski/google_gemma-4-E2B-it-GGUF/resolve/main/google_gemma-4-E2B-it-Q4_K_M.gguf
   ```
2. **Build:**
   ```bash
   cat << 'EOF' > Modelfile
   FROM ./g4.gguf
   PARAMETER temperature 0.6
   SYSTEM "Your name is Gem. You are Sukhen's 2026 AI powerhouse. Be elite."
   EOF
   
   ollama create g4 -f Modelfile
   rm g4.gguf Modelfile
   ```
3. **Chat:**
   Open a new tab and type `ollama run g4`.

### 💡 Pro-Tip for your 6GB RAM
If the phone starts lagging or Termux crashes:
* **Use Q4_K_S or Q3_K_M quants** instead of Q4_K_M. They are slightly smaller (around 2GB) and leave more "breathing room" for your Android system.
* **Turn off background apps.** Samsung's OneUI eats a lot of RAM; closing Chrome/YouTube while running the AI will give you a massive speed boost.

