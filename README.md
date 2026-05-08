<div align="center">
  <h1>🚀 App Installation Tracker</h1>
  <p><b>An Advanced, Thread-Safe Java Web Application for Software Lifecycle Management</b></p>
  
  [![Java](https://img.shields.io/badge/Java-11%2B-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)](https://www.java.com/)
  [![Apache Tomcat](https://img.shields.io/badge/Apache_Tomcat-9.0%2B-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black)](https://tomcat.apache.org/)
  [![JSP & Servlets](https://img.shields.io/badge/JSP_&_Servlets-Jakarta_EE-007396?style=for-the-badge)](https://jakarta.ee/)
</div>

---

## 📖 About The Project

The **App Installation Tracker** is a robust academic and enterprise-grade system designed to record, monitor, and manage the lifecycle of software applications within an organization.

Unlike traditional web applications that rely on external relational databases (like MySQL/JDBC), this project is engineered to run entirely in-memory. It demonstrates how to handle high-throughput, concurrent web requests safely using Advanced Java Concurrency models. The project bridges the gap between web interfaces and desktop monitoring by providing both a sleek HTML/CSS web dashboard and a real-time Java Swing administrative console.

---

## 🧠 Core Concepts & Architecture

This project was built to demonstrate a deep understanding of Java fundamentals, server-side processing, and thread safety. Here is how it works under the hood:

### 1. Advanced Concurrency (`ConcurrentHashMap`)

Web servers like Apache Tomcat assign a new thread to every incoming user request. If multiple users attempt to add or update an application simultaneously, standard data structures (like `ArrayList` or `HashMap`) will crash or corrupt data (`ConcurrentModificationException`).

- **How it's used:** We use `java.util.concurrent.ConcurrentHashMap` in the `Storage.java` class. This provides a lock-free, thread-safe memory space where multiple web requests can safely read and write data at the exact same millisecond without data loss.

### 2. Model-View-Controller (MVC) Pattern

The application strictly follows the MVC design pattern to separate concerns:

- **Model (`AppRecord.java`):** Plain Old Java Objects (POJOs) that define the data structure.
- **View (`.jsp` files):** The frontend UI where users interact with the system.
- **Controller (`TrackerServlet.java`):** The brain that intercepts HTTP POST/GET requests, processes form data, and routes the user to the correct view.

### 3. Annotation-Based Routing (`@WebServlet`)

- **How it's used:** Instead of hardcoding complex and error-prone XML tags in `web.xml`, the project uses the `@WebServlet("/TrackerServlet")` annotation. This modern approach tells the Tomcat server exactly how to route web traffic natively within the Java class itself.

### 4. Cross-Platform Monitoring (Java Swing)

- **How it's used:** The `SwingAdminClient.java` file launches a native desktop window. Because it runs on the same Java Virtual Machine (JVM) as the web server, it can directly read the `ConcurrentHashMap` memory and display live statistics to an administrator without needing HTTP API calls.

---

## 🛠️ Technology Stack

| Component          | Technology            | Role in Project                                                   |
| :----------------- | :-------------------- | :---------------------------------------------------------------- |
| **Backend Core**   | Java SE 11+           | Core logic, object-oriented structuring, and Streams API.         |
| **Web Layer**      | Java EE (Servlets)    | Processing HTTP requests and managing server-side logic.          |
| **Frontend UI**    | JSP, HTML5, CSS3      | Dynamic webpage generation with modern, responsive styling.       |
| **Data Storage**   | In-Memory Concurrency | `ConcurrentHashMap` for zero-latency, database-free storage.      |
| **Desktop Client** | Java Swing            | Real-time administrative dashboard for system monitoring.         |
| **Web Server**     | Apache Tomcat 9.0+    | The servlet container that hosts and runs the `.war` application. |

---

## 📂 Project Structure

```text
AppInstallationTracker/
├── src/main/java/
│   ├── model/
│   │   └── AppRecord.java        # Defines the App entity (ID, Name, Date, Status)
│   ├── servlet/
│   │   ├── Storage.java          # Thread-safe in-memory database & logic
│   │   └── TrackerServlet.java   # Central Controller routing web requests
│   └── swing/
│       └── SwingAdminClient.java # Desktop UI for live server monitoring
└── webapp/
    ├── index.jsp                 # Main Dashboard Landing Page
    ├── addApp.jsp                # View: Form to record new installations
    ├── updateApp.jsp             # View: Form to mutate application state
    ├── display.jsp               # View: Tabular data representation
    └── WEB-INF/
        └── web.xml               # Config (Kept empty to leverage Annotations)


🚀 Setup & Installation Guide
Prerequisites
Java Development Kit (JDK): Version 11 or higher.

Apache Tomcat: Version 9.0 or higher.

IDE: Eclipse IDE for Enterprise Java (or IntelliJ IDEA Ultimate).

Step-by-Step Installation (Eclipse IDE)
Clone the Repository:
Open your terminal and run:

git clone [https://github.com/Alvas-College-of-Engineering/Create-app-installation-tracker.git](https://github.com/Alvas-College-of-Engineering/Create-app-installation-tracker.git)

2. **Import the Project:**
   * Open Eclipse -> `File` -> `Import`.
   * Select `Web` -> `Existing Dynamic Web Project` (or import from your cloned folder).
3. **Configure the Build Path & Server:**
   * Right-click the project -> `Build Path` -> `Configure Build Path`. Ensure your JDK is selected.
   * Right-click the project -> `Properties` -> `Targeted Runtimes`. Check the box for your Apache Tomcat server.
4. **Run the Web Application:**
   * Right-click the project folder (or `index.jsp`) -> `Run As` -> `Run on Server`.
   * Access the UI in your browser at: `http://localhost:8080/AppInstallationTracker/index.jsp`
5. **Run the Admin Desktop Client:**
   * Navigate to `src/main/java/swing/SwingAdminClient.java`.
   * Right-click the file -> `Run As` -> `Java Application`.

---

## 👨‍💻 Author & Contributions

* **Author:** Nikhil Amruth Gujjar
* **Institution:** Contributing to AIET (Alva's Institute of Engineering and Technology)

This project was developed to solve complex academic problem statements regarding robust web application design, removing the reliance on traditional databases while maintaining strict data integrity.
```
