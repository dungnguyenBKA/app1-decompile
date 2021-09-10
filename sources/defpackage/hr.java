package defpackage;

import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;

/* renamed from: hr  reason: default package */
final class hr extends Handler {
    private Handler a;

    hr(Handler handler) {
        this.a = handler;
    }

    public void handleMessage(Message message) {
        try {
            this.a.handleMessage(message);
        } catch (WindowManager.BadTokenException | IllegalStateException unused) {
        }
    }
}
