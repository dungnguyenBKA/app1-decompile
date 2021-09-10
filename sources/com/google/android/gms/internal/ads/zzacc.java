package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
public final class zzacc {
    private final Object lock;
    final boolean zzdbd;
    private final List<zzaca> zzdbe = new LinkedList();
    private final Map<String, String> zzdbf;
    private zzacc zzdbg;

    public zzacc(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzdbf = linkedHashMap;
        this.lock = new Object();
        this.zzdbd = true;
        linkedHashMap.put("action", str);
        linkedHashMap.put("ad_format", str2);
    }

    public final boolean zza(zzaca zzaca, long j, String... strArr) {
        synchronized (this.lock) {
            for (String str : strArr) {
                this.zzdbe.add(new zzaca(j, str, zzaca));
            }
        }
        return true;
    }

    public final void zzc(zzacc zzacc) {
        synchronized (this.lock) {
            this.zzdbg = zzacc;
        }
    }

    public final zzaca zzex(long j) {
        if (!this.zzdbd) {
            return null;
        }
        return new zzaca(j, null, null);
    }

    public final void zzg(String str, String str2) {
        zzabs zzxm;
        if (this.zzdbd && !TextUtils.isEmpty(str2) && (zzxm = zzr.zzkv().zzxm()) != null) {
            synchronized (this.lock) {
                zzabw zzcq = zzxm.zzcq(str);
                Map<String, String> map = this.zzdbf;
                map.put(str, zzcq.zzf(map.get(str), str2));
            }
        }
    }

    public final zzacf zzsn() {
        zzacf zzacf;
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.lock) {
            for (zzaca zzaca : this.zzdbe) {
                long time = zzaca.getTime();
                String zzsl = zzaca.zzsl();
                zzaca zzsm = zzaca.zzsm();
                if (zzsm != null && time > 0) {
                    sb.append(zzsl);
                    sb.append('.');
                    sb.append(time - zzsm.getTime());
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(zzsm.getTime()))) {
                            hashMap.put(Long.valueOf(zzsm.getTime()), new StringBuilder(zzsl));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(zzsm.getTime()));
                            sb2.append('+');
                            sb2.append(zzsl);
                        }
                    }
                }
            }
            this.zzdbe.clear();
            String str = null;
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            StringBuilder sb3 = new StringBuilder();
            if (booleanValue) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    sb3.append((CharSequence) entry.getValue());
                    sb3.append('.');
                    long longValue = ((Long) entry.getKey()).longValue();
                    sb3.append((longValue - zzr.zzky().b()) + zzr.zzky().a());
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str = sb3.toString();
            }
            zzacf = new zzacf(sb.toString(), str);
        }
        return zzacf;
    }

    public final Map<String, String> zzso() {
        synchronized (this.lock) {
            zzabs zzxm = zzr.zzkv().zzxm();
            if (zzxm != null) {
                zzacc zzacc = this.zzdbg;
                if (zzacc != null) {
                    return zzxm.zza(this.zzdbf, zzacc.zzso());
                }
            }
            return this.zzdbf;
        }
    }
}
