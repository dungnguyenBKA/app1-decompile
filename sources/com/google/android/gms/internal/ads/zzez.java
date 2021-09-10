package com.google.android.gms.internal.ads;

import java.util.HashMap;

public final class zzez extends zzcw<Integer, Long> {
    public Long zzyt;
    public Long zzyu;

    public zzez() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final void zzam(String str) {
        HashMap zzan = zzcw.zzan(str);
        if (zzan != null) {
            this.zzyt = (Long) zzan.get(0);
            this.zzyu = (Long) zzan.get(1);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final HashMap<Integer, Long> zzbn() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzyt);
        hashMap.put(1, this.zzyu);
        return hashMap;
    }

    public zzez(String str) {
        zzam(str);
    }
}
