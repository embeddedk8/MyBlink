# MyBlink

**A beginner-friendly Arduino project demonstrating how to simulate boards and set up CI/CD using GitHub Actions and Wokwi.**

---

## 💡 What does MyBlink show?

- How to **simulate Arduino projects without physical hardware** using [Wokwi](https://wokwi.com/)
- How to **integrate Wokwi simulation with GitHub Actions** for automated builds and tests
- What a **simple embedded CI workflow** looks like
- How to use a **Makefile with Arduino CLI** for building and uploading firmware

## ⚙️ Requirements

Before building or simulating the project locally, ensure you have:

- [Arduino CLI](https://arduino.github.io/arduino-cli/1.3/) installed,
- [Wokwi CLI](https://docs.wokwi.com/wokwi-ci/cli-installation) installed,
- A [Wokwi](https://docs.wokwi.com/wokwi-ci/cli-usage) account, and your **TOKEN exported** in the environment.

This setup allows you to build for hardware or run simulations in Wokwi.

## 🚀 Usage

You can build and run the simulation locally.  
By default, the project is configured for **Arduino UNO (AVR)**. You can change the board by adding `FQBN=<other>` to the make command.

Build and upload for debugging:
```
make debug
make upload-debug
```

For a step-by-step guide on setting up CI/CD for Arduino projects with Wokwi, check out my blog:  
[Adding CI/CD to Arduino projects: Github Actions and Wokwi simulation](https://kasia0x01.github.io/posts/2025/arduino-github-actions-with-wokwi/)
