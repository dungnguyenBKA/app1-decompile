package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdxe extends zzdxd<E> {
    private final transient int length;
    private final transient int offset;
    private final /* synthetic */ zzdxd zzhxr;

    zzdxe(zzdxd zzdxd, int i, int i2) {
        this.zzhxr = zzdxd;
        this.offset = i;
        this.length = i2;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzdwl.zzt(i, this.length);
        return (E) this.zzhxr.get(i + this.offset);
    }

    public final int size() {
        return this.length;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final Object[] zzazh() {
        return this.zzhxr.zzazh();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zzazi() {
        return this.zzhxr.zzazi() + this.offset;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zzazj() {
        return this.zzhxr.zzazi() + this.offset + this.length;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdxd
    /* renamed from: zzv */
    public final zzdxd<E> subList(int i, int i2) {
        zzdwl.zzf(i, i2, this.length);
        zzdxd zzdxd = this.zzhxr;
        int i3 = this.offset;
        return (zzdxd) zzdxd.subList(i + i3, i2 + i3);
    }
}
