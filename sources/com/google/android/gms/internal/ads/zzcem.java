package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.common.util.d;
import java.util.concurrent.Executor;

public final class zzcem {
    private final Executor executor;
    private final d zzbqg;
    private final zzay zzghk;

    public zzcem(zzay zzay, d dVar, Executor executor2) {
        this.zzghk = zzay;
        this.zzbqg = dVar;
        this.executor = executor2;
    }

    public final zzdzw<Bitmap> zza(String str, double d, boolean z) {
        return zzdzk.zzb(zzay.zzeo(str), new zzcel(this, d, z), this.executor);
    }

    /* access modifiers changed from: private */
    public final Bitmap zza(byte[] bArr, double d, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcxv)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zza(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                int i2 = i - 1;
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros(i2 / ((Integer) zzwr.zzqr().zzd(zzabp.zzcxw)).intValue())) / 2);
            }
        }
        return zza(bArr, options);
    }

    private final Bitmap zza(byte[] bArr, BitmapFactory.Options options) {
        long b = this.zzbqg.b();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long b2 = this.zzbqg.b();
        if (decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            long j = b2 - b;
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            StringBuilder sb = new StringBuilder((int) FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(j);
            sb.append(" on ui thread: ");
            sb.append(z);
            zzd.zzeb(sb.toString());
        }
        return decodeByteArray;
    }
}
