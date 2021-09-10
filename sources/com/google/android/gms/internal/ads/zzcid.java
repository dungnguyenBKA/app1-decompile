package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.ArrayList;

public final class zzcid extends FrameLayout {
    private final zzad zzdsj;

    public zzcid(Context context, View view, zzad zzad) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(view);
        this.zzdsj = zzad;
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.zzdsj.zzd(motionEvent);
        return false;
    }

    public final void removeAllViews() {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && (childAt instanceof zzbeb)) {
                arrayList.add((zzbeb) childAt);
            }
        }
        super.removeAllViews();
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((zzbeb) obj).destroy();
        }
    }
}
