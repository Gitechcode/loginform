# 🚀 BBU LoginForm - Team Collaboration Guide

## 📋 Project Repository
```
git clone https://github.com/Gitechcode/loginform.git
```
# Clone project
git clone git@github.com:Gitechcode/loginform.git

# Enter folder
cd loginform

# Install Flutter packages
flutter pub get

# Run app
flutter run
git add .
git commit -m "feat: add cart screen design"
git push

---

## 👥 Team Members & Tasks

| Member | Task | Branch | File |
|--------|------|--------|------|
| **Member 1** | Profile Form Screen | `feature/profile-form` | `lib/screens/profile_form_screen.dart` |
| **Member 2** | Cart Screen | `feature/cart` | `lib/screens/cart_screen.dart` |
| **Member 3** | Payment Form | `feature/payment` | `lib/screens/payment_screen.dart` |
| **Member 4** | Product Detail | `feature/product-detail` | `lib/screens/product_detail_screen.dart` |

---

## 🔰 STEP 1: Setup (All Members Do This Once)

```bash
# 1. Clone the project
git clone git@github.com:Gitechcode/loginform.git

# 2. Enter the project folder
cd loginform

# 3. Install Flutter packages
flutter pub get

# 4. Check everything works
flutter run
```

---

## 🌿 STEP 2: Switch to YOUR Branch

### Member 1 (Profile Form):
```bash
git checkout feature/profile-form
```
→ Open file: `lib/screens/profile_form_screen.dart`

### Member 2 (Cart):
```bash
git checkout feature/cart
```
→ Open file: `lib/screens/cart_screen.dart`

### Member 3 (Payment):
```bash
git checkout feature/payment
```
→ Open file: `lib/screens/payment_screen.dart`

### Member 4 (Product Detail):
```bash
git checkout feature/product-detail
```
→ Open file: `lib/screens/product_detail_screen.dart`

---

## ✏️ STEP 3: Write Your Code

1. Open **your file** listed above
2. **Delete** the placeholder content inside `build()` method
3. **Paste/Write** your screen design
4. Run `flutter run` to test it

---

## 💾 STEP 4: Save & Push Your Work to GitHub

```bash
# 1. See what files you changed
git status

# 2. Add your changes
git add .

# 3. Commit with a message
git commit -m "feat(profile-form): design profile form screen"
#             ↑ change this to match your task

# 4. Push to GitHub
git push
```

---

## 🔄 STEP 5: Keep Your Code Updated (Pull Latest)

```bash
# Get latest code from team
git pull origin main

# If there are conflicts, ask team leader to help
```

---

## 📤 STEP 6: Submit Your Work (Pull Request)

1. Go to: **https://github.com/Gitechcode/loginform**
2. Click **"Compare & pull request"** (yellow bar)
3. Set:
   - **base**: `develop`
   - **compare**: your feature branch
4. Write a description of what you did
5. Click **"Create pull request"**
6. Notify team leader to review ✅

---

## 🗂️ Branch Structure

```
main          ← Production (only team leader merges here)
  └── develop ← Integration (all features merge here first)
        ├── feature/profile-form   ← Member 1
        ├── feature/cart           ← Member 2
        ├── feature/payment        ← Member 3
        └── feature/product-detail ← Member 4
```

---

## ⚠️ Important Rules

- ❌ **NEVER** push directly to `main`
- ✅ Always work on **your feature branch** only
- ✅ Always `git pull` before starting work each day
- ✅ Commit often with clear messages
- ✅ Ask team leader before merging to `develop`

---

## 💬 Commit Message Format

```
feat(your-feature): short description of what you did

Examples:
feat(profile-form): add profile photo upload
feat(cart): add remove item button
feat(payment): add credit card input form
feat(product-detail): add size selector
```

---

## 🆘 Common Problems

### "Permission denied" when pushing?
→ Make sure team leader added you as Collaborator on GitHub

### "Merge conflict"?
→ Tell team leader, don't try to fix alone

### App crashes?
```bash
flutter clean
flutter pub get
flutter run
```
