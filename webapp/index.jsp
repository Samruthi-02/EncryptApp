<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SecureCrypt - AES Encryption Tool</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            color: #333;
        }

        .container {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
            padding: 40px;
            width: 100%;
            max-width: 500px;
            margin: 20px;
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .logo {
            font-size: 48px;
            margin-bottom: 15px;
            animation: float 3s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-5px); }
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 10px;
            font-size: 32px;
            font-weight: 700;
        }

        .subtitle {
            color: #7f8c8d;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .form-group {
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 600;
            color: #2c3e50;
            font-size: 16px;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 16px;
            border: 2px solid #e1e5e9;
            border-radius: 12px;
            font-size: 16px;
            transition: all 0.3s ease;
            font-family: inherit;
            background: rgba(255, 255, 255, 0.9);
        }

        input[type="text"]:focus, textarea:focus {
            outline: none;
            border-color: #667eea;
            box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.15);
            transform: translateY(-2px);
        }

        textarea {
            resize: vertical;
            min-height: 130px;
            line-height: 1.5;
        }

        .input-hint {
            font-size: 13px;
            color: #7f8c8d;
            margin-top: 8px;
            font-style: italic;
        }

        /* Tab Styles */
        .tabs {
            display: flex;
            gap: 10px;
            margin-bottom: 25px;
            border-bottom: 2px solid #e1e5e9;
        }

        .tab-btn {
            flex: 1;
            padding: 12px 15px;
            background: none;
            border: none;
            border-bottom: 3px solid transparent;
            color: #7f8c8d;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            font-size: 15px;
            margin-bottom: -2px;
        }

        .tab-btn:hover {
            color: #667eea;
            transform: none;
            box-shadow: none;
        }

        .tab-btn.active {
            color: #667eea;
            border-bottom-color: #667eea;
        }

        .tab-content {
            display: none;
            animation: fadeIn 0.3s ease;
        }

        .tab-content.active {
            display: block;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        /* File Upload Styles */
        .file-upload-wrapper {
            position: relative;
        }

        #fileInput {
            display: none;
        }

        .file-upload-area {
            border: 2px dashed #667eea;
            border-radius: 12px;
            padding: 40px 20px;
            text-align: center;
            background: rgba(102, 126, 234, 0.05);
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .file-upload-area:hover {
            border-color: #764ba2;
            background: rgba(102, 126, 234, 0.1);
            transform: translateY(-2px);
        }

        .file-upload-area.dragover {
            border-color: #764ba2;
            background: rgba(102, 126, 234, 0.15);
            transform: scale(1.02);
        }

        .upload-icon {
            font-size: 48px;
            display: block;
            margin-bottom: 15px;
        }

        .file-upload-area p {
            margin: 10px 0;
            color: #2c3e50;
            font-weight: 500;
        }

        .file-name {
            display: block;
            margin-top: 15px;
            padding: 10px;
            background: rgba(39, 174, 96, 0.1);
            border-radius: 8px;
            color: #27ae60;
            font-size: 14px;
            font-weight: 600;
            display: none;
        }

        .file-name.show {
            display: block;
        }

        .image-preview {
            margin-top: 25px;
            padding: 20px;
            background: #f8f9fa;
            border-radius: 12px;
            border: 1px solid #e1e5e9;
        }

        .image-preview label {
            margin-bottom: 15px;
        }


        .button-group {
            display: flex;
            gap: 15px;
            margin-top: 30px;
        }

        button {
            flex: 1;
            padding: 18px;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            position: relative;
            overflow: hidden;
        }

        button::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
            transition: left 0.5s;
        }

        button:hover::before {
            left: 100%;
        }

        .encrypt-btn {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }

        .decrypt-btn {
            background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
            color: white;
        }

        button:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        button:active {
            transform: translateY(-1px);
        }

        .features {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            padding: 25px;
            border-radius: 15px;
            margin-top: 35px;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

        .features h3 {
            margin-bottom: 18px;
            color: #2c3e50;
            font-size: 18px;
            text-align: center;
        }

        .feature-list {
            list-style: none;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 12px;
        }

        .feature-list li {
            padding: 10px;
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 14px;
            color: #5a6c7d;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            transition: transform 0.2s ease;
        }

        .feature-list li:hover {
            transform: translateX(5px);
        }

        .feature-list li::before {
            content: "🔒";
            font-size: 16px;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            color: #7f8c8d;
            font-size: 14px;
            opacity: 0.8;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 30px 25px;
                margin: 15px;
                border-radius: 15px;
            }
            
            .button-group {
                flex-direction: column;
            }
            
            button {
                width: 100%;
            }
            
            .feature-list {
                grid-template-columns: 1fr;
            }
            
            h1 {
                font-size: 28px;
            }
        }

        /* Loading animation */
        .loading {
            display: none;
            text-align: center;
            margin-top: 20px;
        }

        .spinner {
            width: 40px;
            height: 40px;
            border: 4px solid #f3f3f3;
            border-top: 4px solid #667eea;
            border-radius: 50%;
            animation: spin 1s linear infinite;
            margin: 0 auto;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="logo">🔐</div>
            <h1>SecureCrypt Pro</h1>
            <p class="subtitle">Military-Grade AES Encryption & Decryption</p>
        </div>

        <form action="crypto" method="post" id="cryptoForm" enctype="multipart/form-data">
            <div class="form-group">
                <label for="secretKey">🔑 Secret Key</label>
                <input type="text" id="secretKey" name="secretKey" 
                       placeholder="Enter your secret key (any length)" 
                       required minlength="8"
                       title="Must be at least 8 characters">
                <div class="input-hint">Use any passphrase - will be auto-hashed for AES-256</div>
            </div>

            <div class="tabs">
                <button type="button" class="tab-btn active" data-tab="text-tab">📝 Text</button>
                <button type="button" class="tab-btn" data-tab="file-tab">🖼️ Image/File</button>
            </div>

            <!-- Text Input Tab -->
            <div id="text-tab" class="tab-content active">
                <div class="form-group">
                    <label for="inputText">Text to Process</label>
                    <textarea id="inputText" name="inputText" 
                              placeholder="Type your secret message here to encrypt or paste encrypted text to decrypt..." 
                              ></textarea>
                    <div class="input-hint">For encryption: Enter plain text | For decryption: Paste encrypted code</div>
                </div>
            </div>

            <!-- File Upload Tab -->
            <div id="file-tab" class="tab-content">
                <div class="form-group">
                    <label for="fileInput">Choose Image or File</label>
                    <div class="file-upload-wrapper">
                        <input type="file" id="fileInput" name="file" accept="image/*,.pdf,.doc,.docx,.zip">
                        <div class="file-upload-area">
                            <span class="upload-icon">📤</span>
                            <p>Click to select or drag & drop your image/file here</p>
                            <span class="file-name" id="fileName"></span>
                        </div>
                    </div>
                    <div class="input-hint">Supported: Images (JPG, PNG, GIF, etc.), PDF, Documents, Archives</div>
                </div>

                <!-- Image Preview -->
                <div id="imagePreview" style="display: none;" class="image-preview">
                    <label>Preview</label>
                    <img id="previewImg" alt="Preview" style="max-width: 100%; max-height: 300px; border-radius: 8px;">
                </div>
            </div>

            <div class="button-group">
                <button type="submit" name="action" value="encrypt" class="encrypt-btn">
                    <span>🔐</span> Encrypt
                </button>
                <button type="submit" name="action" value="decrypt" class="decrypt-btn">
                    <span>🔓</span> Decrypt
                </button>
            </div>
        </form>

        <div class="loading" id="loading">
            <div class="spinner"></div>
            <p style="margin-top: 10px;">Processing your request securely...</p>
        </div>

        <div class="features">
            <h3>✨ Why Choose SecureCrypt?</h3>
            <ul class="feature-list">
                <li>AES-256 Encryption</li>
                <li>SHA-256 Key Hashing</li>
                <li>Image Encryption</li>
                <li>File Support</li>
                <li>Zero Data Storage</li>
                <li>Mobile Responsive</li>
            </ul>
        </div>

        <div class="footer">
            <p>🔒 Built with Java Servlets & Apache Tomcat | Your privacy is our priority</p>
        </div>
    </div>

    <script>
        // Tab Switching
        const tabBtns = document.querySelectorAll('.tab-btn');
        tabBtns.forEach(btn => {
            btn.addEventListener('click', function() {
                const tabId = this.getAttribute('data-tab');
                
                // Remove active from all buttons and contents
                tabBtns.forEach(b => b.classList.remove('active'));
                document.querySelectorAll('.tab-content').forEach(c => c.classList.remove('active'));
                
                // Add active to clicked button and corresponding content
                this.classList.add('active');
                document.getElementById(tabId).classList.add('active');
                
                // Clear validation of hidden tab
                if (tabId === 'file-tab') {
                    document.getElementById('inputText').removeAttribute('required');
                } else {
                    document.getElementById('inputText').setAttribute('required', 'required');
                }
            });
        });

        // File Upload Handling
        const fileInput = document.getElementById('fileInput');
        const fileUploadArea = document.querySelector('.file-upload-area');
        const fileName = document.getElementById('fileName');
        const imagePreview = document.getElementById('imagePreview');
        const previewImg = document.getElementById('previewImg');

        fileUploadArea.addEventListener('click', () => fileInput.click());

        fileUploadArea.addEventListener('dragover', (e) => {
            e.preventDefault();
            fileUploadArea.classList.add('dragover');
        });

        fileUploadArea.addEventListener('dragleave', () => {
            fileUploadArea.classList.remove('dragover');
        });

        fileUploadArea.addEventListener('drop', (e) => {
            e.preventDefault();
            fileUploadArea.classList.remove('dragover');
            const files = e.dataTransfer.files;
            if (files.length > 0) {
                fileInput.files = files;
                handleFileSelect();
            }
        });

        fileInput.addEventListener('change', handleFileSelect);

        function handleFileSelect() {
            const file = fileInput.files[0];
            if (file) {
                fileName.textContent = '✅ ' + file.name + ' (' + formatFileSize(file.size) + ')';
                fileName.classList.add('show');

                // Show image preview for image files
                if (file.type.startsWith('image/')) {
                    const reader = new FileReader();
                    reader.onload = (e) => {
                        previewImg.src = e.target.result;
                        imagePreview.style.display = 'block';
                    };
                    reader.readAsDataURL(file);
                } else {
                    imagePreview.style.display = 'none';
                }
            }
        }

        function formatFileSize(bytes) {
            if (bytes === 0) return '0 Bytes';
            const k = 1024;
            const sizes = ['Bytes', 'KB', 'MB', 'GB'];
            const i = Math.floor(Math.log(bytes) / Math.log(k));
            return Math.round(bytes / Math.pow(k, i) * 100) / 100 + ' ' + sizes[i];
        }

        // Enhanced form validation
        document.getElementById('cryptoForm').addEventListener('submit', function(e) {
            const key = document.getElementById('secretKey').value;
            const activeTab = document.querySelector('.tab-content.active').id;
            const file = document.getElementById('fileInput').files[0];
            const text = document.getElementById('inputText').value;
            const loading = document.getElementById('loading');
            
            if (key.length < 8) {
                alert('❌ Secret key must be at least 8 characters long!');
                e.preventDefault();
                return;
            }
            
            if (activeTab === 'text-tab' && !text.trim()) {
                alert('📝 Please enter some text to process!');
                e.preventDefault();
                return;
            }

            if (activeTab === 'file-tab' && !file) {
                alert('📤 Please select a file to process!');
                e.preventDefault();
                return;
            }
            
            // Show loading animation
            loading.style.display = 'block';
            
            // Hide loading if there's an error (fallback)
            setTimeout(() => {
                loading.style.display = 'none';
            }, 10000);
        });

        // Interactive input effects
        const inputs = document.querySelectorAll('input[type="text"], textarea');
        inputs.forEach(input => {
            input.addEventListener('focus', () => {
                input.style.transform = 'scale(1.02)';
                input.style.boxShadow = '0 5px 15px rgba(102, 126, 234, 0.2)';
            });
            
            input.addEventListener('blur', () => {
                input.style.transform = 'scale(1)';
                input.style.boxShadow = 'none';
            });
        });

        // Add example text on double-click for demo
        document.getElementById('inputText').addEventListener('dblclick', function() {
            if (!this.value) {
                this.value = "This is a secret message that needs to be encrypted for security purposes!";
            }
        });

        // Add key length counter
        const keyInput = document.getElementById('secretKey');
        keyInput.addEventListener('input', function() {
            const length = this.value.length;
            const hint = this.nextElementSibling;
            
            if (length >= 8) {
                hint.innerHTML = '✅ Key length: ' + length + ' characters';
                hint.style.color = '#27ae60';
            } else {
                hint.innerHTML = `⚠️ ${8 - length} more characters needed (minimum 8)`;
                hint.style.color = '#7f8c8d';
            }
        });
    </script>
</body>
</html>