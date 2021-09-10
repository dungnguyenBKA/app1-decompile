package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zzbde implements Iterable<zzbdc> {
    private final List<zzbdc> zzepo = new ArrayList();

    public static boolean zzc(zzbbo zzbbo) {
        zzbdc zzd = zzd(zzbbo);
        if (zzd == null) {
            return false;
        }
        zzd.zzepm.abort();
        return true;
    }

    static zzbdc zzd(zzbbo zzbbo) {
        Iterator<zzbdc> it = zzr.zzln().iterator();
        while (it.hasNext()) {
            zzbdc next = it.next();
            if (next.zzeix == zzbbo) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<zzbdc> iterator() {
        return this.zzepo.iterator();
    }

    public final void zza(zzbdc zzbdc) {
        this.zzepo.add(zzbdc);
    }

    public final void zzb(zzbdc zzbdc) {
        this.zzepo.remove(zzbdc);
    }
}
