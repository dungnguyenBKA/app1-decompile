package com.google.android.gms.internal.gtm;

import com.google.android.gms.internal.gtm.zzun;
import com.vungle.warren.error.VungleException;
import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzuo<T extends zzun<T>> {
    private static final zzuo zzb = new zzuo(true);
    final zzxk<T, Object> zza = new zzxa(16);
    private boolean zzc;
    private boolean zzd;

    private zzuo() {
    }

    public static int zza(zzun<?> zzun, Object obj) {
        zzye zzd2 = zzun.zzd();
        int zza2 = zzun.zza();
        zzun.zzg();
        int zzC = zzto.zzC(zza2);
        if (zzd2 == zzye.GROUP) {
            zzvi.zzi((zzwk) obj);
            zzC += zzC;
        }
        zzyf zzyf = zzyf.INT;
        int i = 4;
        switch (zzd2.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                i = 8;
                break;
            case 1:
                ((Float) obj).floatValue();
                break;
            case 2:
                i = zzto.zzE(((Long) obj).longValue());
                break;
            case 3:
                i = zzto.zzE(((Long) obj).longValue());
                break;
            case 4:
                i = zzto.zzx(((Integer) obj).intValue());
                break;
            case 5:
                ((Long) obj).longValue();
                i = 8;
                break;
            case 6:
                ((Integer) obj).intValue();
                break;
            case 7:
                ((Boolean) obj).booleanValue();
                i = 1;
                break;
            case 8:
                if (!(obj instanceof zztd)) {
                    i = zzto.zzB((String) obj);
                    break;
                } else {
                    i = zzto.zzu((zztd) obj);
                    break;
                }
            case 9:
                i = zzto.zzw((zzwk) obj);
                break;
            case 10:
                if (!(obj instanceof zzvp)) {
                    i = zzto.zzz((zzwk) obj);
                    break;
                } else {
                    i = zzto.zzy((zzvp) obj);
                    break;
                }
            case 11:
                if (!(obj instanceof zztd)) {
                    i = zzto.zzt((byte[]) obj);
                    break;
                } else {
                    i = zzto.zzu((zztd) obj);
                    break;
                }
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                i = zzto.zzD(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof zzvb)) {
                    i = zzto.zzx(((Integer) obj).intValue());
                    break;
                } else {
                    i = zzto.zzx(((zzvb) obj).zza());
                    break;
                }
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                ((Integer) obj).intValue();
                break;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                ((Long) obj).longValue();
                i = 8;
                break;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                int intValue = ((Integer) obj).intValue();
                i = zzto.zzD((intValue >> 31) ^ (intValue + intValue));
                break;
            case 17:
                long longValue = ((Long) obj).longValue();
                i = zzto.zzE((longValue >> 63) ^ (longValue + longValue));
                break;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return zzC + i;
    }

    public static <T extends zzun<T>> zzuo<T> zzd() {
        return zzb;
    }

    private static Object zzl(Object obj) {
        if (obj instanceof zzwp) {
            return ((zzwp) obj).zzc();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    private final void zzm(Map.Entry<T, Object> entry) {
        zzwk zzwk;
        T key = entry.getKey();
        Object value = entry.getValue();
        if (!(value instanceof zzvp)) {
            key.zzg();
            if (key.zze() == zzyf.MESSAGE) {
                Object zze = zze(key);
                if (zze == null) {
                    this.zza.put(key, zzl(value));
                    return;
                }
                if (zze instanceof zzwp) {
                    zzwk = key.zzc((zzwp) zze, (zzwp) value);
                } else {
                    zzwj zzap = ((zzwk) zze).zzap();
                    key.zzb(zzap, (zzwk) value);
                    zzwk = zzap.zzC();
                }
                this.zza.put(key, zzwk);
                return;
            }
            this.zza.put(key, zzl(value));
            return;
        }
        zzvp zzvp = (zzvp) value;
        throw null;
    }

    private static <T extends zzun<T>> boolean zzn(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zze() == zzyf.MESSAGE) {
            key.zzg();
            Object value = entry.getValue();
            if (value instanceof zzwk) {
                if (!((zzwk) value).zzas()) {
                    return false;
                }
            } else if (value instanceof zzvp) {
                return true;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        }
        return true;
    }

    private static final int zzo(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zze() != zzyf.MESSAGE) {
            return zza(key, value);
        }
        key.zzg();
        key.zzf();
        if (value instanceof zzvp) {
            int zza2 = entry.getKey().zza();
            int zzD = zzto.zzD(8);
            int zza3 = ((zzvp) value).zza();
            return zzto.zzD(zza3) + zza3 + zzto.zzD(24) + zzto.zzD(zza2) + zzto.zzD(16) + zzD + zzD;
        }
        int zza4 = entry.getKey().zza();
        int zzD2 = zzto.zzD(8);
        return zzto.zzz((zzwk) value) + zzto.zzD(24) + zzto.zzD(zza4) + zzto.zzD(16) + zzD2 + zzD2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzuo)) {
            return false;
        }
        return this.zza.equals(((zzuo) obj).zza);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final int zzb() {
        int i = 0;
        for (int i2 = 0; i2 < this.zza.zzb(); i2++) {
            i += zzo(this.zza.zzg(i2));
        }
        for (Map.Entry<T, Object> entry : this.zza.zzc()) {
            i += zzo(entry);
        }
        return i;
    }

    /* renamed from: zzc */
    public final zzuo<T> clone() {
        zzuo<T> zzuo = new zzuo<>();
        for (int i = 0; i < this.zza.zzb(); i++) {
            Map.Entry<T, Object> zzg = this.zza.zzg(i);
            zzuo.zzi(zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zza.zzc()) {
            zzuo.zzi(entry.getKey(), entry.getValue());
        }
        zzuo.zzd = this.zzd;
        return zzuo;
    }

    public final Object zze(T t) {
        Object obj = this.zza.get(t);
        if (!(obj instanceof zzvp)) {
            return obj;
        }
        zzvp zzvp = (zzvp) obj;
        throw null;
    }

    public final Iterator<Map.Entry<T, Object>> zzf() {
        if (this.zzd) {
            return new zzvo(this.zza.entrySet().iterator());
        }
        return this.zza.entrySet().iterator();
    }

    public final void zzg() {
        if (!this.zzc) {
            this.zza.zza();
            this.zzc = true;
        }
    }

    public final void zzh(zzuo<T> zzuo) {
        for (int i = 0; i < zzuo.zza.zzb(); i++) {
            zzm(zzuo.zza.zzg(i));
        }
        for (Map.Entry<T, Object> entry : zzuo.zza.zzc()) {
            zzm(entry);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0033, code lost:
        if ((r7 instanceof byte[]) == false) goto L_0x0055;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0047, code lost:
        if (r0 == false) goto L_0x0055;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0021, code lost:
        if ((r7 instanceof com.google.android.gms.internal.gtm.zzvp) == false) goto L_0x0055;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x002a, code lost:
        if ((r7 instanceof com.google.android.gms.internal.gtm.zzvb) == false) goto L_0x0055;
     */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x004d  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzi(T r6, java.lang.Object r7) {
        /*
        // Method dump skipped, instructions count: 154
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.gtm.zzuo.zzi(com.google.android.gms.internal.gtm.zzun, java.lang.Object):void");
    }

    public final boolean zzj() {
        return this.zzc;
    }

    public final boolean zzk() {
        for (int i = 0; i < this.zza.zzb(); i++) {
            if (!zzn(this.zza.zzg(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.zza.zzc()) {
            if (!zzn(entry)) {
                return false;
            }
        }
        return true;
    }

    private zzuo(boolean z) {
        zzg();
        zzg();
    }
}
