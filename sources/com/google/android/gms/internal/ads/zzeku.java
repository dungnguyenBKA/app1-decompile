package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzekw;
import com.vungle.warren.error.VungleException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzeku<T extends zzekw<T>> {
    private static final zzeku zzins = new zzeku(true);
    final zzeno<T, Object> zzinp;
    private boolean zzinq;
    private boolean zzinr;

    private zzeku() {
        this.zzinp = zzeno.zzht(16);
    }

    private final Object zza(T t) {
        Object obj = this.zzinp.get(t);
        if (!(obj instanceof zzelp)) {
            return obj;
        }
        zzelp zzelp = (zzelp) obj;
        return zzelp.zzbjj();
    }

    private static Object zzal(Object obj) {
        if (obj instanceof zzemt) {
            return ((zzemt) obj).zzbgb();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static <T extends zzekw<T>> boolean zzb(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzbie() == zzeov.MESSAGE) {
            if (key.zzbif()) {
                for (zzemo zzemo : (List) entry.getValue()) {
                    if (!zzemo.isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzemo) {
                    if (!((zzemo) value).isInitialized()) {
                        return false;
                    }
                } else if (value instanceof zzelp) {
                    return true;
                } else {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public static <T extends zzekw<T>> zzeku<T> zzbib() {
        return zzins;
    }

    private final void zzc(Map.Entry<T, Object> entry) {
        zzemo zzemo;
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof zzelp) {
            zzelp zzelp = (zzelp) value;
            value = zzelp.zzbjj();
        }
        if (key.zzbif()) {
            Object zza = zza(key);
            if (zza == null) {
                zza = new ArrayList();
            }
            for (Object obj : (List) value) {
                ((List) zza).add(zzal(obj));
            }
            this.zzinp.put(key, zza);
        } else if (key.zzbie() == zzeov.MESSAGE) {
            Object zza2 = zza(key);
            if (zza2 == null) {
                this.zzinp.put(key, zzal(value));
                return;
            }
            if (zza2 instanceof zzemt) {
                zzemo = key.zza((zzemt) zza2, (zzemt) value);
            } else {
                zzemo = key.zza(((zzemo) zza2).zzbio(), (zzemo) value).zzbiw();
            }
            this.zzinp.put(key, zzemo);
        } else {
            this.zzinp.put(key, zzal(value));
        }
    }

    private static int zzd(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzbie() != zzeov.MESSAGE || key.zzbif() || key.zzbig()) {
            return zzb((zzekw<?>) key, value);
        }
        if (value instanceof zzelp) {
            return zzekl.zzb(entry.getKey().zzv(), (zzelp) value);
        }
        return zzekl.zzb(entry.getKey().zzv(), (zzemo) value);
    }

    public final /* synthetic */ Object clone() {
        zzeku zzeku = new zzeku();
        for (int i = 0; i < this.zzinp.zzbkq(); i++) {
            Map.Entry<T, Object> zzhu = this.zzinp.zzhu(i);
            zzeku.zza(zzhu.getKey(), zzhu.getValue());
        }
        for (Map.Entry<T, Object> entry : this.zzinp.zzbkr()) {
            zzeku.zza(entry.getKey(), entry.getValue());
        }
        zzeku.zzinr = this.zzinr;
        return zzeku;
    }

    /* access modifiers changed from: package-private */
    public final Iterator<Map.Entry<T, Object>> descendingIterator() {
        if (this.zzinr) {
            return new zzelu(this.zzinp.zzbks().iterator());
        }
        return this.zzinp.zzbks().iterator();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzeku)) {
            return false;
        }
        return this.zzinp.equals(((zzeku) obj).zzinp);
    }

    public final int hashCode() {
        return this.zzinp.hashCode();
    }

    public final boolean isImmutable() {
        return this.zzinq;
    }

    public final boolean isInitialized() {
        for (int i = 0; i < this.zzinp.zzbkq(); i++) {
            if (!zzb(this.zzinp.zzhu(i))) {
                return false;
            }
        }
        for (Map.Entry<T, Object> entry : this.zzinp.zzbkr()) {
            if (!zzb(entry)) {
                return false;
            }
        }
        return true;
    }

    public final Iterator<Map.Entry<T, Object>> iterator() {
        if (this.zzinr) {
            return new zzelu(this.zzinp.entrySet().iterator());
        }
        return this.zzinp.entrySet().iterator();
    }

    public final void zzbgf() {
        if (!this.zzinq) {
            this.zzinp.zzbgf();
            this.zzinq = true;
        }
    }

    public final int zzbic() {
        int i = 0;
        for (int i2 = 0; i2 < this.zzinp.zzbkq(); i2++) {
            i += zzd(this.zzinp.zzhu(i2));
        }
        for (Map.Entry<T, Object> entry : this.zzinp.zzbkr()) {
            i += zzd(entry);
        }
        return i;
    }

    private zzeku(boolean z) {
        this(zzeno.zzht(0));
        zzbgf();
    }

    private final void zza(T t, Object obj) {
        if (!t.zzbif()) {
            zza(t.zzbid(), obj);
        } else if (obj instanceof List) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                zza(t.zzbid(), obj2);
            }
            obj = arrayList;
        } else {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        if (obj instanceof zzelp) {
            this.zzinr = true;
        }
        this.zzinp.put(t, obj);
    }

    private zzeku(zzeno<T, Object> zzeno) {
        this.zzinp = zzeno;
        zzbgf();
    }

    private static int zzb(zzeos zzeos, Object obj) {
        switch (zzekt.zzimy[zzeos.ordinal()]) {
            case 1:
                return zzekl.zzd(((Double) obj).doubleValue());
            case 2:
                return zzekl.zzg(((Float) obj).floatValue());
            case 3:
                return zzekl.zzfk(((Long) obj).longValue());
            case 4:
                return zzekl.zzfl(((Long) obj).longValue());
            case 5:
                return zzekl.zzgw(((Integer) obj).intValue());
            case 6:
                return zzekl.zzfn(((Long) obj).longValue());
            case 7:
                return zzekl.zzgz(((Integer) obj).intValue());
            case 8:
                return zzekl.zzbs(((Boolean) obj).booleanValue());
            case 9:
                return zzekl.zzi((zzemo) obj);
            case 10:
                if (obj instanceof zzelp) {
                    return zzekl.zza((zzelp) obj);
                }
                return zzekl.zzh((zzemo) obj);
            case 11:
                if (obj instanceof zzejr) {
                    return zzekl.zzaj((zzejr) obj);
                }
                return zzekl.zzia((String) obj);
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                if (obj instanceof zzejr) {
                    return zzekl.zzaj((zzejr) obj);
                }
                return zzekl.zzw((byte[]) obj);
            case 13:
                return zzekl.zzgx(((Integer) obj).intValue());
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                return zzekl.zzha(((Integer) obj).intValue());
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                return zzekl.zzfo(((Long) obj).longValue());
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                return zzekl.zzgy(((Integer) obj).intValue());
            case 17:
                return zzekl.zzfm(((Long) obj).longValue());
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                if (obj instanceof zzelg) {
                    return zzekl.zzhb(((zzelg) obj).zzv());
                }
                return zzekl.zzhb(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0025, code lost:
        if ((r3 instanceof com.google.android.gms.internal.ads.zzelg) == false) goto L_0x0014;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002e, code lost:
        if ((r3 instanceof byte[]) == false) goto L_0x0014;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001c, code lost:
        if ((r3 instanceof com.google.android.gms.internal.ads.zzelp) == false) goto L_0x0014;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void zza(com.google.android.gms.internal.ads.zzeos r2, java.lang.Object r3) {
        /*
        // Method dump skipped, instructions count: 102
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeku.zza(com.google.android.gms.internal.ads.zzeos, java.lang.Object):void");
    }

    public final void zza(zzeku<T> zzeku) {
        for (int i = 0; i < zzeku.zzinp.zzbkq(); i++) {
            zzc(zzeku.zzinp.zzhu(i));
        }
        for (Map.Entry<T, Object> entry : zzeku.zzinp.zzbkr()) {
            zzc(entry);
        }
    }

    static void zza(zzekl zzekl, zzeos zzeos, int i, Object obj) {
        if (zzeos == zzeos.GROUP) {
            zzemo zzemo = (zzemo) obj;
            zzeld.zzk(zzemo);
            zzekl.writeTag(i, 3);
            zzemo.zzb(zzekl);
            zzekl.writeTag(i, 4);
            return;
        }
        zzekl.writeTag(i, zzeos.zzblj());
        switch (zzekt.zzimy[zzeos.ordinal()]) {
            case 1:
                zzekl.zzc(((Double) obj).doubleValue());
                return;
            case 2:
                zzekl.zzf(((Float) obj).floatValue());
                return;
            case 3:
                zzekl.zzfh(((Long) obj).longValue());
                return;
            case 4:
                zzekl.zzfh(((Long) obj).longValue());
                return;
            case 5:
                zzekl.zzgr(((Integer) obj).intValue());
                return;
            case 6:
                zzekl.zzfj(((Long) obj).longValue());
                return;
            case 7:
                zzekl.zzgu(((Integer) obj).intValue());
                return;
            case 8:
                zzekl.zzbr(((Boolean) obj).booleanValue());
                return;
            case 9:
                ((zzemo) obj).zzb(zzekl);
                return;
            case 10:
                zzekl.zzg((zzemo) obj);
                return;
            case 11:
                if (obj instanceof zzejr) {
                    zzekl.zzai((zzejr) obj);
                    return;
                } else {
                    zzekl.zzhz((String) obj);
                    return;
                }
            case VungleException.NO_AUTO_CACHED_PLACEMENT /*{ENCODED_INT: 12}*/:
                if (obj instanceof zzejr) {
                    zzekl.zzai((zzejr) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                zzekl.zzk(bArr, 0, bArr.length);
                return;
            case 13:
                zzekl.zzgs(((Integer) obj).intValue());
                return;
            case VungleException.SERVER_RETRY_ERROR /*{ENCODED_INT: 14}*/:
                zzekl.zzgu(((Integer) obj).intValue());
                return;
            case VungleException.ALREADY_PLAYING_ANOTHER_AD /*{ENCODED_INT: 15}*/:
                zzekl.zzfj(((Long) obj).longValue());
                return;
            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                zzekl.zzgt(((Integer) obj).intValue());
                return;
            case 17:
                zzekl.zzfi(((Long) obj).longValue());
                return;
            case VungleException.NO_SPACE_TO_LOAD_AD_AUTO_CACHED /*{ENCODED_INT: 18}*/:
                if (obj instanceof zzelg) {
                    zzekl.zzgr(((zzelg) obj).zzv());
                    return;
                } else {
                    zzekl.zzgr(((Integer) obj).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public static int zzb(zzekw<?> zzekw, Object obj) {
        zzeos zzbid = zzekw.zzbid();
        int zzv = zzekw.zzv();
        if (!zzekw.zzbif()) {
            return zza(zzbid, zzv, obj);
        }
        int i = 0;
        if (zzekw.zzbig()) {
            for (Object obj2 : (List) obj) {
                i += zzb(zzbid, obj2);
            }
            return zzekl.zzhd(i) + zzekl.zzgv(zzv) + i;
        }
        for (Object obj3 : (List) obj) {
            i += zza(zzbid, zzv, obj3);
        }
        return i;
    }

    static int zza(zzeos zzeos, int i, Object obj) {
        int zzgv = zzekl.zzgv(i);
        if (zzeos == zzeos.GROUP) {
            zzeld.zzk((zzemo) obj);
            zzgv <<= 1;
        }
        return zzgv + zzb(zzeos, obj);
    }
}
