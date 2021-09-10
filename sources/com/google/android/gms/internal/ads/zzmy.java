package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;

/* access modifiers changed from: package-private */
public final class zzmy {
    private final zzkc zzark;
    private final zzka[] zzbes;
    private zzka zzbet;

    public zzmy(zzka[] zzkaArr, zzkc zzkc) {
        this.zzbes = zzkaArr;
        this.zzark = zzkc;
    }

    public final void release() {
        zzka zzka = this.zzbet;
        if (zzka != null) {
            zzka.release();
            this.zzbet = null;
        }
    }

    public final zzka zza(zzjz zzjz, Uri uri) {
        zzka zzka = this.zzbet;
        if (zzka != null) {
            return zzka;
        }
        zzka[] zzkaArr = this.zzbes;
        int length = zzkaArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zzka zzka2 = zzkaArr[i];
            try {
                if (zzka2.zza(zzjz)) {
                    this.zzbet = zzka2;
                    zzjz.zzgq();
                    break;
                }
                i++;
            } catch (EOFException unused) {
            } finally {
                zzjz.zzgq();
            }
        }
        zzka zzka3 = this.zzbet;
        if (zzka3 != null) {
            zzka3.zza(this.zzark);
            return this.zzbet;
        }
        String zza = zzpt.zza(this.zzbes);
        throw new zznt(ic.e(ic.m(zza, 58), "None of the available extractors (", zza, ") could read the stream."), uri);
    }
}
