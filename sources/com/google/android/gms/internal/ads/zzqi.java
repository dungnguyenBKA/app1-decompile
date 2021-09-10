package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public final class zzqi {
    private final zzqh zzbmo;
    private final boolean zzbmp;
    private final long zzbmq;
    private final long zzbmr;
    private long zzbms;
    private long zzbmt;
    private long zzbmu;
    private boolean zzbmv;
    private long zzbmw;
    private long zzbmx;
    private long zzbmy;

    public zzqi() {
        this(-1.0d);
    }

    private final boolean zzg(long j, long j2) {
        return Math.abs((j2 - this.zzbmw) - (j - this.zzbmx)) > 20000000;
    }

    public final void disable() {
        if (this.zzbmp) {
            this.zzbmo.removeObserver();
        }
    }

    public final void enable() {
        this.zzbmv = false;
        if (this.zzbmp) {
            this.zzbmo.zzjq();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x004a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long zzf(long r10, long r12) {
        /*
        // Method dump skipped, instructions count: 134
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.zzf(long, long):long");
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public zzqi(android.content.Context r3) {
        /*
            r2 = this;
            java.lang.String r0 = "window"
            java.lang.Object r3 = r3.getSystemService(r0)
            android.view.WindowManager r3 = (android.view.WindowManager) r3
            android.view.Display r0 = r3.getDefaultDisplay()
            if (r0 == 0) goto L_0x0018
            android.view.Display r3 = r3.getDefaultDisplay()
            float r3 = r3.getRefreshRate()
            double r0 = (double) r3
            goto L_0x001a
        L_0x0018:
            r0 = -4616189618054758400(0xbff0000000000000, double:-1.0)
        L_0x001a:
            r2.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzqi.<init>(android.content.Context):void");
    }

    private zzqi(double d) {
        boolean z = d != -1.0d;
        this.zzbmp = z;
        if (z) {
            this.zzbmo = zzqh.zzjp();
            long j = (long) (1.0E9d / d);
            this.zzbmq = j;
            this.zzbmr = (j * 80) / 100;
            return;
        }
        this.zzbmo = null;
        this.zzbmq = -1;
        this.zzbmr = -1;
    }
}
