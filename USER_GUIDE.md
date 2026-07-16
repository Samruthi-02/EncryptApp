# EncryptApp 2.0 - User Quick Start Guide

## 🚀 Getting Started in 5 Minutes

### Step 1: Open the Application
```
URL: http://localhost:8080/EncryptApp/
```

You'll see the SecureCrypt Pro application with a beautiful interface.

---

## 📝 Text Encryption (Simple)

### 1. Select "Text" Tab
Click the **📝 Text** button at the top

### 2. Enter Secret Key
```
Secret Key Input Field:
┌─────────────────────────────────┐
│ MySecurePassword                │ (any length, 8+ chars)
└─────────────────────────────────┘
✅ Key length: 23 characters
```

### 3. Enter Your Message
```
Text to Encrypt:
┌────────────────────────────────────┐
│ This is a secret message!          │
└────────────────────────────────────┘
```

### 4. Click Encrypt
```
[🔐 Encrypt]  [🔓 Decrypt]
```

### 5. Get Encrypted Result
```
Output (Result Page):
┌─────────────────────────────────────┐
│ aBc123def+GhIjK/lMNopqRsTUVwxYz==  │
└─────────────────────────────────────┘

Buttons:
[📋 Copy to Clipboard]
[← New Operation]
```

### 6. Copy to Clipboard
Click **📋 Copy to Clipboard** button
```
✅ Copied! (temporary message appears)
```

### 7. Save or Share
- Paste the encrypted text anywhere
- Send via email, message, etc.
- Only the person with the key can decrypt it

---

## 🖼️ Image Encryption (New!)

### 1. Select "Image/File" Tab
Click the **🖼️ Image/File** button

### 2. Enter Secret Key
```
Secret Key: MySecurePassword
```

### 3. Select Image
```
Upload Area:
┌──────────────────────────────┐
│         📤                   │
│   Click or Drag & Drop       │
│   Your Image Here            │
└──────────────────────────────┘
Supported: JPG, PNG, GIF, BMP, WebP
```

**Two Ways to Upload:**
- **Click:** Click the upload area
- **Drag & Drop:** Drag image and drop it

### 4. Image Preview Appears
```
Selected File: ✅ photo.jpg (2.5 MB)

┌──────────────────────────────┐
│      [Image Preview]         │
│      Shows your image        │
│      before encryption       │
└──────────────────────────────┘
```

### 5. Click Encrypt
```
[🔐 Encrypt] [🔓 Decrypt]
```

### 6. Download Encrypted File
```
Result Page:
[📋 Copy File Data]
[💾 Download Encrypted File]
[← New Operation] [↻ Try Again]

Downloaded as: photo.jpg.encrypted.2026-02-09T...
```

---

## 🔓 Decrypt Encrypted Content

### For Text:
1. Select **Text** Tab
2. Enter the **same secret key** you used for encryption
3. Paste the encrypted text
4. Click **🔓 Decrypt**
5. Get original message back

### For Files:
1. Select **Image/File** Tab
2. Enter the **same secret key**
3. Upload the `.encrypted` file
4. Click **🔓 Decrypt**
5. Download the decrypted file

---

## 🔑 Key Rules

### ✅ DO's
- ✅ Use same key for encryption and decryption
- ✅ Keep your key safe and memorable
- ✅ Use keys with 8+ characters
- ✅ Can use passwords, passphrases, or random strings
- ✅ Can include numbers, symbols, letters, spaces

### ❌ DON'Ts
- ❌ Don't forget your key (can't decrypt without it)
- ❌ Don't use same key for multiple purposes
- ❌ Don't share your key unencrypted
- ❌ Don't use obvious passwords like "12345678"
- ❌ Don't lose the original key

### 🔐 Good Key Examples
```
✅ MySecurePassword123
✅ Coffee@Sunrise!2024
✅ BlueSky#Mountain$Peak
✅ PizzaNight2026Friends
✅ Tr0pic@lParad!se99
```

### ❌ Bad Key Examples
```
❌ 12345678           (too simple)
❌ password           (too common)
❌ abc                (too short)
❌ same               (too obvious)
```

---

## 📱 Mobile Usage

The app works perfectly on phones and tablets!

### On Mobile:
1. All buttons are touch-friendly
2. Text automatically resizes
3. Forms are easy to fill
4. File uploads work the same way
5. Results are readable

### Tips for Mobile:
- Tap the text field to bring up keyboard
- Use clipboard icon instead of Ctrl+C
- Download files to device storage
- Rotate screen for better view if needed

---

## ⚠️ Common Issues & Solutions

### Issue 1: "Invalid key size"
```
Error: Invalid key size

Why: You're using old encrypted data
What to do: 
1. Use the app in v2.0 (current version)
2. Re-encrypt with new key
3. Can't decrypt v1.0 data
```

### Issue 2: Decryption shows gibberish
```
Result: Random characters instead of text

Why: Wrong key used
What to do:
1. Check you're using the SAME key
2. Copy-paste the key exactly
3. Check for extra spaces
4. Try again with correct key
```

### Issue 3: File won't download
```
Error: Download didn't start

Why: Browser security or JavaScript issue
What to do:
1. Check browser console (F12)
2. Allow pop-ups/downloads
3. Try different browser
4. Copy the data manually instead
```

### Issue 4: Image preview not showing
```
Image upload works, but no preview

Why: Browser doesn't support image type
What to do:
1. Try different image format
2. Convert to JPG/PNG
3. File still encrypts even without preview
4. Continue with encryption
```

---

## 🎯 Real-World Examples

