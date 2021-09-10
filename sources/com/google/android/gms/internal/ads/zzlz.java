package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseIntArray;
import com.google.android.gms.ads.AdRequest;
import com.vungle.warren.error.VungleException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

@SuppressLint({"InlinedApi"})
@TargetApi(VungleException.NO_SPACE_TO_INIT)
public final class zzlz {
    private static final zzlw zzbcy = zzlw.zzay("OMX.google.raw.decoder");
    private static final Pattern zzbcz = Pattern.compile("^\\D?(\\d+)$");
    private static final HashMap<zza, List<zzlw>> zzbda = new HashMap<>();
    private static final SparseIntArray zzbdb;
    private static final SparseIntArray zzbdc;
    private static final Map<String, Integer> zzbdd;
    private static int zzbde = -1;

    /* access modifiers changed from: private */
    public static final class zza {
        public final String mimeType;
        public final boolean zzbcs;

        public zza(String str, boolean z) {
            this.mimeType = str;
            this.zzbcs = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && obj.getClass() == zza.class) {
                zza zza = (zza) obj;
                return TextUtils.equals(this.mimeType, zza.mimeType) && this.zzbcs == zza.zzbcs;
            }
        }

        public final int hashCode() {
            String str = this.mimeType;
            return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.zzbcs ? 1231 : 1237);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        zzbdb = sparseIntArray;
        sparseIntArray.put(66, 1);
        sparseIntArray.put(77, 2);
        sparseIntArray.put(88, 4);
        sparseIntArray.put(100, 8);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        zzbdc = sparseIntArray2;
        sparseIntArray2.put(10, 1);
        sparseIntArray2.put(11, 4);
        sparseIntArray2.put(12, 8);
        sparseIntArray2.put(13, 16);
        sparseIntArray2.put(20, 32);
        sparseIntArray2.put(21, 64);
        sparseIntArray2.put(22, 128);
        sparseIntArray2.put(30, 256);
        sparseIntArray2.put(31, AdRequest.MAX_CONTENT_URL_LENGTH);
        sparseIntArray2.put(32, 1024);
        sparseIntArray2.put(40, 2048);
        sparseIntArray2.put(41, 4096);
        sparseIntArray2.put(42, 8192);
        sparseIntArray2.put(50, 16384);
        sparseIntArray2.put(51, 32768);
        sparseIntArray2.put(52, 65536);
        HashMap hashMap = new HashMap();
        zzbdd = hashMap;
        hashMap.put("L30", 1);
        hashMap.put("L60", 4);
        hashMap.put("L63", 16);
        hashMap.put("L90", 64);
        hashMap.put("L93", 256);
        hashMap.put("L120", 1024);
        hashMap.put("L123", 4096);
        hashMap.put("L150", 16384);
        hashMap.put("L153", 65536);
        hashMap.put("L156", 262144);
        hashMap.put("L180", 1048576);
        hashMap.put("L183", 4194304);
        hashMap.put("L186", 16777216);
        hashMap.put("H30", 2);
        hashMap.put("H60", 8);
        hashMap.put("H63", 32);
        hashMap.put("H90", 128);
        hashMap.put("H93", Integer.valueOf((int) AdRequest.MAX_CONTENT_URL_LENGTH));
        hashMap.put("H120", 2048);
        hashMap.put("H123", 8192);
        hashMap.put("H150", 32768);
        hashMap.put("H153", 131072);
        hashMap.put("H156", 524288);
        hashMap.put("H180", 2097152);
        hashMap.put("H183", 8388608);
        hashMap.put("H186", 33554432);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:60:0x00f8, code lost:
        if ("SO-02E".equals(r15) == false) goto L_0x00fc;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x0126, code lost:
        if ("C1605".equals(r14) == false) goto L_0x0129;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0167, code lost:
        if (r12.startsWith("t0") == false) goto L_0x016a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x01cb A[Catch:{ Exception -> 0x01c6 }] */
    /* JADX WARNING: Removed duplicated region for block: B:158:0x026d A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:96:0x0182  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.util.List<com.google.android.gms.internal.ads.zzlw> zza(com.google.android.gms.internal.ads.zzlz.zza r17, com.google.android.gms.internal.ads.zzmc r18) {
        /*
        // Method dump skipped, instructions count: 642
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlz.zza(com.google.android.gms.internal.ads.zzlz$zza, com.google.android.gms.internal.ads.zzmc):java.util.List");
    }

    /* JADX INFO: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0044, code lost:
        if (r3.equals("avc1") == false) goto L_0x001b;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zzbb(java.lang.String r9) {
        /*
        // Method dump skipped, instructions count: 274
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlz.zzbb(java.lang.String):android.util.Pair");
    }

    public static zzlw zzc(String str, boolean z) {
        List<zzlw> zzd = zzd(str, z);
        if (zzd.isEmpty()) {
            return null;
        }
        return zzd.get(0);
    }

    private static synchronized List<zzlw> zzd(String str, boolean z) {
        synchronized (zzlz.class) {
            zza zza2 = new zza(str, z);
            HashMap<zza, List<zzlw>> hashMap = zzbda;
            List<zzlw> list = hashMap.get(zza2);
            if (list != null) {
                return list;
            }
            int i = zzpt.SDK_INT;
            List<zzlw> zza3 = zza(zza2, i >= 21 ? new zzme(z) : new zzmf());
            if (z && zza3.isEmpty() && 21 <= i && i <= 23) {
                zza3 = zza(zza2, new zzmf());
                if (!zza3.isEmpty()) {
                    String str2 = zza3.get(0).name;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63 + String.valueOf(str2).length());
                    sb.append("MediaCodecList API didn't list secure decoder for: ");
                    sb.append(str);
                    sb.append(". Assuming: ");
                    sb.append(str2);
                    Log.w("MediaCodecUtil", sb.toString());
                }
            }
            List<zzlw> unmodifiableList = Collections.unmodifiableList(zza3);
            hashMap.put(zza2, unmodifiableList);
            return unmodifiableList;
        }
    }

    public static zzlw zzhj() {
        return zzbcy;
    }

    public static int zzhk() {
        if (zzbde == -1) {
            int i = 0;
            zzlw zzc = zzc("video/avc", false);
            if (zzc != null) {
                MediaCodecInfo.CodecProfileLevel[] zzhi = zzc.zzhi();
                int length = zzhi.length;
                int i2 = 0;
                while (i < length) {
                    int i3 = zzhi[i].level;
                    int i4 = 9437184;
                    if (i3 == 1 || i3 == 2) {
                        i4 = 25344;
                    } else {
                        switch (i3) {
                            case 8:
                            case VungleException.NO_SPACE_TO_INIT /*{ENCODED_INT: 16}*/:
                            case 32:
                                i4 = 101376;
                                continue;
                            case 64:
                                i4 = 202752;
                                continue;
                            case 128:
                            case 256:
                                i4 = 414720;
                                continue;
                            case AdRequest.MAX_CONTENT_URL_LENGTH:
                                i4 = 921600;
                                continue;
                            case 1024:
                                i4 = 1310720;
                                continue;
                            case 2048:
                            case 4096:
                                i4 = 2097152;
                                continue;
                            case 8192:
                                i4 = 2228224;
                                continue;
                            case 16384:
                                i4 = 5652480;
                                continue;
                            case 32768:
                            case 65536:
                                break;
                            default:
                                i4 = -1;
                                continue;
                        }
                    }
                    i2 = Math.max(i4, i2);
                    i++;
                }
                i = Math.max(i2, zzpt.SDK_INT >= 21 ? 345600 : 172800);
            }
            zzbde = i;
        }
        return zzbde;
    }

    private static Pair<Integer, Integer> zza(String str, String[] strArr) {
        Integer num;
        Integer num2;
        if (strArr.length < 2) {
            String valueOf = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                num2 = Integer.valueOf(Integer.parseInt(strArr[1].substring(0, 2), 16));
                num = Integer.valueOf(Integer.parseInt(strArr[1].substring(4), 16));
            } else if (strArr.length >= 3) {
                Integer valueOf2 = Integer.valueOf(Integer.parseInt(strArr[1]));
                num = Integer.valueOf(Integer.parseInt(strArr[2]));
                num2 = valueOf2;
            } else {
                String valueOf3 = String.valueOf(str);
                Log.w("MediaCodecUtil", valueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf3) : new String("Ignoring malformed AVC codec string: "));
                return null;
            }
            Integer valueOf4 = Integer.valueOf(zzbdb.get(num2.intValue()));
            if (valueOf4 == null) {
                String valueOf5 = String.valueOf(num2);
                StringBuilder sb = new StringBuilder(valueOf5.length() + 21);
                sb.append("Unknown AVC profile: ");
                sb.append(valueOf5);
                Log.w("MediaCodecUtil", sb.toString());
                return null;
            }
            Integer valueOf6 = Integer.valueOf(zzbdc.get(num.intValue()));
            if (valueOf6 != null) {
                return new Pair<>(valueOf4, valueOf6);
            }
            String valueOf7 = String.valueOf(num);
            StringBuilder sb2 = new StringBuilder(valueOf7.length() + 19);
            sb2.append("Unknown AVC level: ");
            sb2.append(valueOf7);
            Log.w("MediaCodecUtil", sb2.toString());
            return null;
        } catch (NumberFormatException unused) {
            String valueOf8 = String.valueOf(str);
            Log.w("MediaCodecUtil", valueOf8.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(valueOf8) : new String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }
}
