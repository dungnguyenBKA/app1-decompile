package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.Iterator;
import java.util.Map;

final class zzemu<T> implements zzenj<T> {
    private final zzemo zzisv;
    private final boolean zzisw;
    private final zzeob<?, ?> zzitf;
    private final zzekq<?> zzitg;

    private zzemu(zzeob<?, ?> zzeob, zzekq<?> zzekq, zzemo zzemo) {
        this.zzitf = zzeob;
        this.zzisw = zzekq.zzj(zzemo);
        this.zzitg = zzekq;
        this.zzisv = zzemo;
    }

    static <T> zzemu<T> zza(zzeob<?, ?> zzeob, zzekq<?> zzekq, zzemo zzemo) {
        return new zzemu<>(zzeob, zzekq, zzemo);
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final boolean equals(T t, T t2) {
        if (!this.zzitf.zzay(t).equals(this.zzitf.zzay(t2))) {
            return false;
        }
        if (this.zzisw) {
            return this.zzitg.zzai(t).equals(this.zzitg.zzai(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final int hashCode(T t) {
        int hashCode = this.zzitf.zzay(t).hashCode();
        return this.zzisw ? (hashCode * 53) + this.zzitg.zzai(t).hashCode() : hashCode;
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final T newInstance() {
        return (T) this.zzisv.zzbip().zzbiv();
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzak(T t) {
        this.zzitf.zzak(t);
        this.zzitg.zzak(t);
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final int zzau(T t) {
        zzeob<?, ?> zzeob = this.zzitf;
        int zzba = zzeob.zzba(zzeob.zzay(t)) + 0;
        return this.zzisw ? zzba + this.zzitg.zzai(t).zzbic() : zzba;
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final boolean zzaw(T t) {
        return this.zzitg.zzai(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzg(T t, T t2) {
        zzenl.zza(this.zzitf, t, t2);
        if (this.zzisw) {
            zzenl.zza(this.zzitg, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zza(T t, zzeoy zzeoy) {
        Iterator<Map.Entry<?, Object>> it = this.zzitg.zzai(t).iterator();
        while (it.hasNext()) {
            Map.Entry<?, Object> next = it.next();
            zzekw zzekw = (zzekw) next.getKey();
            if (zzekw.zzbie() != zzeov.MESSAGE || zzekw.zzbif() || zzekw.zzbig()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof zzelr) {
                zzeoy.zzc(zzekw.zzv(), ((zzelr) next).zzbjl().zzbfz());
            } else {
                zzeoy.zzc(zzekw.zzv(), next.getValue());
            }
        }
        zzeob<?, ?> zzeob = this.zzitf;
        zzeob.zzc(zzeob.zzay(t), zzeoy);
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zza(T t, byte[] bArr, int i, int i2, zzejm zzejm) {
        T t2 = t;
        zzeoe zzeoe = t2.zziqk;
        if (zzeoe == zzeoe.zzbkz()) {
            zzeoe = zzeoe.zzbla();
            t2.zziqk = zzeoe;
        }
        t.zzbix();
        zzelb.zzf zzf = null;
        while (i < i2) {
            int zza = zzejn.zza(bArr, i, zzejm);
            int i3 = zzejm.zzils;
            if (i3 == 11) {
                int i4 = 0;
                zzejr zzejr = null;
                while (zza < i2) {
                    zza = zzejn.zza(bArr, zza, zzejm);
                    int i5 = zzejm.zzils;
                    int i6 = i5 >>> 3;
                    int i7 = i5 & 7;
                    if (i6 != 2) {
                        if (i6 == 3) {
                            if (zzf != null) {
                                zzenc.zzbkf();
                                throw new NoSuchMethodError();
                            } else if (i7 == 2) {
                                zza = zzejn.zze(bArr, zza, zzejm);
                                zzejr = (zzejr) zzejm.zzilu;
                            }
                        }
                    } else if (i7 == 0) {
                        zza = zzejn.zza(bArr, zza, zzejm);
                        i4 = zzejm.zzils;
                        zzf = (zzelb.zzf) this.zzitg.zza(zzejm.zzilv, this.zzisv, i4);
                    }
                    if (i5 == 12) {
                        break;
                    }
                    zza = zzejn.zza(i5, bArr, zza, i2, zzejm);
                }
                if (zzejr != null) {
                    zzeoe.zzd((i4 << 3) | 2, zzejr);
                }
                i = zza;
            } else if ((i3 & 7) == 2) {
                zzf = (zzelb.zzf) this.zzitg.zza(zzejm.zzilv, this.zzisv, i3 >>> 3);
                if (zzf == null) {
                    i = zzejn.zza(i3, bArr, zza, i2, zzeoe, zzejm);
                } else {
                    zzenc.zzbkf();
                    throw new NoSuchMethodError();
                }
            } else {
                i = zzejn.zza(i3, bArr, zza, i2, zzejm);
            }
        }
        if (i != i2) {
            throw zzelo.zzbjh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zza(T t, zzend zzend, zzeko zzeko) {
        boolean z;
        zzeob<?, ?> zzeob = this.zzitf;
        zzekq<?> zzekq = this.zzitg;
        Object zzaz = zzeob.zzaz(t);
        zzeku<?> zzaj = zzekq.zzaj(t);
        do {
            try {
                if (zzend.zzbhq() == Integer.MAX_VALUE) {
                    zzeob.zzj(t, zzaz);
                    return;
                }
                int tag = zzend.getTag();
                if (tag == 11) {
                    int i = 0;
                    Object obj = null;
                    zzejr zzejr = null;
                    while (zzend.zzbhq() != Integer.MAX_VALUE) {
                        int tag2 = zzend.getTag();
                        if (tag2 == 16) {
                            i = zzend.zzbhb();
                            obj = zzekq.zza(zzeko, this.zzisv, i);
                        } else if (tag2 == 26) {
                            if (obj != null) {
                                zzekq.zza(zzend, obj, zzeko, zzaj);
                            } else {
                                zzejr = zzend.zzbha();
                            }
                        } else if (!zzend.zzbhr()) {
                            break;
                        }
                    }
                    if (zzend.getTag() != 12) {
                        throw zzelo.zzbje();
                    } else if (zzejr != null) {
                        if (obj != null) {
                            zzekq.zza(zzejr, obj, zzeko, zzaj);
                        } else {
                            zzeob.zza(zzaz, i, zzejr);
                        }
                    }
                } else if ((tag & 7) == 2) {
                    Object zza = zzekq.zza(zzeko, this.zzisv, tag >>> 3);
                    if (zza != null) {
                        zzekq.zza(zzend, zza, zzeko, zzaj);
                    } else {
                        z = zzeob.zza(zzaz, zzend);
                        continue;
                    }
                } else {
                    z = zzend.zzbhr();
                    continue;
                }
                z = true;
                continue;
            } finally {
                zzeob.zzj(t, zzaz);
            }
        } while (z);
    }
}
