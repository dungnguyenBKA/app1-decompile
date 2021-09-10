package com.google.android.gms.internal.ads;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.AdRequest;
import java.nio.ByteBuffer;
import org.apache.http.HttpStatus;

public final class zzih {
    private static final int[] zzaiw = {1, 2, 3, 6};
    private static final int[] zzaix = {48000, 44100, 32000};
    private static final int[] zzaiy = {24000, 22050, 16000};
    private static final int[] zzaiz = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzaja = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 576, 640};
    private static final int[] zzajb = {69, 87, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 121, 139, 174, 208, 243, 278, 348, HttpStatus.SC_EXPECTATION_FAILED, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static zzht zza(zzpn zzpn, String str, String str2, zzjo zzjo) {
        int i = zzaix[(zzpn.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzpn.readUnsignedByte();
        int i2 = zzaiz[(readUnsignedByte & 56) >> 3];
        if ((readUnsignedByte & 4) != 0) {
            i2++;
        }
        return zzht.zza(str, "audio/ac3", null, -1, -1, i2, i, null, zzjo, 0, str2);
    }

    public static zzht zzb(zzpn zzpn, String str, String str2, zzjo zzjo) {
        zzpn.zzbj(2);
        int i = zzaix[(zzpn.readUnsignedByte() & 192) >> 6];
        int readUnsignedByte = zzpn.readUnsignedByte();
        int i2 = zzaiz[(readUnsignedByte & 14) >> 1];
        if ((readUnsignedByte & 1) != 0) {
            i2++;
        }
        return zzht.zza(str, "audio/eac3", null, -1, -1, i2, i, null, zzjo, 0, str2);
    }

    public static int zzfi() {
        return 1536;
    }

    public static int zzm(ByteBuffer byteBuffer) {
        int i = 6;
        if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
            i = zzaiw[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4];
        }
        return i * 256;
    }
}