### Example 1: Encrypt Confidential Message
```
Scenario: Send secret message to friend

Step 1: Agree on a key
Key: "FriendSecret2024"

Step 2: Encrypt message
Message: "Meet at the cafe at 3pm"
Encrypted: "x9KjL2mN8pQr5sT/uVwXyZ0="

Step 3: Send encrypted text
Send via email, WhatsApp, etc.

Step 4: Friend decrypts
Uses same key: "FriendSecret2024"
Gets: "Meet at the cafe at 3pm"
```

### Example 2: Backup Important Photo
```
Scenario: Encrypt personal photo for backup

Step 1: Start with key
Key: "MyPhotoBackup123"

Step 2: Encrypt photo
Upload: vacation.jpg
Size: 5 MB

Step 3: Download encrypted file
Get: vacation.jpg.encrypted.2026-02-09T...

Step 4: Store safely
Save to cloud, USB, or external drive

Step 5: Restore later
Upload encrypted file with same key
Download original photo
```

### Example 3: Secure Document Sharing
```
Scenario: Share contract with lawyer

Step 1: Create secure key
Key: "Contract#Legal2024"

Step 2: Encrypt document
Upload: contract.pdf

Step 3: Send encrypted file
Email the .encrypted file

Step 4: Lawyer decrypts
Receives encrypted file
Uses key you provided
Gets original PDF

Advantage: Even if email hacked, doc is safe
```

---

## 🆘 Need Help?

### Quick Help Hints
- Hover over input fields for hints
- Error messages explain what's wrong
- Example key provided in description
- Blue "Input hint" text explains requirements

### Features with Help
```
Secret Key Field:
⚠️ Use any passphrase - will be auto-hashed for AES-256

Text Field:
📝 For encryption: Enter plain text
📝 For decryption: Paste encrypted code

File Upload:
🖼️ Supported: Images, PDF, Documents, Archives
```

---

## 📊 Security Comparison

### What Gets Encrypted

| Content | Security Level |
|---------|-----------------|
| Your text messages | 🔐 AES-256 |
| Personal photos | 🔐 AES-256 |
| Business documents | 🔐 AES-256 |
| Sensitive files | 🔐 AES-256 |

### How It Works

```
Your Data
   ↓
AES-256 Encryption
   ↓
Base64 Encoding
   ↓
Safe to Share/Store
   ↓
Only person with key can decrypt
```

---

## 💾 Downloading Results

### Text Results
```
When you encrypt text:
[📋 Copy to Clipboard] → Copy entire encrypted string
[💾 Download Result]   → Save as .txt file
```

### File Results
```
When you encrypt files:
[💾 Download Encrypted File] → Save as .encrypted
[📋 Copy File Data]          → Copy Base64 data
```

### File Naming
```
Original: photo.jpg
Encrypted: photo.jpg.encrypted.2026-02-09T15-45-30
Decrypted: photo.jpg (automatically restored)
```

---

## 🔄 Workflow Examples

### Workflow 1: Personal Notes Protection
```
Day 1: Encrypt Notes
┌────────────────────┐
│ Sensitive Notes    │ ──Encrypt──→ [Encrypted]
│ Key: MyNotesKey123 │                   ↓
└────────────────────┘              [Save]

Day 100: Access Notes
[Load Encrypted] ──Decrypt──→ Sensitive Notes ✓
Key: MyNotesKey123
```

### Workflow 2: Photo Backup
```
Vacation Photos:
photo1.jpg ──┐
photo2.jpg ──┼─ Encrypt ──→ photo1.jpg.encrypted
photo3.jpg ──┘              photo2.jpg.encrypted
                            photo3.jpg.encrypted
                                  ↓
                            [Upload to Cloud]
                                  ↓
                        [Safe from hacking]
```

---

## 🎓 Learning Path

### Beginner Level
- [ ] Encrypt simple text message
- [ ] Decrypt message with correct key
- [ ] Try wrong key (see error)
- [ ] Copy encrypted text
- [ ] Share with someone

### Intermediate Level
- [ ] Encrypt image file
- [ ] View image preview
- [ ] Download encrypted image
- [ ] Share encrypted image
- [ ] Have someone decrypt it

### Advanced Level
- [ ] Encrypt multiple files
- [ ] Use complex passwords
- [ ] Integrate with workflows
- [ ] Store encrypted backups
- [ ] Share encrypted files securely

---

## ✅ Testing Yourself

### Quick Test 1: Text
```
1. Key: "TestKey123456"
2. Text: "Hello World"
3. Encrypt → Get: aBc123...xyz==
4. Copy
5. Decrypt → Get: "Hello World" ✓
```

### Quick Test 2: Image
```
1. Key: "ImageKey123456"
2. Upload any .jpg image
3. See preview
4. Encrypt
5. Download .encrypted file ✓
```

### Quick Test 3: Security
```
1. Encrypt text with Key1
2. Try decrypt with Key2
3. Should get error/gibberish ✓
4. Success means key is working!
```

---

## 📞 Support Checklist

If something doesn't work:
- [ ] Check the error message
- [ ] Verify you used the same key
- [ ] Check file size (max 50MB)
- [ ] Try different browser
- [ ] Clear browser cache
- [ ] Check internet connection
- [ ] View browser console (F12) for errors

---

## 🎉 You're Ready!

You now know how to:
✅ Encrypt text messages
✅ Decrypt messages
✅ Encrypt images
✅ Encrypt files
✅ Download results
✅ Keep data secure

**Happy encrypting!** 🔐

---

**Quick Reference:**
- 📝 **Text**: Type message → Encrypt → Copy
- 🖼️ **Image**: Upload → Preview → Encrypt → Download
- 🔓 **Decrypt**: Upload encrypted → Same key → Download result
- 🔑 **Key Rule**: Same key encrypts AND decrypts

**Remember:** Lose the key = can't decrypt! 🔒

---

**Version:** 2.0  
**Status:** Production Ready ✅  
**Support:** See error messages for help
