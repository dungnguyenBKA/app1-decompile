package com.google.android.gms.internal.ads;

import java.util.HashMap;

public final class zzcx extends zzcw<Integer, Object> {
    public String zznn;
    public long zzno;
    public String zznp;
    public String zznq;
    public String zznr;

    public zzcx(String str) {
        this();
        zzam(str);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final void zzam(String str) {
        String str2;
        long j;
        String str3;
        String str4;
        HashMap zzan = zzcw.zzan(str);
        if (zzan != null) {
            String str5 = "E";
            if (zzan.get(0) == null) {
                str2 = str5;
            } else {
                str2 = (String) zzan.get(0);
            }
            this.zznn = str2;
            if (zzan.get(1) == null) {
                j = -1;
            } else {
                j = ((Long) zzan.get(1)).longValue();
            }
            this.zzno = j;
            if (zzan.get(2) == null) {
                str3 = str5;
            } else {
                str3 = (String) zzan.get(2);
            }
            this.zznp = str3;
            if (zzan.get(3) == null) {
                str4 = str5;
            } else {
                str4 = (String) zzan.get(3);
            }
            this.zznq = str4;
            if (zzan.get(4) != null) {
                str5 = (String) zzan.get(4);
            }
            this.zznr = str5;
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzcw
    public final HashMap<Integer, Object> zzbn() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zznn);
        hashMap.put(4, this.zznr);
        hashMap.put(3, this.zznq);
        hashMap.put(2, this.zznp);
        hashMap.put(1, Long.valueOf(this.zzno));
        return hashMap;
    }

    public zzcx() {
        this.zznn = "E";
        this.zzno = -1;
        this.zznp = "E";
        this.zznq = "E";
        this.zznr = "E";
    }
}
