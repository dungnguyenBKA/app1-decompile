package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

final class zzekn implements zzeoy {
    private final zzekl zzime;

    private zzekn(zzekl zzekl) {
        zzekl zzekl2 = (zzekl) zzeld.zza(zzekl, "output");
        this.zzime = zzekl2;
        zzekl2.zzind = this;
    }

    public static zzekn zza(zzekl zzekl) {
        zzekn zzekn = zzekl.zzind;
        if (zzekn != null) {
            return zzekn;
        }
        return new zzekn(zzekl);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzac(int i, int i2) {
        this.zzime.zzac(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzad(int i, int i2) {
        this.zzime.zzad(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzae(int i, int i2) {
        this.zzime.zzae(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzaf(int i, int i2) {
        this.zzime.zzaf(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzam(int i, int i2) {
        this.zzime.zzaf(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzan(int i, int i2) {
        this.zzime.zzac(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, double d) {
        this.zzime.zzb(i, d);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final int zzbhv() {
        return zzeox.zzixh;
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzc(int i, Object obj) {
        if (obj instanceof zzejr) {
            this.zzime.zzb(i, (zzejr) obj);
        } else {
            this.zzime.zza(i, (zzemo) obj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzd(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzfl(list.get(i4).longValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzfh(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzi(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zze(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzfn(list.get(i4).longValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzfj(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzk(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzf(int i, List<Float> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzg(list.get(i4).floatValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzf(list.get(i2).floatValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zza(i, list.get(i2).floatValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzg(int i, List<Double> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzd(list.get(i4).doubleValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzc(list.get(i2).doubleValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzb(i, list.get(i2).doubleValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzh(int i, boolean z) {
        this.zzime.zzh(i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzhe(int i) {
        this.zzime.writeTag(i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzhf(int i) {
        this.zzime.writeTag(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzi(int i, long j) {
        this.zzime.zzi(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzj(int i, long j) {
        this.zzime.zzj(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzk(int i, long j) {
        this.zzime.zzk(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzl(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzfo(list.get(i4).longValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzfj(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzk(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzm(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzgy(list.get(i4).intValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzgt(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzae(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzn(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzfm(list.get(i4).longValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzfi(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzj(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzq(int i, long j) {
        this.zzime.zzi(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzr(int i, long j) {
        this.zzime.zzk(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, Object obj, zzenj zzenj) {
        zzekl zzekl = this.zzime;
        zzekl.writeTag(i, 3);
        zzenj.zza((zzemo) obj, zzekl.zzind);
        zzekl.writeTag(i, 4);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzh(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzhb(list.get(i4).intValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzgr(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzac(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzi(int i, String str) {
        this.zzime.zzi(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzj(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzgx(list.get(i4).intValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzgs(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzad(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzk(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzha(list.get(i4).intValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzgu(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzaf(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, float f) {
        this.zzime.zza(i, f);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzi(int i, List<Boolean> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzbs(list.get(i4).booleanValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzbr(list.get(i2).booleanValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzh(i, list.get(i2).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, zzejr zzejr) {
        this.zzime.zza(i, zzejr);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzc(int i, List<Long> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzfk(list.get(i4).longValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzfh(list.get(i2).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzi(i, list.get(i2).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, Object obj, zzenj zzenj) {
        this.zzime.zza(i, (zzemo) obj, zzenj);
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzgw(list.get(i4).intValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzgr(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzac(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, List<Integer> list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zzime.writeTag(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzekl.zzgz(list.get(i4).intValue());
            }
            this.zzime.zzgs(i3);
            while (i2 < list.size()) {
                this.zzime.zzgu(list.get(i2).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzaf(i, list.get(i2).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, List<String> list) {
        int i2 = 0;
        if (list instanceof zzelv) {
            zzelv zzelv = (zzelv) list;
            while (i2 < list.size()) {
                Object zzhj = zzelv.zzhj(i2);
                if (zzhj instanceof String) {
                    this.zzime.zzi(i, (String) zzhj);
                } else {
                    this.zzime.zza(i, (zzejr) zzhj);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zzime.zzi(i, list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, List<zzejr> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zzime.zza(i, list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zzb(int i, List<?> list, zzenj zzenj) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzb(i, list.get(i2), zzenj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final void zza(int i, List<?> list, zzenj zzenj) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            zza(i, list.get(i2), zzenj);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeoy
    public final <K, V> void zza(int i, zzemf<K, V> zzemf, Map<K, V> map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            this.zzime.writeTag(i, 2);
            this.zzime.zzgs(zzemg.zza(zzemf, entry.getKey(), entry.getValue()));
            zzemg.zza(this.zzime, zzemf, entry.getKey(), entry.getValue());
        }
    }
}
