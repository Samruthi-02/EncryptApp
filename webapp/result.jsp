<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result - SecureCrypt</title>
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
            max-width: 600px;
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
            animation: success 1s ease-in-out;
        }

        @keyframes success {
            0% { transform: scale(0); opacity: 0; }
            70% { transform: scale(1.2); }
            100% { transform: scale(1); opacity: 1; }
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 10px;
            font-size: 32px;
            font-weight: 700;
        }

        .status {
            text-align: center;
            margin-bottom: 25px;
            font-size: 18px;
            font-weight: 500;
        }

        .success-status {
            color: #27ae60;
        }

        .error-status {
            color: #e74c3c;
        }

        .result-section {
            margin-bottom: 30px;
        }

        .result-label {
            display: block;
            margin-bottom: 12px;
            font-weight: 600;
            color: #2c3e50;
            font-size: 18px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .result-box {
            background: #f8f9fa;
            border: 2px solid #e1e5e9;
            border-radius: 12px;
            padding: 20px;
            font-family: 'Courier New', monospace;
            font-size: 14px;
            line-height: 1.5;
            min-height: 120px;
            max-height: 300px;
            overflow-y: auto;
            word-break: break-all;
            white-space: pre-wrap;
            transition: all 0.3s ease;
        }

        .result-box:hover {
            border-color: #667eea;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .error-box {
            background: linear-gradient(135deg, #fee 0%, #f5c6cb 100%);
            border: 2px solid #f5c6cb;
            color: #721c24;
            border-radius: 12px;
            padding: 20px;
            margin-bottom: 25px;
            font-weight: 500;
        }

        .action-buttons {
            display: flex;
            gap: 15px;
            margin-top: 30px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 16px 25px;
            border: none;
            border-radius: 12px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            text-align: center;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            min-width: 140px;
        }

        .primary-btn {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
        }

        .secondary-btn {
            background: #6c757d;
            color: white;
        }

        .success-btn {
            background: linear-gradient(135deg, #27ae60 0%, #2ecc71 100%);
            color: white;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .btn:active {
            transform: translateY(0);
        }

        .copy-btn {
            background: linear-gradient(135deg, #3498db 0%, #2980b9 100%);
            color: white;
            margin-top: 15px;
            width: 100%;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            color: #7f8c8d;
            font-size: 14px;
            opacity: 0.8;
        }

        /* Animation for result appearance */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .animated {
            animation: fadeIn 0.6s ease-out;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                padding: 30px 25px;
                margin: 15px;
                border-radius: 15px;
            }
            
            .action-buttons {
                flex-direction: column;
            }
            
            .btn {
                width: 100%;
            }
            
            h1 {
                font-size: 28px;
            }
        }

        /* Scrollbar styling */
        .result-box::-webkit-scrollbar {
            width: 8px;
        }

        .result-box::-webkit-scrollbar-track {
            background: #f1f1f1;
            border-radius: 4px;
        }

        .result-box::-webkit-scrollbar-thumb {
            background: #667eea;
            border-radius: 4px;
        }

        .result-box::-webkit-scrollbar-thumb:hover {
            background: #5a67d8;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <div class="logo">
                <% if (request.getAttribute("error") != null) { %>
                    ⚠️
                <% } else { %>
                    ✅
                <% } %>
            </div>
            <h1>Processing Complete</h1>
            
            <div class="status <% if (request.getAttribute("error") == null) { %>success-status<% } else { %>error-status<% } %>">
                <% if (request.getAttribute("error") != null) { %>
                    Operation Failed
                <% } else { %>
                    Operation Successful
                <% } %>
            </div>
        </div>

        <% if (request.getAttribute("error") != null) { %>
            <div class="error-box animated">
                ⚠️ <strong>Error:</strong> <%= request.getAttribute("error") %>
            </div>
        <% } %>

        <% if (request.getAttribute("result") != null) { %>
            <div class="result-section animated">
                <span class="result-label">
                    📋 <span>Processed Result</span>
                </span>
                <div class="result-box" id="resultOutput">
                    <%= request.getAttribute("result") %>
                </div>
                
                <button class="btn copy-btn" onclick="copyToClipboard()">
                    📋 Copy to Clipboard
                </button>
            </div>
        <% } %>

        <div class="action-buttons">
            <a href="index.jsp" class="btn primary-btn">
                ← New Operation
            </a>
            
            <% if (request.getAttribute("result") != null) { %>
            <button class="btn success-btn" onclick="downloadResult()">
                💾 Download Result
            </button>
            <% } %>
            
            <button class="btn secondary-btn" onclick="window.history.back()">
                ↻ Try Again
            </button>
        </div>

        <div class="footer">
            <p>🔒 SecureCrypt Pro - Your data remains private and secure</p>
        </div>
    </div>

    <script>
        function copyToClipboard() {
            const resultText = document.getElementById('resultOutput').textContent;
            navigator.clipboard.writeText(resultText).then(() => {
                // Show temporary success message
                const btn = document.querySelector('.copy-btn');
                const originalText = btn.innerHTML;
                btn.innerHTML = '✅ Copied!';
                btn.style.background = 'linear-gradient(135deg, #27ae60 0%, #2ecc71 100%)';
                
                setTimeout(() => {
                    btn.innerHTML = originalText;
                    btn.style.background = 'linear-gradient(135deg, #3498db 0%, #2980b9 100%)';
                }, 2000);
            }).catch(err => {
                alert('Failed to copy: ' + err);
            });
        }

        function downloadResult() {
            const resultText = document.getElementById('resultOutput').textContent;
            const blob = new Blob([resultText], { type: 'text/plain' });
            const url = URL.createObjectURL(blob);
            const a = document.createElement('a');
            
            // Create filename with timestamp
            const now = new Date();
            const timestamp = now.toISOString().replace(/[:.]/g, '-');
            a.download = `securecrypt-result-${timestamp}.txt`;
            
            a.href = url;
            a.click();
            URL.revokeObjectURL(url);
        }

        // Add animation to elements
        document.addEventListener('DOMContentLoaded', function() {
            const animatedElements = document.querySelectorAll('.animated');
            animatedElements.forEach((element, index) => {
                element.style.animationDelay = `${index * 0.1}s`;
            });
        });

        // Auto-select text on result box click
        document.getElementById('resultOutput')?.addEventListener('click', function() {
            const selection = window.getSelection();
            const range = document.createRange();
            range.selectNodeContents(this);
            selection.removeAllRanges();
            selection.addRange(range);
        });
    </script>
</body>
</html>