package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.vungle.warren.error.VungleException;
import java.util.List;

/* renamed from: za0  reason: default package */
public abstract class za0 implements ab0 {
    private xa0 a;

    /* access modifiers changed from: package-private */
    /* renamed from: za0$a */
    public class a implements Runnable {
        final /* synthetic */ Activity b;
        final /* synthetic */ cb0 c;

        a(Activity activity, cb0 cb0) {
            this.b = activity;
            this.c = cb0;
        }

        public void run() {
            za0.a(za0.this, this.b, this.c);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static void a(defpackage.za0 r4, android.app.Activity r5, defpackage.cb0 r6) {
        /*
        // Method dump skipped, instructions count: 143
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.za0.a(za0, android.app.Activity, cb0):void");
    }

    public void b(Activity activity, boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            if (z) {
                d(activity);
                return;
            }
            WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 2;
            activity.getWindow().setAttributes(attributes);
        } else if (z) {
            c(activity);
        } else {
            e(activity);
        }
    }

    /* access modifiers changed from: protected */
    public void c(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public void d(Activity activity) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.layoutInDisplayCutoutMode = 1;
        activity.getWindow().setAttributes(attributes);
    }

    /* access modifiers changed from: protected */
    public void e(Activity activity) {
    }

    /* access modifiers changed from: protected */
    public abstract int[] f(Activity activity);

    /* access modifiers changed from: protected */
    @TargetApi(VungleException.INVALID_SIZE)
    public int[] g(Activity activity) {
        int[] iArr = {0, 0};
        List<Rect> boundingRects = activity.getWindow().getDecorView().getRootWindowInsets().getDisplayCutout().getBoundingRects();
        if (boundingRects.size() != 0) {
            Rect rect = boundingRects.get(0);
            iArr[0] = rect.width();
            iArr[1] = rect.height();
            this.a.a();
            int i = iArr[0];
            int i2 = iArr[1];
        }
        return iArr;
    }

    /* access modifiers changed from: protected */
    public abstract boolean h(Activity activity);

    /* access modifiers changed from: protected */
    @TargetApi(VungleException.INVALID_SIZE)
    public boolean i(Activity activity) {
        WindowInsets rootWindowInsets = activity.getWindow().getDecorView().getRootWindowInsets();
        if (rootWindowInsets == null) {
            return false;
        }
        DisplayCutout displayCutout = rootWindowInsets.getDisplayCutout();
        if (displayCutout == null || displayCutout.getBoundingRects() == null || displayCutout.getBoundingRects().size() == 0) {
            this.a.a();
            return false;
        }
        this.a.a();
        return true;
    }

    public void j(Activity activity, cb0 cb0) {
        if (this.a != null) {
            this.a = null;
        }
        xa0 xa0 = new xa0();
        this.a = xa0;
        xa0.d(Build.MANUFACTURER);
        activity.getWindow().getDecorView().post(new a(activity, cb0));
    }
}
