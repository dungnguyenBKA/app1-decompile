package com.google.android.gms.internal.measurement;

import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class zzgz extends zzgh {
    private static final Logger zzb = Logger.getLogger(zzgz.class.getName());
    private static final boolean zzc = zzkh.zza();
    zzha zza;

    private zzgz() {
    }

    /* synthetic */ zzgz(zzgw zzgw) {
    }

    public static int zzA(zzgs zzgs) {
        int zzc2 = zzgs.zzc();
        return zzw(zzc2) + zzc2;
    }

    static int zzB(zzix zzix, zzji zzji) {
        zzgb zzgb = (zzgb) zzix;
        int zzbq = zzgb.zzbq();
        if (zzbq == -1) {
            zzbq = zzji.zze(zzgb);
            zzgb.zzbr(zzbq);
        }
        return zzw(zzbq) + zzbq;
    }

    @Deprecated
    static int zzE(int i, zzix zzix, zzji zzji) {
        int zzw = zzw(i << 3);
        int i2 = zzw + zzw;
        zzgb zzgb = (zzgb) zzix;
        int zzbq = zzgb.zzbq();
        if (zzbq == -1) {
            zzbq = zzji.zze(zzgb);
            zzgb.zzbr(zzbq);
        }
        return i2 + zzbq;
    }

    public static zzgz zzt(byte[] bArr) {
        return new zzgx(bArr, 0, bArr.length);
    }

    public static int zzu(int i) {
        return zzw(i << 3);
    }

    public static int zzv(int i) {
        if (i >= 0) {
            return zzw(i);
        }
        return 10;
    }

    public static int zzw(int i) {
        if ((i & -128) == 0) {
            return 1;
        }
        if ((i & -16384) == 0) {
            return 2;
        }
        if ((-2097152 & i) == 0) {
            return 3;
        }
        return (i & -268435456) == 0 ? 4 : 5;
    }

    public static int zzx(long j) {
        int i;
        if ((-128 & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if ((-34359738368L & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if ((-2097152 & j) != 0) {
            i += 2;
            j >>>= 14;
        }
        return (j & -16384) != 0 ? i + 1 : i;
    }

    public static int zzy(String str) {
        int i;
        try {
            i = zzkn.zzc(str);
        } catch (zzkl unused) {
            i = str.getBytes(zzia.zza).length;
        }
        return zzw(i) + i;
    }

    public static int zzz(zzif zzif) {
        int zza2 = zzif.zza();
        return zzw(zza2) + zza2;
    }

    public final void zzC() {
        if (zzs() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzD(String str, zzkl zzkl) {
        zzb.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzkl);
        byte[] bytes = str.getBytes(zzia.zza);
        try {
            int length = bytes.length;
            zzl(length);
            zzq(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgy(e);
        } catch (zzgy e2) {
            throw e2;
        }
    }

    public abstract void zza(int i, int i2);

    public abstract void zzb(int i, int i2);

    public abstract void zzc(int i, int i2);

    public abstract void zzd(int i, int i2);

    public abstract void zze(int i, long j);

    public abstract void zzf(int i, long j);

    public abstract void zzg(int i, boolean z);

    public abstract void zzh(int i, String str);

    public abstract void zzi(int i, zzgs zzgs);

    public abstract void zzj(byte b);

    public abstract void zzk(int i);

    public abstract void zzl(int i);

    public abstract void zzm(int i);

    public abstract void zzn(long j);

    public abstract void zzo(long j);

    public abstract void zzq(byte[] bArr, int i, int i2);

    public abstract int zzs();
}
