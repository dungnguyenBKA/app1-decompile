package defpackage;

import android.graphics.drawable.GradientDrawable;

/* renamed from: qn  reason: default package */
public class qn extends pn {
    private GradientDrawable.Orientation c;
    private int[] d;

    public qn(GradientDrawable.Orientation orientation, int[] iArr) {
        this.c = orientation;
        this.d = iArr;
    }

    public int[] b() {
        return this.d;
    }

    public GradientDrawable.Orientation c() {
        return this.c;
    }
}
