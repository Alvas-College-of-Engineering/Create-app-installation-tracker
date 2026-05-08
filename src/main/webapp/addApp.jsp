<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        :root { --primary: #4F46E5; --bg: #F3F4F6; --text: #1F2937; --card: #FFFFFF; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: var(--bg); color: var(--text); display: flex; justify-content: center; padding-top: 40px; }
        .container { background: var(--card); padding: 2rem; border-radius: 12px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); width: 100%; max-width: 500px; }
        h2 { color: var(--primary); border-bottom: 2px solid #E5E7EB; padding-bottom: 10px; margin-top: 0; }
        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: 600; margin-bottom: 5px; color: #4B5563; }
        input, select { width: 100%; padding: 10px; border: 1px solid #D1D5DB; border-radius: 6px; box-sizing: border-box; font-size: 1rem; }
        input:focus, select:focus { outline: none; border-color: var(--primary); box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.2); }
        .btn-submit { width: 100%; background: var(--primary); color: white; border: none; padding: 12px; border-radius: 6px; font-size: 1rem; font-weight: bold; cursor: pointer; margin-top: 10px; transition: background 0.3s; }
        .btn-submit:hover { background: #4338CA; }
        .back-link { display: inline-block; margin-top: 15px; color: #6B7280; text-decoration: none; font-size: 0.9rem; }
        .back-link:hover { color: var(--primary); }
    </style>
</head>
<body>
    <div class="container">
        <h2>Record New Application</h2>
        <form action="TrackerServlet" method="POST">
            <input type="hidden" name="action" value="addApp">
            
            <div class="form-group">
                <label>App ID (Unique):</label>
                <input type="text" name="appId" placeholder="e.g., APP-001" required>
            </div>
            <div class="form-group">
                <label>Application Name:</label>
                <input type="text" name="appName" placeholder="e.g., Visual Studio Code" required>
            </div>
            <div class="form-group">
                <label>Install Date:</label>
                <input type="date" name="installDate" required>
            </div>
            <div class="form-group">
                <label>Version:</label>
                <input type="text" name="version" placeholder="e.g., 1.84.2" required>
            </div>
            <div class="form-group">
                <label>Initial Status:</label>
                <select name="status">
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                </select>
            </div>
            
            <button type="submit" class="btn-submit">💾 Record App</button>
        </form>
        <a href="index.jsp" class="back-link">← Back to Dashboard</a>
    </div>
</body>
</html>