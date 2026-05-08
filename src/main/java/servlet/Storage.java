package servlet;

import model.AppRecord;
import java.util.Map;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

public class Storage {
    // Thread-safe map for concurrent web modifications
    private static final Map<String, AppRecord> appMap = new ConcurrentHashMap<>();

    public static void saveApp(AppRecord app) {
        appMap.put(app.getAppId(), app);
    }

    public static boolean updateAppStatus(String appId, String newStatus) {
        AppRecord app = appMap.get(appId);
        if (app != null) {
            app.setStatus(newStatus);
            return true;
        }
        return false;
    }

    public static List<AppRecord> getAllApps() {
        return appMap.values().stream().collect(Collectors.toList());
    }
}