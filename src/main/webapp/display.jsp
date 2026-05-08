<%@ page import="servlet.Storage" %>
<%@ page import="model.AppRecord" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        :root { --primary: #4F46E5; --bg: #F3F4F6; --text: #1F2937; --card: #FFFFFF; }
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: var(--bg); color: var(--text); display: flex; justify-content: center; padding-top: 40px; }
        .container { background: var(--card); padding: 2rem; border-radius: 12px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); width: 100%; max-width: 900px; }
        h2 { color: var(--primary); border-bottom: 2px solid #E5E7EB; padding-bottom: 10px; margin-top: 0; display: flex; justify-content: space-between; align-items: center; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); border-radius: 8px; overflow: hidden; }
        th, td { padding: 15px; text-align: left; }
        th { background-color: #F9FAFB; font-weight: 600; color: #4B5563; text-transform: uppercase; font-size: 0.85rem; letter-spacing: 0.05em; border-bottom: 2px solid #E5E7EB; }
        td { border-bottom: 1px solid #E5E7EB; color: #374151; }
        tr:hover { background-color: #F9FAFB; }
        tr:last-child td { border-bottom: none; }
        .status-badge { padding: 4px 10px; border-radius: 999px; font-size: 0.8rem; font-weight: 600; }
        .status-active { background-color: #D1FAE5; color: #065F46; }
        .status-inactive { background-color: #FEF3C7; color: #92400E; }
        .status-uninstalled { background-color: #FEE2E2; color: #991B1B; }
        .back-link { display: inline-block; padding: 8px 16px; background: #E5E7EB; color: #374151; text-decoration: none; border-radius: 6px; font-size: 0.9rem; font-weight: 600; transition: background 0.2s; }
        .back-link:hover { background: #D1D5DB; }
    </style>
</head>
<body>
    <div class="container">
        <h2>
            System Records 
            <a href="index.jsp" class="back-link">Home</a>
        </h2>
        <table>
            <tr>
                <th>App ID</th>
                <th>Application Name</th>
                <th>Install Date</th>
                <th>Version</th>
                <th>Status</th>
            </tr>
            <% 
                List<AppRecord> apps = Storage.getAllApps();
                if (apps.isEmpty()) { 
                    out.println("<tr><td colspan='5' style='text-align:center; padding: 20px; color:#6B7280;'>No applications recorded yet.</td></tr>"); 
                }
                for (AppRecord app : apps) {
                    String statusClass = "";
                    if ("Active".equalsIgnoreCase(app.getStatus())) statusClass = "status-active";
                    else if ("Inactive".equalsIgnoreCase(app.getStatus())) statusClass = "status-inactive";
                    else if ("Uninstalled".equalsIgnoreCase(app.getStatus())) statusClass = "status-uninstalled";
            %>
            <tr>
                <td><strong><%= app.getAppId() %></strong></td>
                <td><%= app.getAppName() %></td>
                <td><%= app.getInstallDate() %></td>
                <td><%= app.getVersion() %></td>
                <td><span class="status-badge <%= statusClass %>"><%= app.getStatus() %></span></td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>