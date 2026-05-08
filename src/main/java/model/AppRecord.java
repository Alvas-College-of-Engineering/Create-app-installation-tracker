package model;

public class AppRecord {
    private String appId;
    private String appName;
    private String installDate;
    private String version;
    private String status;

    public AppRecord(String appId, String appName, String installDate, String version, String status) {
        this.appId = appId;
        this.appName = appName;
        this.installDate = installDate;
        this.version = version;
        this.status = status;
    }

    // Getters and Setters
    public String getAppId() { return appId; }
    public String getAppName() { return appName; }
    public String getInstallDate() { return installDate; }
    public String getVersion() { return version; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}