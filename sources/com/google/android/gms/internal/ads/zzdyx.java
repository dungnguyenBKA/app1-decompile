package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyo;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

abstract class zzdyx<V, C> extends zzdyo<V, C> {
    private List<zzdyz<V>> zziae;

    zzdyx(zzdwy<? extends zzdzw<? extends V>> zzdwy, boolean z) {
        super(zzdwy, true, true);
        List<zzdyz<V>> list;
        if (zzdwy.isEmpty()) {
            list = zzdxd.zzazm();
        } else {
            list = zzdxl.zzet(zzdwy.size());
        }
        for (int i = 0; i < zzdwy.size(); i++) {
            list.add(null);
        }
        this.zziae = list;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zza(zzdyo.zza zza) {
        super.zza(zza);
        this.zziae = null;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzdyx<V, C> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zzazx() {
        List<zzdyz<V>> list = this.zziae;
        if (list != null) {
            set(zzl(list));
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zzb(int i, @NullableDecl V v) {
        List<zzdyz<V>> list = this.zziae;
        if (list != null) {
            list.set(i, new zzdyz<>(v));
        }
    }

    /* access modifiers changed from: package-private */
    public abstract C zzl(List<zzdyz<V>> list);
}
