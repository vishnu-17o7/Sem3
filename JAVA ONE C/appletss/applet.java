import java.applet.Applet;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;

public class applet extends Applet {

    public void paint(Graphics g) {
        // Display "Hello, World!"
        g.setColor(Color.black);
        g.setFont(new Font("Arial", Font.BOLD, 20));
        g.drawString("Hello, World!", 50, 50);

        // Draw a filled rectangle
        g.setColor(Color.blue);
        g.fillRect(50, 80, 100, 50);


        // Draw a filled arc
        g.setColor(Color.green);
        g.fillArc(300, 80, 100, 100, 45, 270);
    }
}
