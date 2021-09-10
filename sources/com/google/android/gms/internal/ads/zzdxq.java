package com.google.android.gms.internal.ads;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdxq<K, V> extends zzdxh<K, V> {
    private static final zzdxh<Object, Object> zzhyf = new zzdxq(null, new Object[0], 0);
    private final transient int size;
    private final transient Object zzhyg;
    private final transient Object[] zzhyh;

    private zzdxq(Object obj, Object[] objArr, int i) {
        this.zzhyg = obj;
        this.zzhyh = objArr;
        this.size = i;
    }

    private static IllegalArgumentException zza(Object obj, Object obj2, Object[] objArr, int i) {
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(obj2);
        String valueOf3 = String.valueOf(objArr[i]);
        String valueOf4 = String.valueOf(objArr[i ^ 1]);
        StringBuilder p = ic.p(valueOf4.length() + valueOf3.length() + valueOf2.length() + valueOf.length() + 39, "Multiple entries with same key: ", valueOf, "=", valueOf2);
        p.append(" and ");
        p.append(valueOf3);
        p.append("=");
        p.append(valueOf4);
        return new IllegalArgumentException(p.toString());
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:56:0x006c */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [int[]] */
    /* JADX WARN: Type inference failed for: r8v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v4, types: [short[]] */
    /* JADX WARN: Type inference failed for: r7v5, types: [short] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r7v7, types: [byte] */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0056, code lost:
        r2[r6] = (byte) r3;
        r1 = r1 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0097, code lost:
        r2[r6] = (short) r3;
        r1 = r1 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x00cc, code lost:
        r2[r7] = r3;
        r1 = r1 + 1;
     */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <K, V> com.google.android.gms.internal.ads.zzdxq<K, V> zzc(int r10, java.lang.Object[] r11) {
        /*
        // Method dump skipped, instructions count: 231
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxq.zzc(int, java.lang.Object[]):com.google.android.gms.internal.ads.zzdxq");
    }

    @Override // com.google.android.gms.internal.ads.zzdxh, java.util.Map
    @NullableDecl
    public final V get(@NullableDecl Object obj) {
        Object obj2 = this.zzhyg;
        Object[] objArr = this.zzhyh;
        int i = this.size;
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[0].equals(obj)) {
                return (V) objArr[1];
            }
            return null;
        } else if (obj2 == null) {
            return null;
        } else {
            if (obj2 instanceof byte[]) {
                byte[] bArr = (byte[]) obj2;
                int length = bArr.length - 1;
                int zzep = zzdwz.zzep(obj.hashCode());
                while (true) {
                    int i2 = zzep & length;
                    int i3 = bArr[i2] & 255;
                    if (i3 == 255) {
                        return null;
                    }
                    if (objArr[i3].equals(obj)) {
                        return (V) objArr[i3 ^ 1];
                    }
                    zzep = i2 + 1;
                }
            } else if (obj2 instanceof short[]) {
                short[] sArr = (short[]) obj2;
                int length2 = sArr.length - 1;
                int zzep2 = zzdwz.zzep(obj.hashCode());
                while (true) {
                    int i4 = zzep2 & length2;
                    int i5 = sArr[i4] & 65535;
                    if (i5 == 65535) {
                        return null;
                    }
                    if (objArr[i5].equals(obj)) {
                        return (V) objArr[i5 ^ 1];
                    }
                    zzep2 = i4 + 1;
                }
            } else {
                int[] iArr = (int[]) obj2;
                int length3 = iArr.length - 1;
                int zzep3 = zzdwz.zzep(obj.hashCode());
                while (true) {
                    int i6 = zzep3 & length3;
                    int i7 = iArr[i6];
                    if (i7 == -1) {
                        return null;
                    }
                    if (objArr[i7].equals(obj)) {
                        return (V) objArr[i7 ^ 1];
                    }
                    zzep3 = i6 + 1;
                }
            }
        }
    }

    public final int size() {
        return this.size;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxh
    public final zzdxg<Map.Entry<K, V>> zzazp() {
        return new zzdxt(this, this.zzhyh, 0, this.size);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxh
    public final zzdxg<K> zzazq() {
        return new zzdxv(this, new zzdxu(this.zzhyh, 0, this.size));
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxh
    public final zzdwy<V> zzazr() {
        return new zzdxu(this.zzhyh, 1, this.size);
    }
}
