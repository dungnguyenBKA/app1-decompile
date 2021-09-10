package com.facebook.ads.redexgen.X;

import android.app.ActivityManager;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;

public class UF implements AbstractC02806e {
    public final /* synthetic */ UO A00;

    public UF(UO uo) {
        this.A00 = uo;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC02806e
    public final AbstractC02956t A5F() {
        if (Build.VERSION.SDK_INT < 16) {
            return this.A00.A08(EnumC02916p.A05);
        }
        if (this.A00.A02 == null) {
            return this.A00.A08(EnumC02916p.A07);
        }
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.A00.A02.getMemoryInfo(memoryInfo);
        return this.A00.A07(memoryInfo.totalMem / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
    }
}
