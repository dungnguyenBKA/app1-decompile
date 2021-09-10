package defpackage;

import android.graphics.drawable.BitmapDrawable;

/* renamed from: tl  reason: default package */
public class tl extends BitmapDrawable {
    private int a;

    public void a(boolean z) {
        synchronized (this) {
            if (z) {
                this.a++;
            } else {
                this.a--;
            }
        }
        synchronized (this) {
        }
    }
}
