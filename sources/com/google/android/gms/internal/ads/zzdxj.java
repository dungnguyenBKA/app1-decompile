package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public final class zzdxj<E> extends zzdxb<E> {
    private int zzahx;
    @NullableDecl
    private Object[] zzhya;

    public zzdxj() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxa
    public final /* synthetic */ zzdxa zza(Iterator it) {
        zzdwl.checkNotNull(it);
        while (it.hasNext()) {
            zzaa(it.next());
        }
        return this;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r6v0, resolved type: java.lang.Object */
    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object[] */
    /* JADX DEBUG: Multi-variable search result rejected for r4v0, resolved type: java.lang.Object[] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdxb, com.google.android.gms.internal.ads.zzdxa
    public final /* synthetic */ zzdxa zzaa(Object obj) {
        zzdwl.checkNotNull(obj);
        if (this.zzhya != null) {
            int zzer = zzdxg.zzer(this.size);
            Object[] objArr = this.zzhya;
            if (zzer <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int zzep = zzdwz.zzep(hashCode);
                while (true) {
                    int i = zzep & length;
                    Object[] objArr2 = this.zzhya;
                    Object[] objArr3 = objArr2[i];
                    if (objArr3 != 0) {
                        if (objArr3.equals(obj)) {
                            break;
                        }
                        zzep = i + 1;
                    } else {
                        objArr2[i] = obj;
                        this.zzahx += hashCode;
                        super.zzaa(obj);
                        break;
                    }
                }
                return this;
            }
        }
        this.zzhya = null;
        super.zzaa(obj);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdxb
    public final /* synthetic */ zzdxb zzab(Object obj) {
        return (zzdxj) zzaa(obj);
    }

    public final zzdxg<E> zzazs() {
        zzdxg<E> zzdxg;
        int i = this.size;
        if (i == 0) {
            return zzdxx.zzhyn;
        }
        if (i == 1) {
            return zzdxg.zzad(this.zzhxo[0]);
        }
        if (this.zzhya == null || zzdxg.zzer(i) != this.zzhya.length) {
            zzdxg = zzdxg.zza(this.size, this.zzhxo);
            this.size = zzdxg.size();
        } else {
            Object[] copyOf = zzdxg.zzw(this.size, this.zzhxo.length) ? Arrays.copyOf(this.zzhxo, this.size) : this.zzhxo;
            int i2 = this.zzahx;
            Object[] objArr = this.zzhya;
            zzdxg = new zzdxx<>(copyOf, i2, objArr, objArr.length - 1, this.size);
        }
        this.zzhxp = true;
        this.zzhya = null;
        return zzdxg;
    }

    @Override // com.google.android.gms.internal.ads.zzdxb, com.google.android.gms.internal.ads.zzdxa
    public final /* synthetic */ zzdxa zzg(Iterable iterable) {
        zzdwl.checkNotNull(iterable);
        if (this.zzhya != null) {
            for (Object obj : iterable) {
                zzaa(obj);
            }
        } else {
            super.zzg(iterable);
        }
        return this;
    }

    zzdxj(int i) {
        super(i);
        this.zzhya = new Object[zzdxg.zzer(i)];
    }
}
