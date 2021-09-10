package com.google.android.gms.internal.ads;

import java.util.HashMap;

public final class zzfk extends zzcw<Integer, Long> {
    public Long zzaan;
    public Long zzaao;
    public Long zzaap;
    public Long zzaaq;

    public zzfk() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final void zzam(String str) {
        HashMap zzan = zzcw.zzan(str);
        if (zzan != null) {
            this.zzaan = (Long) zzan.get(0);
            this.zzaao = (Long) zzan.get(1);
            this.zzaap = (Long) zzan.get(2);
            this.zzaaq = (Long) zzan.get(3);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final HashMap<Integer, Long> zzbn() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzaan);
        hashMap.put(1, this.zzaao);
        hashMap.put(2, this.zzaap);
        hashMap.put(3, this.zzaaq);
        return hashMap;
    }

    public zzfk(String str) {
        zzam(str);
    }
}
