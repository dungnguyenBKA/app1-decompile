package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzad;

/* access modifiers changed from: package-private */
public final class e extends RelativeLayout {
    private zzad b;
    boolean c;

    public e(Context context, String str, String str2) {
        super(context);
        zzad zzad = new zzad(context, str);
        this.b = zzad;
        zzad.zzu(str2);
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.c) {
            return false;
        }
        this.b.zzd(motionEvent);
        return false;
    }
}
