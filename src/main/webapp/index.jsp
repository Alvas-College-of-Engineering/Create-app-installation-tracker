<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>App Installation Tracker</title>
    <style>
        :root { --primary: #4F46E5; --bg: #F3F4F6; --text: #1F2937; --card: #FFFFFF; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: var(--bg); color: var(--text); display: flex; justify-content: center; padding-top: 50px; }
        .container { background: var(--card); padding: 2.5rem; border-radius: 12px; box-shadow: 0 10px 15px -3px rgba(0,0,0,0.1); width: 100%; max-width: 500px; text-align: center; }
        h2 { color: var(--text); margin-top: 0; margin-bottom: 2rem; font-size: 1.8rem; }
        .menu-list { list-style: none; padding: 0; }
        .menu-list li { margin-bottom: 1rem; }
        .btn-link { display: block; background: var(--primary); color: white; padding: 1rem; text-decoration: none; border-radius: 8px; font-weight: 600; transition: background 0.3s ease; }
        .btn-link:hover { background: #4338CA; transform: translateY(-2px); }
    </style>
</head>
<body>
    <div class="container">
        <h2>📊 Tracker Dashboard</h2>
        <ul class="menu-list">
            <li><a href="addApp.jsp" class="btn-link">➕ Record New Application</a></li>
            <li><a href="updateApp.jsp" class="btn-link">🔄 Update App Status</a></li>
            <li><a href="display.jsp" class="btn-link">📋 View Installed Apps</a></li>
        </ul>
    </div>
</body>
</html>