package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import photoeditor.cutout.backgrounderaser.R;

/* renamed from: j  reason: default package */
public class j {
    private Context a;

    private j(Context context) {
        this.a = context;
    }

    public static j b(Context context) {
        return new j(context);
    }

    public boolean a() {
        return this.a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int c() {
        return this.a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public int d() {
        Configuration configuration = this.a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600) {
            return 5;
        }
        if (i > 960 && i2 > 720) {
            return 5;
        }
        if (i > 720 && i2 > 960) {
            return 5;
        }
        if (i >= 500) {
            return 4;
        }
        if (i > 640 && i2 > 480) {
            return 4;
        }
        if (i <= 480 || i2 <= 640) {
            return i >= 360 ? 3 : 2;
        }
        return 4;
    }

    public boolean e() {
        return this.a.getResources().getBoolean(R.bool.a);
    }
}
