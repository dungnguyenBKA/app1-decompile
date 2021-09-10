package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

public final class zzbcv {
    private long zzdg;

    public final long zzq(ByteBuffer byteBuffer) {
        zzbt zzbt;
        zzbu zzbu;
        long j = this.zzdg;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<zzbs> it = new zzbq(new zzbcw(duplicate), zzbcx.zzepj).zzbmk().iterator();
            while (true) {
                zzbt = null;
                if (!it.hasNext()) {
                    zzbu = null;
                    break;
                }
                zzbs next = it.next();
                if (next instanceof zzbu) {
                    zzbu = (zzbu) next;
                    break;
                }
            }
            Iterator<zzbs> it2 = zzbu.zzbmk().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzbs next2 = it2.next();
                if (next2 instanceof zzbt) {
                    zzbt = (zzbt) next2;
                    break;
                }
            }
            long duration = (zzbt.getDuration() * 1000) / zzbt.zzr();
            this.zzdg = duration;
            return duration;
        } catch (IOException | RuntimeException unused) {
            return 0;
        }
    }
}
