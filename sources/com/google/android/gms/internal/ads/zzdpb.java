package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzug;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.concurrent.GuardedBy;

/* access modifiers changed from: package-private */
public final class zzdpb implements zzdpc {
    @GuardedBy("this")
    private final ConcurrentHashMap<zzdpl, zzdoz> zzhmy;
    private zzdpf zzhmz;
    private zzdpd zzhna = new zzdpd();

    public zzdpb(zzdpf zzdpf) {
        this.zzhmy = new ConcurrentHashMap<>(zzdpf.zzhno);
        this.zzhmz = zzdpf;
    }

    private final void dumpToLog() {
        if (zzdpf.zzawe()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.zzhmz.zzhnm);
            sb.append(" PoolCollection");
            sb.append(this.zzhna.zzawd());
            int i = 0;
            for (Map.Entry<zzdpl, zzdoz> entry : this.zzhmy.entrySet()) {
                i++;
                sb.append(i);
                sb.append(". ");
                sb.append(entry.getValue());
                sb.append("#");
                sb.append(entry.getKey().hashCode());
                sb.append("    ");
                for (int i2 = 0; i2 < entry.getValue().size(); i2++) {
                    sb.append("[O]");
                }
                for (int size = entry.getValue().size(); size < this.zzhmz.zzhno; size++) {
                    sb.append("[ ]");
                }
                sb.append("\n");
                sb.append(entry.getValue().zzavs());
                sb.append("\n");
            }
            while (i < this.zzhmz.zzhnn) {
                i++;
                sb.append(i);
                sb.append(".\n");
            }
            zzazk.zzdy(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    public final synchronized zzdpm<?> zza(zzdpl zzdpl) {
        zzdpm<?> zzdpm;
        zzdoz zzdoz = this.zzhmy.get(zzdpl);
        zzdpm = null;
        if (zzdoz != null) {
            zzdpm = zzdoz.zzavp();
            if (zzdpm == null) {
                this.zzhna.zzavy();
            }
            zza(zzdpm, zzdoz.zzavt());
        } else {
            this.zzhna.zzavx();
            zza((zzdpm<?>) null, (zzdqb) null);
        }
        return zzdpm;
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    public final zzdpf zzavw() {
        return this.zzhmz;
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    public final synchronized boolean zzb(zzdpl zzdpl) {
        zzdoz zzdoz = this.zzhmy.get(zzdpl);
        if (zzdoz == null) {
            return true;
        }
        if (zzdoz.size() < this.zzhmz.zzhno) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    public final synchronized boolean zza(zzdpl zzdpl, zzdpm<?> zzdpm) {
        boolean zzb;
        zzdoz zzdoz = this.zzhmy.get(zzdpl);
        zzdpm.zzhoj = zzr.zzky().a();
        if (zzdoz == null) {
            zzdpf zzdpf = this.zzhmz;
            zzdoz = new zzdoz(zzdpf.zzhno, zzdpf.zzhnp * AdError.NETWORK_ERROR_CODE);
            int size = this.zzhmy.size();
            zzdpf zzdpf2 = this.zzhmz;
            if (size == zzdpf2.zzhnn) {
                int i = zzdpe.zzhnh[zzdpf2.zzhns - 1];
                long j = Long.MAX_VALUE;
                zzdpl zzdpl2 = null;
                if (i == 1) {
                    for (Map.Entry<zzdpl, zzdoz> entry : this.zzhmy.entrySet()) {
                        if (entry.getValue().getCreationTimeMillis() < j) {
                            j = entry.getValue().getCreationTimeMillis();
                            zzdpl2 = entry.getKey();
                        }
                    }
                    if (zzdpl2 != null) {
                        this.zzhmy.remove(zzdpl2);
                    }
                } else if (i == 2) {
                    for (Map.Entry<zzdpl, zzdoz> entry2 : this.zzhmy.entrySet()) {
                        if (entry2.getValue().zzavq() < j) {
                            j = entry2.getValue().zzavq();
                            zzdpl2 = entry2.getKey();
                        }
                    }
                    if (zzdpl2 != null) {
                        this.zzhmy.remove(zzdpl2);
                    }
                } else if (i == 3) {
                    int i2 = Integer.MAX_VALUE;
                    for (Map.Entry<zzdpl, zzdoz> entry3 : this.zzhmy.entrySet()) {
                        if (entry3.getValue().zzavr() < i2) {
                            i2 = entry3.getValue().zzavr();
                            zzdpl2 = entry3.getKey();
                        }
                    }
                    if (zzdpl2 != null) {
                        this.zzhmy.remove(zzdpl2);
                    }
                }
                this.zzhna.zzawa();
            }
            this.zzhmy.put(zzdpl, zzdoz);
            this.zzhna.zzavz();
        }
        zzb = zzdoz.zzb(zzdpm);
        this.zzhna.zzawb();
        zzdpg zzawc = this.zzhna.zzawc();
        zzdqb zzavt = zzdoz.zzavt();
        zzdpm.zzhoh.zzalc().zzd((zzug.zzb) ((zzelb) zzug.zzb.zznl().zza(zzug.zzb.zza.zznn().zza(zzug.zzb.EnumC0071zzb.IN_MEMORY).zza(zzug.zzb.zze.zznr().zzs(zzawc.zzhnv).zzt(zzawc.zzhnw).zzca(zzavt.zzhpe))).zzbiw()));
        dumpToLog();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdpc
    @Deprecated
    public final zzdpl zza(zzvl zzvl, String str, zzvx zzvx) {
        return new zzdpo(zzvl, str, new zzaty(this.zzhmz.context).zzws().zzdyc, this.zzhmz.zzhnq, zzvx);
    }

    private final void zza(zzdpm<?> zzdpm, zzdqb zzdqb) {
        if (zzdpm != null) {
            zzdpm.zzhoh.zzalc().zzc((zzug.zzb) ((zzelb) zzug.zzb.zznl().zza(zzug.zzb.zza.zznn().zza(zzug.zzb.EnumC0071zzb.IN_MEMORY).zza(zzug.zzb.zzd.zznp().zzq(zzdqb.zzhpd).zzby(zzdqb.zzhpe))).zzbiw()));
        }
        dumpToLog();
    }
}
