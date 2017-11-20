package timeThread;

import java.awt.*;
import java.awt.event.*;
import java.util.Date;
import java.lang.Thread;
import java.text.SimpleDateFormat;

public class TimeInSeconds extends Frame implements Runnable
{
    //private Label lblOne;
    private Date dd;
    private Thread th;

    public TimeInSeconds()
    {

        th = new Thread(this);
        th.start(); // here thread starts
        dd = new Date();
    }

    public void run()
    {
        try
        {
            do
            {
                dd = new Date();
         
                SimpleDateFormat dateFormatter = new SimpleDateFormat("E, y-M-d 'at' h:m:s a z");
                System.out.println("Format 1:   " + dateFormatter.format(dd));

                dateFormatter = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz");
                System.out.println("Format 2:   " + dateFormatter.format(dd));
                
                dateFormatter = new SimpleDateFormat("EEEE, MMMM d, yyyy 'at' hh:mm:ss a zzz");
                System.out.println("Format 3:   " + dateFormatter.format(dd));
                
                Thread.sleep(1000);  // 1000 = 1 second
            }while(th.isAlive());
        }
        catch(Exception e)
        {

        }
    }
    public void setDate(Date dd) {
    	    this.dd = dd;
    }
    public Date getDate() {
    	     return dd;
    }

    public static void main(String[] args)
    {
        new TimeInSeconds();
    }
}
