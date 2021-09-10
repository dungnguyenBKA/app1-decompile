package androidx.core.app;

import android.app.Activity;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;

public class a extends androidx.core.content.a {
    public static final /* synthetic */ int c = 0;

    /* renamed from: androidx.core.app.a$a  reason: collision with other inner class name */
    static class RunnableC0010a implements Runnable {
        final /* synthetic */ String[] b;
        final /* synthetic */ Activity c;
        final /* synthetic */ int d;

        RunnableC0010a(String[] strArr, Activity activity, int i) {
            this.b = strArr;
            this.c = activity;
            this.d = i;
        }

        public void run() {
            int[] iArr = new int[this.b.length];
            PackageManager packageManager = this.c.getPackageManager();
            String packageName = this.c.getPackageName();
            int length = this.b.length;
            for (int i = 0; i < length; i++) {
                iArr[i] = packageManager.checkPermission(this.b[i], packageName);
            }
            ((b) this.c).onRequestPermissionsResult(this.d, this.b, iArr);
        }
    }

    public interface b {
        void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);
    }

    public interface c {
        void validateRequestPermissionsRequestCode(int i);
    }

    public static void d(Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else if (!c.c(activity)) {
            activity.recreate();
        }
    }

    public static void e(Activity activity, String[] strArr, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            if (activity instanceof c) {
                ((c) activity).validateRequestPermissionsRequestCode(i);
            }
            activity.requestPermissions(strArr, i);
        } else if (activity instanceof b) {
            new Handler(Looper.getMainLooper()).post(new RunnableC0010a(strArr, activity, i));
        }
    }
}
