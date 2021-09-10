package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzdsd {
    private final d zzbqg;
    private final Map<String, List<String>> zzhrq = new HashMap();
    private final Map<String, Long> zzhrr = new HashMap();

    public zzdsd(d dVar) {
        this.zzbqg = dVar;
    }

    private final void zzx(String str, String str2) {
        if (!this.zzhrq.containsKey(str)) {
            this.zzhrq.put(str, new ArrayList());
        }
        this.zzhrq.get(str).add(str2);
    }

    public final List<zzdsg> zzaxl() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<String>> entry : this.zzhrq.entrySet()) {
            int i = 0;
            if (entry.getValue().size() > 1) {
                for (String str : entry.getValue()) {
                    String key = entry.getKey();
                    i++;
                    StringBuilder sb = new StringBuilder(String.valueOf(key).length() + 12);
                    sb.append(key);
                    sb.append(".");
                    sb.append(i);
                    arrayList.add(new zzdsg(sb.toString(), str));
                }
            } else {
                arrayList.add(new zzdsg(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return arrayList;
    }

    public final void zzha(String str) {
        if (this.zzhrr.containsKey(str)) {
            StringBuilder sb = new StringBuilder(20);
            sb.append(this.zzbqg.b() - this.zzhrr.remove(str).longValue());
            zzx(str, sb.toString());
            return;
        }
        this.zzhrr.put(str, Long.valueOf(this.zzbqg.b()));
    }

    public final void zzw(String str, String str2) {
        if (this.zzhrr.containsKey(str)) {
            long b = this.zzbqg.b() - this.zzhrr.remove(str).longValue();
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 20);
            sb.append(str2);
            sb.append(b);
            zzx(str, sb.toString());
            return;
        }
        this.zzhrr.put(str, Long.valueOf(this.zzbqg.b()));
    }
}
