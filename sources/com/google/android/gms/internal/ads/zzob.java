package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;

public abstract class zzob extends zzoh {
    private int zzaif = 0;
    private final SparseArray<Map<zznu, zzod>> zzbhn = new SparseArray<>();
    private final SparseBooleanArray zzbho = new SparseBooleanArray();
    private zzoe zzbhp;

    @Override // com.google.android.gms.internal.ads.zzoh
    public final zzoj zza(zzib[] zzibArr, zznu zznu) {
        int[] iArr;
        int[] iArr2 = new int[(zzibArr.length + 1)];
        int length = zzibArr.length + 1;
        zznr[][] zznrArr = new zznr[length][];
        int[][][] iArr3 = new int[(zzibArr.length + 1)][][];
        for (int i = 0; i < length; i++) {
            int i2 = zznu.length;
            zznrArr[i] = new zznr[i2];
            iArr3[i] = new int[i2][];
        }
        int length2 = zzibArr.length;
        int[] iArr4 = new int[length2];
        for (int i3 = 0; i3 < length2; i3++) {
            iArr4[i3] = zzibArr[i3].zzeg();
        }
        for (int i4 = 0; i4 < zznu.length; i4++) {
            zznr zzbc = zznu.zzbc(i4);
            int length3 = zzibArr.length;
            int i5 = 0;
            for (int i6 = 0; i6 < zzibArr.length; i6++) {
                zzib zzib = zzibArr[i6];
                for (int i7 = 0; i7 < zzbc.length; i7++) {
                    int zza = zzib.zza(zzbc.zzbb(i7)) & 3;
                    if (zza > i5) {
                        length3 = i6;
                        if (zza == 3) {
                            break;
                        }
                        i5 = zza;
                    }
                }
            }
            if (length3 == zzibArr.length) {
                iArr = new int[zzbc.length];
            } else {
                zzib zzib2 = zzibArr[length3];
                int[] iArr5 = new int[zzbc.length];
                for (int i8 = 0; i8 < zzbc.length; i8++) {
                    iArr5[i8] = zzib2.zza(zzbc.zzbb(i8));
                }
                iArr = iArr5;
            }
            int i9 = iArr2[length3];
            zznrArr[length3][i9] = zzbc;
            iArr3[length3][i9] = iArr;
            iArr2[length3] = iArr2[length3] + 1;
        }
        zznu[] zznuArr = new zznu[zzibArr.length];
        int[] iArr6 = new int[zzibArr.length];
        for (int i10 = 0; i10 < zzibArr.length; i10++) {
            int i11 = iArr2[i10];
            zznuArr[i10] = new zznu((zznr[]) Arrays.copyOf(zznrArr[i10], i11));
            iArr3[i10] = (int[][]) Arrays.copyOf(iArr3[i10], i11);
            iArr6[i10] = zzibArr[i10].getTrackType();
        }
        zznu zznu2 = new zznu((zznr[]) Arrays.copyOf(zznrArr[zzibArr.length], iArr2[zzibArr.length]));
        zzog[] zza2 = zza(zzibArr, zznuArr, iArr3);
        int i12 = 0;
        while (true) {
            zzod zzod = null;
            if (i12 < zzibArr.length) {
                if (this.zzbho.get(i12)) {
                    zza2[i12] = null;
                } else {
                    zznu zznu3 = zznuArr[i12];
                    Map<zznu, zzod> map = this.zzbhn.get(i12);
                    if (map != null) {
                        zzod = map.get(zznu3);
                    }
                    if (zzod != null) {
                        throw new NoSuchMethodError();
                    }
                }
                i12++;
            } else {
                zzoe zzoe = new zzoe(iArr6, zznuArr, iArr4, iArr3, zznu2);
                zzia[] zziaArr = new zzia[zzibArr.length];
                for (int i13 = 0; i13 < zzibArr.length; i13++) {
                    zziaArr[i13] = zza2[i13] != null ? zzia.zzaie : null;
                }
                return new zzoj(zznu, new zzoi(zza2), zzoe, zziaArr);
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract zzog[] zza(zzib[] zzibArr, zznu[] zznuArr, int[][][] iArr);

    @Override // com.google.android.gms.internal.ads.zzoh
    public final void zzd(Object obj) {
        this.zzbhp = (zzoe) obj;
    }

    public final void zzf(int i, boolean z) {
        if (this.zzbho.get(i) != z) {
            this.zzbho.put(i, z);
            invalidate();
        }
    }
}
