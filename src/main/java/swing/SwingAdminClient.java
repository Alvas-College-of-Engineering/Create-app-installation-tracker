package swing;

import servlet.Storage;
import javax.swing.*;
import java.awt.*;

public class SwingAdminClient extends JFrame {
	private static final long serialVersionUID = 1L;
    public SwingAdminClient() {
        setTitle("App Installation Tracker - Admin Panel");
        setSize(400, 200);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());

        JLabel statusLabel = new JLabel("Tracker Memory Status: Active", SwingConstants.CENTER);
        statusLabel.setFont(new Font("Arial", Font.BOLD, 16));
        
        JButton refreshBtn = new JButton("Fetch Live Installation Stats");
        refreshBtn.addActionListener(e -> {
            int appCount = Storage.getAllApps().size();
            JOptionPane.showMessageDialog(this, 
                "Total Applications Tracked in Memory: " + appCount, 
                "Storage Stats", 
                JOptionPane.INFORMATION_MESSAGE);
        });

        add(statusLabel, BorderLayout.CENTER);
        add(refreshBtn, BorderLayout.SOUTH);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> new SwingAdminClient().setVisible(true));
    }
}