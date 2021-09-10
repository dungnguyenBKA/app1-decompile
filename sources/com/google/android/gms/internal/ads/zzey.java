package com.google.android.gms.internal.ads;

import java.util.HashMap;

public final class zzey extends zzcw<Integer, Object> {
    public Long zzyq;
    public Boolean zzyr;
    public Boolean zzys;

    public zzey() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final void zzam(String str) {
        HashMap zzan = zzcw.zzan(str);
        if (zzan != null) {
            this.zzyq = (Long) zzan.get(0);
            this.zzyr = (Boolean) zzan.get(1);
            this.zzys = (Boolean) zzan.get(2);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final HashMap<Integer, Object> zzbn() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zzyq);
        hashMap.put(1, this.zzyr);
        hashMap.put(2, this.zzys);
        return hashMap;
    }

    public zzey(String str) {
        zzam(str);
    }
}
