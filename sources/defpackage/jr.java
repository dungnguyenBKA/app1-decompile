package defpackage;

import android.app.Activity;
import android.app.Application;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.WindowManager;
import android.widget.Toast;
import com.vungle.warren.AdLoader;

/* access modifiers changed from: package-private */
/* renamed from: jr  reason: default package */
public final class jr extends Handler {
    private final Toast a;
    private final nr b;
    private final String c;
    private boolean d;

    jr(Toast toast, Application application) {
        super(Looper.getMainLooper());
        this.a = toast;
        this.c = application.getPackageName();
        this.b = nr.b(this, application);
    }

    /* access modifiers changed from: package-private */
    public void a() {
        WindowManager windowManager;
        removeMessages(hashCode());
        if (this.d) {
            try {
                Activity a2 = this.b.a();
                if (!(a2 == null || (windowManager = (WindowManager) a2.getSystemService("window")) == null)) {
                    windowManager.removeViewImmediate(this.a.getView());
                }
            } catch (IllegalArgumentException unused) {
            }
            this.d = false;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    public void c() {
        WindowManager windowManager;
        if (!this.d) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = 16973828;
            layoutParams.flags = 152;
            layoutParams.packageName = this.c;
            layoutParams.gravity = this.a.getGravity();
            layoutParams.x = this.a.getXOffset();
            layoutParams.y = this.a.getYOffset();
            layoutParams.verticalMargin = this.a.getVerticalMargin();
            layoutParams.horizontalMargin = this.a.getHorizontalMargin();
            try {
                Activity a2 = this.b.a();
                if (!(a2 == null || a2.isFinishing() || (windowManager = (WindowManager) a2.getSystemService("window")) == null)) {
                    windowManager.addView(this.a.getView(), layoutParams);
                }
                sendEmptyMessageDelayed(hashCode(), this.a.getDuration() == 1 ? 3000 : AdLoader.RETRY_DELAY);
                this.d = true;
            } catch (WindowManager.BadTokenException | IllegalStateException unused) {
            }
        }
    }

    public void handleMessage(Message message) {
        a();
    }
}
