<!DOCTYPE html>
<html>
<head>
    <title>Encryption/Decryption Tool</title>
</head>
<body>
    <h1>AES Encryption & Decryption</h1>
    <form action="crypto" method="post">
        <div>
            <label>Secret Key (16 characters):</label><br>
            <input type="text" name="secretKey" required minlength="16" maxlength="16">
        </div>
        <br>
        <div>
            <label>Text to Process:</label><br>
            <textarea name="inputText" rows="4" cols="50" required></textarea>
        </div>
        <br>
        <div>
            <button type="submit" name="action" value="encrypt">Encrypt</button>
            <button type="submit" name="action" value="decrypt">Decrypt</button>
        </div>
    </form>
</body>
</html>