package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* renamed from: jf  reason: default package */
public final class jf {
    private final int a;
    private final int b;
    private final Context c;
    private final int d;

    /* renamed from: jf$a */
    public static final class a {
        static final int e = (Build.VERSION.SDK_INT < 26 ? 4 : 1);
        final Context a;
        ActivityManager b;
        c c;
        float d = ((float) e);

        public a(Context context) {
            this.a = context;
            this.b = (ActivityManager) context.getSystemService("activity");
            this.c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && this.b.isLowRamDevice()) {
                this.d = 0.0f;
            }
        }

        public jf a() {
            return new jf(this);
        }
    }

    /* renamed from: jf$b */
    private static final class b implements c {
        private final DisplayMetrics a;

        b(DisplayMetrics displayMetrics) {
            this.a = displayMetrics;
        }

        public int a() {
            return this.a.heightPixels;
        }

        public int b() {
            return this.a.widthPixels;
        }
    }

    /* renamed from: jf$c */
    interface c {
    }

    jf(a aVar) {
        this.c = aVar.a;
        int i = aVar.b.isLowRamDevice() ? 2097152 : 4194304;
        this.d = i;
        ActivityManager activityManager = aVar.b;
        float f = 0.4f;
        int round = Math.round(((float) (activityManager.getMemoryClass() * 1024 * 1024)) * (activityManager.isLowRamDevice() ? 0.33f : f));
        float b2 = (float) (((b) aVar.c).b() * ((b) aVar.c).a() * 4);
        int round2 = Math.round(aVar.d * b2);
        int round3 = Math.round(b2 * 2.0f);
        int i2 = round - i;
        if (round3 + round2 <= i2) {
            this.b = round3;
            this.a = round2;
        } else {
            float f2 = ((float) i2) / (aVar.d + 2.0f);
            this.b = Math.round(2.0f * f2);
            this.a = Math.round(f2 * aVar.d);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            d(this.b);
            d(this.a);
            d(i);
            d(round);
            aVar.b.getMemoryClass();
            aVar.b.isLowRamDevice();
        }
    }

    private String d(int i) {
        return Formatter.formatFileSize(this.c, (long) i);
    }

    public int a() {
        return this.d;
    }

    public int b() {
        return this.a;
    }

    public int c() {
        return this.b;
    }
}
