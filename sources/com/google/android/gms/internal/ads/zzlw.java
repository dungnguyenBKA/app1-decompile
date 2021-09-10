package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.vungle.warren.error.VungleException;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public final class zzlw {
    private final String mimeType;
    public final String name;
    public final boolean zzalq;
    public final boolean zzbcr;
    public final boolean zzbcs;
    private final MediaCodecInfo.CodecCapabilities zzbct;

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x005a, code lost:
        if ((com.google.android.gms.internal.ads.zzpt.SDK_INT >= 21 && r4.isFeatureSupported("secure-playback")) != false) goto L_0x005e;
     */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0049  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private zzlw(java.lang.String r2, java.lang.String r3, android.media.MediaCodecInfo.CodecCapabilities r4, boolean r5, boolean r6) {
        /*
            r1 = this;
            r1.<init>()
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzpg.checkNotNull(r2)
            java.lang.String r2 = (java.lang.String) r2
            r1.name = r2
            r1.mimeType = r3
            r1.zzbct = r4
            r2 = 1
            r3 = 0
            if (r5 != 0) goto L_0x002a
            if (r4 == 0) goto L_0x002a
            int r5 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            r0 = 19
            if (r5 < r0) goto L_0x0025
            java.lang.String r5 = "adaptive-playback"
            boolean r5 = r4.isFeatureSupported(r5)
            if (r5 == 0) goto L_0x0025
            r5 = 1
            goto L_0x0026
        L_0x0025:
            r5 = 0
        L_0x0026:
            if (r5 == 0) goto L_0x002a
            r5 = 1
            goto L_0x002b
        L_0x002a:
            r5 = 0
        L_0x002b:
            r1.zzbcr = r5
            r5 = 21
            if (r4 == 0) goto L_0x0044
            int r0 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            if (r0 < r5) goto L_0x003f
            java.lang.String r0 = "tunneled-playback"
            boolean r0 = r4.isFeatureSupported(r0)
            if (r0 == 0) goto L_0x003f
            r0 = 1
            goto L_0x0040
        L_0x003f:
            r0 = 0
        L_0x0040:
            if (r0 == 0) goto L_0x0044
            r0 = 1
            goto L_0x0045
        L_0x0044:
            r0 = 0
        L_0x0045:
            r1.zzalq = r0
            if (r6 != 0) goto L_0x005e
            if (r4 == 0) goto L_0x005d
            int r6 = com.google.android.gms.internal.ads.zzpt.SDK_INT
            if (r6 < r5) goto L_0x0059
            java.lang.String r5 = "secure-playback"
            boolean r4 = r4.isFeatureSupported(r5)
            if (r4 == 0) goto L_0x0059
            r4 = 1
            goto L_0x005a
        L_0x0059:
            r4 = 0
        L_0x005a:
            if (r4 == 0) goto L_0x005d
            goto L_0x005e
        L_0x005d:
            r2 = 0
        L_0x005e:
            r1.zzbcs = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlw.<init>(java.lang.String, java.lang.String, android.media.MediaCodecInfo$CodecCapabilities, boolean, boolean):void");
    }

    public static zzlw zza(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new zzlw(str, str2, codecCapabilities, z, z2);
    }

    public static zzlw zzay(String str) {
        return new zzlw(str, null, null, false, false);
    }

    private final void zzba(String str) {
        String str2 = this.name;
        String str3 = this.mimeType;
        String str4 = zzpt.zzbkn;
        String.valueOf(str).length();
        String.valueOf(str2).length();
        String.valueOf(str3).length();
        String.valueOf(str4).length();
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public final boolean zzaw(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            zzba("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            zzba(ic.C(31, "sampleRate.support, ", i));
            return false;
        }
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public final boolean zzax(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            zzba("channelCount.aCaps");
            return false;
        } else if (audioCapabilities.getMaxInputChannelCount() >= i) {
            return true;
        } else {
            zzba(ic.C(33, "channelCount.support, ", i));
            return false;
        }
    }

    public final boolean zzaz(String str) {
        if (str == null || this.mimeType == null) {
            return true;
        }
        String trim = str.trim();
        String str2 = (trim.startsWith("avc1") || trim.startsWith("avc3")) ? "video/avc" : (trim.startsWith("hev1") || trim.startsWith("hvc1")) ? "video/hevc" : trim.startsWith("vp9") ? "video/x-vnd.on2.vp9" : trim.startsWith("vp8") ? "video/x-vnd.on2.vp8" : trim.startsWith("mp4a") ? "audio/mp4a-latm" : (trim.startsWith("ac-3") || trim.startsWith("dac3")) ? "audio/ac3" : (trim.startsWith("ec-3") || trim.startsWith("dec3")) ? "audio/eac3" : (trim.startsWith("dtsc") || trim.startsWith("dtse")) ? "audio/vnd.dts" : (trim.startsWith("dtsh") || trim.startsWith("dtsl")) ? "audio/vnd.dts.hd" : trim.startsWith("opus") ? "audio/opus" : trim.startsWith("vorbis") ? "audio/vorbis" : null;
        if (str2 == null) {
            return true;
        }
        if (!this.mimeType.equals(str2)) {
            StringBuilder sb = new StringBuilder(str2.length() + str.length() + 13);
            sb.append("codec.mime ");
            sb.append(str);
            sb.append(", ");
            sb.append(str2);
            zzba(sb.toString());
            return false;
        }
        Pair<Integer, Integer> zzbb = zzlz.zzbb(str);
        if (zzbb == null) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] zzhi = zzhi();
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : zzhi) {
            if (codecProfileLevel.profile == ((Integer) zzbb.first).intValue() && codecProfileLevel.level >= ((Integer) zzbb.second).intValue()) {
                return true;
            }
        }
        StringBuilder sb2 = new StringBuilder(str2.length() + str.length() + 22);
        sb2.append("codec.profileLevel, ");
        sb2.append(str);
        sb2.append(", ");
        sb2.append(str2);
        zzba(sb2.toString());
        return false;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public final Point zzd(int i, int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzba("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(zzpt.zzf(i, widthAlignment) * widthAlignment, zzpt.zzf(i2, heightAlignment) * heightAlignment);
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzhi() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    @TargetApi(VungleException.SERVER_ERROR)
    public final boolean zza(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzbct;
        if (codecCapabilities == null) {
            zzba("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzba("sizeAndRate.vCaps");
            return false;
        } else if (zza(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !zza(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                zzba(sb.toString());
                return false;
            }
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("sizeAndRate.rotated, ");
            sb2.append(i);
            sb2.append("x");
            sb2.append(i2);
            sb2.append("x");
            sb2.append(d);
            String sb3 = sb2.toString();
            String str = this.name;
            String str2 = this.mimeType;
            String str3 = zzpt.zzbkn;
            String.valueOf(sb3).length();
            String.valueOf(str).length();
            String.valueOf(str2).length();
            String.valueOf(str3).length();
            return true;
        }
    }

    @TargetApi(VungleException.SERVER_ERROR)
    private static boolean zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        if (d == -1.0d || d <= 0.0d) {
            return videoCapabilities.isSizeSupported(i, i2);
        }
        return videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }
}
