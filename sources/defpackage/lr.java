package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.Toast;
import com.facebook.ads.AdError;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import org.apache.http.HttpStatus;

/* renamed from: lr  reason: default package */
public class lr extends Handler implements fr {
    private volatile Queue<CharSequence> b = new ArrayBlockingQueue(3);
    private volatile boolean c;
    private Toast d;

    public lr() {
        super(Looper.getMainLooper());
    }

    public void a(Toast toast) {
        this.d = toast;
    }

    public void b(CharSequence charSequence) {
        if ((this.b.isEmpty() || !this.b.contains(charSequence)) && !this.b.offer(charSequence)) {
            this.b.poll();
            this.b.offer(charSequence);
        }
        if (!this.c) {
            this.c = true;
            sendEmptyMessageDelayed(1, 200);
        }
    }

    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            CharSequence peek = this.b.peek();
            if (peek != null) {
                this.d.setText(peek);
                this.d.show();
                sendEmptyMessageDelayed(2, (long) ((peek.length() > 20 ? 3000 : AdError.SERVER_ERROR_CODE) + HttpStatus.SC_OK));
                return;
            }
            this.c = false;
        } else if (i == 2) {
            this.b.poll();
            if (!this.b.isEmpty()) {
                sendEmptyMessage(1);
            } else {
                this.c = false;
            }
        } else if (i == 3) {
            this.c = false;
            this.b.clear();
            this.d.cancel();
        }
    }
}
