package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcf;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.apache.http.protocol.HTTP;

final class zzda {
    private static boolean zzns = false;
    private static MessageDigest zznt;
    private static final Object zznu = new Object();
    private static final Object zznv = new Object();
    static CountDownLatch zznw = new CountDownLatch(1);

    private static Vector<byte[]> zza(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        int length = ((bArr.length + 255) - 1) / 255;
        Vector<byte[]> vector = new Vector<>();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i2 * 255;
            try {
                vector.add(Arrays.copyOfRange(bArr, i3, bArr.length - i3 > 255 ? i3 + 255 : bArr.length));
            } catch (IndexOutOfBoundsException unused) {
                return null;
            }
        }
        return vector;
    }

    public static byte[] zzb(byte[] bArr) {
        byte[] digest;
        synchronized (zznu) {
            MessageDigest zzbp = zzbp();
            if (zzbp != null) {
                zzbp.reset();
                zzbp.update(bArr);
                digest = zznt.digest();
            } else {
                throw new NoSuchAlgorithmException("Cannot compute hash");
            }
        }
        return digest;
    }

    static void zzbo() {
        synchronized (zznv) {
            if (!zzns) {
                zzns = true;
                new Thread(new zzdc()).start();
            }
        }
    }

    private static MessageDigest zzbp() {
        boolean z;
        MessageDigest messageDigest;
        zzbo();
        try {
            z = zznw.await(2, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            z = false;
        }
        if (z && (messageDigest = zznt) != null) {
            return messageDigest;
        }
        return null;
    }

    static String zzj(zzcf.zza zza, String str) {
        byte[] bArr;
        byte[] byteArray = zza.toByteArray();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsh)).booleanValue()) {
            Vector<byte[]> zza2 = zza(byteArray, 255);
            if (zza2 == null || zza2.size() == 0) {
                bArr = zza(zza(zzcf.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray(), str, true);
            } else {
                zzcf.zzf.zza zzbl = zzcf.zzf.zzbl();
                Iterator<byte[]> it = zza2.iterator();
                while (it.hasNext()) {
                    zzbl.zzi(zzejr.zzt(zza(it.next(), str, false)));
                }
                zzbl.zzj(zzejr.zzt(zzb(byteArray)));
                bArr = ((zzcf.zzf) ((zzelb) zzbl.zzbiw())).toByteArray();
            }
        } else if (zzff.zzzp != null) {
            bArr = ((zzcf.zzf) ((zzelb) zzcf.zzf.zzbl().zzi(zzejr.zzt(zzff.zzzp.zzc(byteArray, str != null ? str.getBytes() : new byte[0]))).zza(zzcm.TINK_HYBRID).zzbiw())).toByteArray();
        } else {
            throw new GeneralSecurityException();
        }
        return zzcy.zza(bArr, true);
    }

    private static zzcf.zza zza(zzcf.zza.zzd zzd) {
        zzcf.zza.zzb zzap = zzcf.zza.zzap();
        zzap.zzau((long) zzd.zzv());
        return (zzcf.zza) ((zzelb) zzap.zzbiw());
    }

    private static byte[] zza(byte[] bArr, String str, boolean z) {
        byte[] bArr2;
        int i = z ? 239 : 255;
        if (bArr.length > i) {
            bArr = zza(zzcf.zza.zzd.PSN_ENCODE_SIZE_FAIL).toByteArray();
        }
        if (bArr.length < i) {
            byte[] bArr3 = new byte[(i - bArr.length)];
            new SecureRandom().nextBytes(bArr3);
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr).put(bArr3).array();
        } else {
            bArr2 = ByteBuffer.allocate(i + 1).put((byte) bArr.length).put(bArr).array();
        }
        if (z) {
            bArr2 = ByteBuffer.allocate(256).put(zzb(bArr2)).put(bArr2).array();
        }
        byte[] bArr4 = new byte[256];
        for (zzdd zzdd : new zzdb().zzvk) {
            zzdd.zza(bArr2, bArr4);
        }
        if (str != null && str.length() > 0) {
            if (str.length() > 32) {
                str = str.substring(0, 32);
            }
            new zzeje(str.getBytes(HTTP.UTF_8)).zzs(bArr4);
        }
        return bArr4;
    }
}
