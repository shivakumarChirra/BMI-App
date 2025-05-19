# 💪 BMI Calculator App
![Banner](banner.png)
A simple and user-friendly Body Mass Index (BMI) calculator built with Swift and UIKit. This app allows users to input their height and weight, calculate their BMI, and receive health advice based on the result.

## 🖥️ Preview


---

## 🚀 Features

- ✅ Input height (slider)
- ✅ Input weight (slider)
- ✅ Real-time BMI calculation
- ✅ Result screen with:
  - BMI Value
  - Health advice
  - Background color based on BMI range
- ✅ Clean and intuitive UI

---

## 📱 Screens

1. **Input Screen**: Set height and weight using sliders.
2. **Result Screen**: Displays calculated BMI, advice, and background color.

---

## 🧠 How It Works

- Height and weight values are passed from the first screen to a model (`CalculateBrain`) that:
  - Calculates the BMI
  - Determines advice text
  - Chooses a background color
- These values are passed via `prepare(for:sender:)` to the `ResultViewController`.

---

## 🛠️ Tech Stack

- Language: **Swift**
- Framework: **UIKit**
- Architecture: **MVC**
- Platform: **iOS**

---

## 📂 Folder Structure

