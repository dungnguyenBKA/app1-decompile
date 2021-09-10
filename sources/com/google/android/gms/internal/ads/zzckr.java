package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public final class zzckr implements zzdrp {
    private final d zzbqg;
    private final Map<zzdrk, Long> zzglv = new HashMap();
    private final zzckl zzglw;
    private final Map<zzdrk, zzcku> zzglx = new HashMap();

    public zzckr(zzckl zzckl, Set<zzcku> set, d dVar) {
        this.zzglw = zzckl;
        for (zzcku zzcku : set) {
            this.zzglx.put(zzcku.zza(zzcku), zzcku);
        }
        this.zzbqg = dVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zza(zzdrk zzdrk, String str, Throwable th) {
        if (this.zzglv.containsKey(zzdrk)) {
            long b = this.zzbqg.b() - this.zzglv.get(zzdrk).longValue();
            Map<String, String> zzso = this.zzglw.zzso();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(b));
            zzso.put(concat, valueOf2.length() != 0 ? "f.".concat(valueOf2) : new String("f."));
        }
        if (this.zzglx.containsKey(zzdrk)) {
            zza(zzdrk, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzb(zzdrk zzdrk, String str) {
        this.zzglv.put(zzdrk, Long.valueOf(this.zzbqg.b()));
    }

    @Override // com.google.android.gms.internal.ads.zzdrp
    public final void zzc(zzdrk zzdrk, String str) {
        if (this.zzglv.containsKey(zzdrk)) {
            long b = this.zzbqg.b() - this.zzglv.get(zzdrk).longValue();
            Map<String, String> zzso = this.zzglw.zzso();
            String valueOf = String.valueOf(str);
            String concat = valueOf.length() != 0 ? "task.".concat(valueOf) : new String("task.");
            String valueOf2 = String.valueOf(Long.toString(b));
            zzso.put(concat, valueOf2.length() != 0 ? "s.".concat(valueOf2) : new String("s."));
        }
        if (this.zzglx.containsKey(zzdrk)) {
            zza(zzdrk, true);
        }
    }

    private final void zza(zzdrk zzdrk, boolean z) {
        zzdrk zzb = zzcku.zzb(this.zzglx.get(zzdrk));
        String str = z ? "s." : "f.";
        if (this.zzglv.containsKey(zzb)) {
            long b = this.zzbqg.b() - this.zzglv.get(zzb).longValue();
            Map<String, String> zzso = this.zzglw.zzso();
            String valueOf = String.valueOf(zzcku.zzc(this.zzglx.get(zzdrk)));
            String concat = valueOf.length() != 0 ? "label.".concat(valueOf) : new String("label.");
            String valueOf2 = String.valueOf(Long.toString(b));
            zzso.put(concat, valueOf2.length() != 0 ? str.concat(valueOf2) : new String(str));
        }
    }
}
