package defpackage;

import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.LocaleList;

/* renamed from: y6  reason: default package */
public class y6 extends Paint {
    public y6() {
    }

    public void setTextLocales(LocaleList localeList) {
    }

    public y6(int i) {
        super(i);
    }

    public y6(PorterDuff.Mode mode) {
        setXfermode(new PorterDuffXfermode(mode));
    }

    public y6(int i, PorterDuff.Mode mode) {
        super(i);
        setXfermode(new PorterDuffXfermode(mode));
    }
}
