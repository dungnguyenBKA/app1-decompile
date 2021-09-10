package com.google.android.gms.internal.ads;

import android.util.Log;
import android.util.Pair;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.internal.ads.zzmh;
import java.util.ArrayList;

/* access modifiers changed from: package-private */
public final class zzkx {
    private static final int zzavy = zzpt.zzbh("meta");
    private static final int zzawm = zzpt.zzbh("vide");
    private static final int zzawn = zzpt.zzbh("soun");
    private static final int zzawo = zzpt.zzbh("text");
    private static final int zzawp = zzpt.zzbh("sbtl");
    private static final int zzawq = zzpt.zzbh("subt");
    private static final int zzawr = zzpt.zzbh("clcp");
    private static final int zzaws = zzpt.zzbh("cenc");

    /* JADX WARNING: Removed duplicated region for block: B:192:0x0392  */
    /* JADX WARNING: Removed duplicated region for block: B:193:0x039c  */
    /* JADX WARNING: Removed duplicated region for block: B:196:0x03a4  */
    /* JADX WARNING: Removed duplicated region for block: B:197:0x03a7  */
    /* JADX WARNING: Removed duplicated region for block: B:232:0x03fb  */
    /* JADX WARNING: Removed duplicated region for block: B:407:0x0825 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:408:0x0826  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x00ee  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x010a  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x010d  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x011a  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x011d  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0149  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x014c  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0157  */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x0159  */
    /* JADX WARNING: Removed duplicated region for block: B:86:0x01b6  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.internal.ads.zzls zza(com.google.android.gms.internal.ads.zzkv r49, com.google.android.gms.internal.ads.zzky r50, long r51, com.google.android.gms.internal.ads.zzjo r53, boolean r54) {
        /*
        // Method dump skipped, instructions count: 2143
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkx.zza(com.google.android.gms.internal.ads.zzkv, com.google.android.gms.internal.ads.zzky, long, com.google.android.gms.internal.ads.zzjo, boolean):com.google.android.gms.internal.ads.zzls");
    }

    private static Pair<String, byte[]> zzb(zzpn zzpn, int i) {
        zzpn.zzbi(i + 8 + 4);
        zzpn.zzbj(1);
        zzc(zzpn);
        zzpn.zzbj(2);
        int readUnsignedByte = zzpn.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            zzpn.zzbj(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            zzpn.zzbj(zzpn.readUnsignedShort());
        }
        if ((readUnsignedByte & 32) != 0) {
            zzpn.zzbj(2);
        }
        zzpn.zzbj(1);
        zzc(zzpn);
        int readUnsignedByte2 = zzpn.readUnsignedByte();
        String str = null;
        if (readUnsignedByte2 == 32) {
            str = "video/mp4v-es";
        } else if (readUnsignedByte2 == 33) {
            str = "video/avc";
        } else if (readUnsignedByte2 != 35) {
            if (readUnsignedByte2 != 64) {
                if (readUnsignedByte2 == 107) {
                    return Pair.create("audio/mpeg", null);
                }
                if (readUnsignedByte2 == 165) {
                    str = "audio/ac3";
                } else if (readUnsignedByte2 != 166) {
                    switch (readUnsignedByte2) {
                        case 102:
                        case FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT:
                        case FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION:
                            break;
                        default:
                            switch (readUnsignedByte2) {
                                case 169:
                                case 172:
                                    return Pair.create("audio/vnd.dts", null);
                                case 170:
                                case 171:
                                    return Pair.create("audio/vnd.dts.hd", null);
                            }
                    }
                } else {
                    str = "audio/eac3";
                }
            }
            str = "audio/mp4a-latm";
        } else {
            str = "video/hevc";
        }
        zzpn.zzbj(12);
        zzpn.zzbj(1);
        int zzc = zzc(zzpn);
        byte[] bArr = new byte[zzc];
        zzpn.zze(bArr, 0, zzc);
        return Pair.create(str, bArr);
    }

    private static int zzc(zzpn zzpn) {
        int readUnsignedByte = zzpn.readUnsignedByte();
        int i = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = zzpn.readUnsignedByte();
            i = (i << 7) | (readUnsignedByte & 127);
        }
        return i;
    }

    public static zzlt zza(zzls zzls, zzkv zzkv, zzke zzke) {
        zzkz zzkz;
        boolean z;
        int i;
        int i2;
        long j;
        int i3;
        int[] iArr;
        int i4;
        long[] jArr;
        int[] iArr2;
        long[] jArr2;
        zzls zzls2;
        long j2;
        long[] jArr3;
        boolean z2;
        long[] jArr4;
        int[] iArr3;
        int[] iArr4;
        int[] iArr5;
        int i5;
        int i6;
        int i7;
        int i8;
        zzky zzap = zzkv.zzap(zzkw.zzavn);
        if (zzap != null) {
            zzkz = new zzlb(zzap);
        } else {
            zzky zzap2 = zzkv.zzap(zzkw.zzavo);
            if (zzap2 != null) {
                zzkz = new zzle(zzap2);
            } else {
                throw new zzhw("Track has no sample table size information");
            }
        }
        int zzgx = zzkz.zzgx();
        if (zzgx == 0) {
            return new zzlt(new long[0], new int[0], 0, new long[0], new int[0]);
        }
        zzky zzap3 = zzkv.zzap(zzkw.zzavp);
        if (zzap3 == null) {
            zzap3 = zzkv.zzap(zzkw.zzavq);
            z = true;
        } else {
            z = false;
        }
        zzpn zzpn = zzap3.zzawt;
        zzpn zzpn2 = zzkv.zzap(zzkw.zzavm).zzawt;
        zzpn zzpn3 = zzkv.zzap(zzkw.zzavj).zzawt;
        zzky zzap4 = zzkv.zzap(zzkw.zzavk);
        zzpn zzpn4 = null;
        zzpn zzpn5 = zzap4 != null ? zzap4.zzawt : null;
        zzky zzap5 = zzkv.zzap(zzkw.zzavl);
        zzpn zzpn6 = zzap5 != null ? zzap5.zzawt : null;
        zzla zzla = new zzla(zzpn2, zzpn, z);
        zzpn3.zzbi(12);
        int zzja = zzpn3.zzja() - 1;
        int zzja2 = zzpn3.zzja();
        int zzja3 = zzpn3.zzja();
        if (zzpn6 != null) {
            zzpn6.zzbi(12);
            i = zzpn6.zzja();
        } else {
            i = 0;
        }
        int i9 = -1;
        if (zzpn5 != null) {
            zzpn5.zzbi(12);
            i2 = zzpn5.zzja();
            if (i2 > 0) {
                i9 = zzpn5.zzja() - 1;
                zzpn4 = zzpn5;
            }
        } else {
            zzpn4 = zzpn5;
            i2 = 0;
        }
        long j3 = 0;
        if (!(zzkz.zzgz() && "audio/raw".equals(zzls.zzahz.zzahe) && zzja == 0 && i == 0 && i2 == 0)) {
            long[] jArr5 = new long[zzgx];
            iArr = new int[zzgx];
            jArr = new long[zzgx];
            iArr2 = new int[zzgx];
            int i10 = i9;
            long j4 = 0;
            j = 0;
            int i11 = 0;
            i4 = 0;
            int i12 = 0;
            int i13 = 0;
            int i14 = 0;
            int i15 = i;
            int i16 = zzja3;
            int i17 = zzja2;
            int i18 = zzja;
            int i19 = i2;
            while (i11 < zzgx) {
                while (i13 == 0) {
                    zzpg.checkState(zzla.zzha());
                    j4 = zzla.zzawv;
                    i13 = zzla.zzawu;
                    i16 = i16;
                    i17 = i17;
                }
                if (zzpn6 != null) {
                    while (i12 == 0 && i15 > 0) {
                        i12 = zzpn6.zzja();
                        i14 = zzpn6.readInt();
                        i15--;
                    }
                    i12--;
                }
                jArr5[i11] = j4;
                iArr[i11] = zzkz.zzgy();
                if (iArr[i11] > i4) {
                    i4 = iArr[i11];
                }
                jArr[i11] = j + ((long) i14);
                iArr2[i11] = zzpn4 == null ? 1 : 0;
                if (i11 == i10) {
                    iArr2[i11] = 1;
                    i19--;
                    if (i19 > 0) {
                        i10 = zzpn4.zzja() - 1;
                    }
                }
                j += (long) i16;
                int i20 = i17 - 1;
                if (i20 != 0 || i18 <= 0) {
                    i7 = i16;
                    i8 = i20;
                } else {
                    i8 = zzpn3.zzja();
                    i7 = zzpn3.zzja();
                    i18--;
                }
                j4 += (long) iArr[i11];
                i13--;
                i11++;
                zzgx = zzgx;
                jArr5 = jArr5;
                i10 = i10;
                i14 = i14;
                i17 = i8;
                i16 = i7;
                zzkz = zzkz;
            }
            i3 = zzgx;
            zzpg.checkArgument(i12 == 0);
            while (i15 > 0) {
                zzpg.checkArgument(zzpn6.zzja() == 0);
                zzpn6.readInt();
                i15--;
            }
            if (i19 == 0 && i17 == 0) {
                i6 = i13;
                if (i6 == 0 && i18 == 0) {
                    zzls2 = zzls;
                    jArr2 = jArr5;
                }
            } else {
                i6 = i13;
            }
            zzls2 = zzls;
            int i21 = zzls2.id;
            StringBuilder sb = new StringBuilder(215);
            sb.append("Inconsistent stbl box for track ");
            sb.append(i21);
            sb.append(": remainingSynchronizationSamples ");
            sb.append(i19);
            sb.append(", remainingSamplesAtTimestampDelta ");
            sb.append(i17);
            sb.append(", remainingSamplesInChunk ");
            sb.append(i6);
            sb.append(", remainingTimestampDeltaChanges ");
            sb.append(i18);
            Log.w("AtomParsers", sb.toString());
            jArr2 = jArr5;
        } else {
            zzls2 = zzls;
            i3 = zzgx;
            int i22 = zzla.length;
            long[] jArr6 = new long[i22];
            int[] iArr6 = new int[i22];
            while (zzla.zzha()) {
                int i23 = zzla.index;
                jArr6[i23] = zzla.zzawv;
                iArr6[i23] = zzla.zzawu;
            }
            int zzgy = zzkz.zzgy();
            long j5 = (long) zzja3;
            int i24 = 8192 / zzgy;
            int i25 = 0;
            for (int i26 = 0; i26 < i22; i26++) {
                i25 += zzpt.zzf(iArr6[i26], i24);
            }
            long[] jArr7 = new long[i25];
            int[] iArr7 = new int[i25];
            long[] jArr8 = new long[i25];
            int[] iArr8 = new int[i25];
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            int i30 = 0;
            while (i27 < i22) {
                int i31 = iArr6[i27];
                long j6 = jArr6[i27];
                int i32 = i31;
                while (i32 > 0) {
                    int min = Math.min(i24, i32);
                    jArr7[i29] = j6;
                    iArr7[i29] = zzgy * min;
                    i30 = Math.max(i30, iArr7[i29]);
                    jArr8[i29] = ((long) i28) * j5;
                    iArr8[i29] = 1;
                    j6 += (long) iArr7[i29];
                    i28 += min;
                    i32 -= min;
                    i29++;
                    jArr6 = jArr6;
                    iArr6 = iArr6;
                }
                i27++;
                i22 = i22;
            }
            zzli zzli = new zzli(jArr7, iArr7, i30, jArr8, iArr8);
            jArr2 = zzli.zzaov;
            iArr = zzli.zzaou;
            i4 = zzli.zzayj;
            jArr = zzli.zzayk;
            iArr2 = zzli.zzayl;
            j = 0;
        }
        if (zzls2.zzbal == null || zzke.zzgt()) {
            zzpt.zza(jArr, 1000000, zzls2.zzdf);
            return new zzlt(jArr2, iArr, i4, jArr, iArr2);
        }
        long[] jArr9 = zzls2.zzbal;
        if (jArr9.length == 1 && zzls2.type == 1 && jArr.length >= 2) {
            long j7 = zzls2.zzbam[0];
            long zza = zzpt.zza(jArr9[0], zzls2.zzdf, zzls2.zzbai) + j7;
            if (jArr[0] <= j7 && j7 < jArr[1] && jArr[jArr.length - 1] < zza && zza <= j) {
                long j8 = j - zza;
                long zza2 = zzpt.zza(j7 - jArr[0], (long) zzls2.zzahz.zzahp, zzls2.zzdf);
                long zza3 = zzpt.zza(j8, (long) zzls2.zzahz.zzahp, zzls2.zzdf);
                if (!(zza2 == 0 && zza3 == 0) && zza2 <= 2147483647L && zza3 <= 2147483647L) {
                    zzke.zzahr = (int) zza2;
                    zzke.zzahs = (int) zza3;
                    zzpt.zza(jArr, 1000000, zzls2.zzdf);
                    return new zzlt(jArr2, iArr, i4, jArr, iArr2);
                }
            }
        }
        long[] jArr10 = zzls2.zzbal;
        if (jArr10.length == 1) {
            char c = 0;
            if (jArr10[0] == 0) {
                int i33 = 0;
                while (i33 < jArr.length) {
                    jArr[i33] = zzpt.zza(jArr[i33] - zzls2.zzbam[c], 1000000, zzls2.zzdf);
                    i33++;
                    c = 0;
                }
                return new zzlt(jArr2, iArr, i4, jArr, iArr2);
            }
        }
        boolean z3 = zzls2.type == 1;
        boolean z4 = false;
        int i34 = 0;
        int i35 = 0;
        int i36 = 0;
        while (true) {
            long[] jArr11 = zzls2.zzbal;
            j2 = -1;
            if (i36 >= jArr11.length) {
                break;
            }
            long j9 = zzls2.zzbam[i36];
            if (j9 != -1) {
                i5 = i4;
                long zza4 = zzpt.zza(jArr11[i36], zzls2.zzdf, zzls2.zzbai);
                int zzb = zzpt.zzb(jArr, j9, true, true);
                int zzb2 = zzpt.zzb(jArr, j9 + zza4, z3, false);
                int i37 = (zzb2 - zzb) + i34;
                z4 |= i35 != zzb;
                i34 = i37;
                i35 = zzb2;
            } else {
                i5 = i4;
            }
            i36++;
            iArr = iArr;
            i4 = i5;
        }
        int[] iArr9 = iArr;
        boolean z5 = z4 | (i34 != i3);
        long[] jArr12 = z5 ? new long[i34] : jArr2;
        int[] iArr10 = z5 ? new int[i34] : iArr9;
        int i38 = z5 ? 0 : i4;
        int[] iArr11 = z5 ? new int[i34] : iArr2;
        long[] jArr13 = new long[i34];
        int i39 = i38;
        int i40 = 0;
        int i41 = 0;
        while (true) {
            long[] jArr14 = zzls2.zzbal;
            if (i40 >= jArr14.length) {
                break;
            }
            int[] iArr12 = iArr11;
            long j10 = zzls2.zzbam[i40];
            long j11 = jArr14[i40];
            if (j10 != j2) {
                jArr4 = jArr12;
                int zzb3 = zzpt.zzb(jArr, j10, true, true);
                int zzb4 = zzpt.zzb(jArr, zzpt.zza(j11, zzls2.zzdf, zzls2.zzbai) + j10, z3, false);
                if (z5) {
                    int i42 = zzb4 - zzb3;
                    System.arraycopy(jArr2, zzb3, jArr4, i41, i42);
                    iArr4 = iArr9;
                    z2 = z3;
                    iArr3 = iArr10;
                    System.arraycopy(iArr4, zzb3, iArr3, i41, i42);
                    jArr3 = jArr2;
                    iArr5 = iArr12;
                    System.arraycopy(iArr2, zzb3, iArr5, i41, i42);
                } else {
                    iArr4 = iArr9;
                    jArr3 = jArr2;
                    iArr5 = iArr12;
                    z2 = z3;
                    iArr3 = iArr10;
                }
                int i43 = i39;
                while (zzb3 < zzb4) {
                    jArr13[i41] = zzpt.zza(j3, 1000000, zzls2.zzbai) + zzpt.zza(jArr[zzb3] - j10, 1000000, zzls2.zzdf);
                    if (z5 && iArr3[i41] > i43) {
                        i43 = iArr4[zzb3];
                    }
                    i41++;
                    zzb3++;
                    iArr4 = iArr4;
                    j10 = j10;
                    iArr5 = iArr5;
                }
                iArr12 = iArr5;
                iArr9 = iArr4;
                i39 = i43;
            } else {
                jArr4 = jArr12;
                jArr3 = jArr2;
                z2 = z3;
                iArr3 = iArr10;
            }
            j3 += j11;
            i40++;
            iArr10 = iArr3;
            jArr12 = jArr4;
            z3 = z2;
            iArr11 = iArr12;
            jArr2 = jArr3;
            j2 = -1;
        }
        boolean z6 = false;
        for (int i44 = 0; i44 < iArr11.length && !z6; i44++) {
            z6 |= (iArr11[i44] & 1) != 0;
        }
        if (z6) {
            return new zzlt(jArr12, iArr10, i39, jArr13, iArr11);
        }
        throw new zzhw("The edited sample sequence does not contain a sync sample.");
    }

    public static zzmh zza(zzky zzky, boolean z) {
        if (z) {
            return null;
        }
        zzpn zzpn = zzky.zzawt;
        zzpn.zzbi(8);
        while (zzpn.zziv() >= 8) {
            int position = zzpn.getPosition();
            int readInt = zzpn.readInt();
            if (zzpn.readInt() == zzkw.zzavy) {
                zzpn.zzbi(position);
                int i = position + readInt;
                zzpn.zzbj(12);
                while (true) {
                    if (zzpn.getPosition() >= i) {
                        break;
                    }
                    int position2 = zzpn.getPosition();
                    int readInt2 = zzpn.readInt();
                    if (zzpn.readInt() == zzkw.zzavz) {
                        zzpn.zzbi(position2);
                        int i2 = position2 + readInt2;
                        zzpn.zzbj(8);
                        ArrayList arrayList = new ArrayList();
                        while (zzpn.getPosition() < i2) {
                            zzmh.zza zzd = zzll.zzd(zzpn);
                            if (zzd != null) {
                                arrayList.add(zzd);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            return new zzmh(arrayList);
                        }
                    } else {
                        zzpn.zzbj(readInt2 - 8);
                    }
                }
                return null;
            }
            zzpn.zzbj(readInt - 8);
        }
        return null;
    }

    private static int zza(zzpn zzpn, int i, int i2, zzlc zzlc, int i3) {
        int position = zzpn.getPosition();
        while (true) {
            boolean z = false;
            if (position - i >= i2) {
                return 0;
            }
            zzpn.zzbi(position);
            int readInt = zzpn.readInt();
            zzpg.checkArgument(readInt > 0, "childAtomSize should be positive");
            if (zzpn.readInt() == zzkw.zzaus) {
                int i4 = position + 8;
                Pair pair = null;
                Integer num = null;
                zzlr zzlr = null;
                boolean z2 = false;
                while (i4 - position < readInt) {
                    zzpn.zzbi(i4);
                    int readInt2 = zzpn.readInt();
                    int readInt3 = zzpn.readInt();
                    if (readInt3 == zzkw.zzauy) {
                        num = Integer.valueOf(zzpn.readInt());
                    } else if (readInt3 == zzkw.zzaut) {
                        zzpn.zzbj(4);
                        z2 = zzpn.readInt() == zzaws;
                    } else if (readInt3 == zzkw.zzauu) {
                        int i5 = i4 + 8;
                        while (true) {
                            if (i5 - i4 >= readInt2) {
                                zzlr = null;
                                break;
                            }
                            zzpn.zzbi(i5);
                            int readInt4 = zzpn.readInt();
                            if (zzpn.readInt() == zzkw.zzauv) {
                                zzpn.zzbj(6);
                                boolean z3 = zzpn.readUnsignedByte() == 1;
                                int readUnsignedByte = zzpn.readUnsignedByte();
                                byte[] bArr = new byte[16];
                                zzpn.zze(bArr, 0, 16);
                                zzlr = new zzlr(z3, readUnsignedByte, bArr);
                            } else {
                                i5 += readInt4;
                            }
                        }
                    }
                    i4 += readInt2;
                }
                if (z2) {
                    zzpg.checkArgument(num != null, "frma atom is mandatory");
                    if (zzlr != null) {
                        z = true;
                    }
                    zzpg.checkArgument(z, "schi->tenc atom is mandatory");
                    pair = Pair.create(num, zzlr);
                }
                if (pair != null) {
                    zzlc.zzaxd[i3] = (zzlr) pair.second;
                    return ((Integer) pair.first).intValue();
                }
            }
            position += readInt;
        }
    }
}
