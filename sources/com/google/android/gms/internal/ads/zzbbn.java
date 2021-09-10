package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzau;
import com.google.android.gms.ads.internal.util.zzav;
import com.google.android.gms.ads.internal.util.zzaw;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.TimeUnit;

public final class zzbbn {
    private final Context context;
    private final zzazn zzdtx;
    private final String zzdun;
    private final zzacc zzejx;
    private boolean zzekb;
    private final zzaca zzemp;
    private final zzau zzemq = new zzav().zza("min_1", Double.MIN_VALUE, 1.0d).zza("1_5", 1.0d, 5.0d).zza("5_10", 5.0d, 10.0d).zza("10_20", 10.0d, 20.0d).zza("20_30", 20.0d, 30.0d).zza("30_max", 30.0d, Double.MAX_VALUE).zzzo();
    private final long[] zzemr;
    private final String[] zzems;
    private boolean zzemt = false;
    private boolean zzemu = false;
    private boolean zzemv = false;
    private boolean zzemw = false;
    private zzbav zzemx;
    private boolean zzemy;
    private boolean zzemz;
    private long zzena = -1;

    public zzbbn(Context context2, zzazn zzazn, String str, zzacc zzacc, zzaca zzaca) {
        this.context = context2;
        this.zzdtx = zzazn;
        this.zzdun = str;
        this.zzejx = zzacc;
        this.zzemp = zzaca;
        String str2 = (String) zzwr.zzqr().zzd(zzabp.zzcnd);
        if (str2 == null) {
            this.zzems = new String[0];
            this.zzemr = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, ",");
        this.zzems = new String[split.length];
        this.zzemr = new long[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzemr[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzazk.zzd("Unable to parse frame hash target time number.", e);
                this.zzemr[i] = -1;
            }
        }
    }

    public final void onStop() {
        if (zzadu.zzdez.get().booleanValue() && !this.zzemy) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "native-player-metrics");
            bundle.putString("request", this.zzdun);
            bundle.putString("player", this.zzemx.zzaad());
            for (zzaw zzaw : this.zzemq.zzzn()) {
                String valueOf = String.valueOf(zzaw.name);
                bundle.putString(valueOf.length() != 0 ? "fps_c_".concat(valueOf) : new String("fps_c_"), Integer.toString(zzaw.count));
                String valueOf2 = String.valueOf(zzaw.name);
                bundle.putString(valueOf2.length() != 0 ? "fps_p_".concat(valueOf2) : new String("fps_p_"), Double.toString(zzaw.zzega));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.zzemr;
                if (i < jArr.length) {
                    String str = this.zzems[i];
                    if (str != null) {
                        String valueOf3 = String.valueOf(Long.valueOf(jArr[i]));
                        StringBuilder sb = new StringBuilder(valueOf3.length() + 3);
                        sb.append("fh_");
                        sb.append(valueOf3);
                        bundle.putString(sb.toString(), str);
                    }
                    i++;
                } else {
                    zzr.zzkr().zza(this.context, this.zzdtx.zzbrp, "gmob-apps", bundle, true);
                    this.zzemy = true;
                    return;
                }
            }
        }
    }

    public final void zzaaz() {
        this.zzekb = true;
        if (this.zzemu && !this.zzemv) {
            zzabx.zza(this.zzejx, this.zzemp, "vfp2");
            this.zzemv = true;
        }
    }

    public final void zzaba() {
        this.zzekb = false;
    }

    public final void zzb(zzbav zzbav) {
        zzabx.zza(this.zzejx, this.zzemp, "vpc2");
        this.zzemt = true;
        zzacc zzacc = this.zzejx;
        if (zzacc != null) {
            zzacc.zzg("vpn", zzbav.zzaad());
        }
        this.zzemx = zzbav;
    }

    public final void zzc(zzbav zzbav) {
        if (this.zzemv && !this.zzemw) {
            if (zzd.zzyg() && !this.zzemw) {
                zzd.zzeb("VideoMetricsMixin first frame");
            }
            zzabx.zza(this.zzejx, this.zzemp, "vff2");
            this.zzemw = true;
        }
        long c = zzr.zzky().c();
        if (this.zzekb && this.zzemz && this.zzena != -1) {
            double nanos = (double) TimeUnit.SECONDS.toNanos(1);
            double d = (double) (c - this.zzena);
            Double.isNaN(nanos);
            Double.isNaN(d);
            this.zzemq.zza(nanos / d);
        }
        this.zzemz = this.zzekb;
        this.zzena = c;
        long longValue = ((Long) zzwr.zzqr().zzd(zzabp.zzcne)).longValue();
        long currentPosition = (long) zzbav.getCurrentPosition();
        int i = 0;
        while (true) {
            String[] strArr = this.zzems;
            if (i >= strArr.length) {
                return;
            }
            if (strArr[i] != null || longValue <= Math.abs(currentPosition - this.zzemr[i])) {
                i++;
            } else {
                String[] strArr2 = this.zzems;
                int i2 = 8;
                Bitmap bitmap = zzbav.getBitmap(8, 8);
                long j = 63;
                int i3 = 0;
                long j2 = 0;
                while (i3 < i2) {
                    int i4 = 0;
                    while (i4 < i2) {
                        int pixel = bitmap.getPixel(i4, i3);
                        j2 |= (Color.green(pixel) + (Color.red(pixel) + Color.blue(pixel)) > 128 ? 1 : 0) << ((int) j);
                        i4++;
                        j--;
                        i2 = 8;
                    }
                    i3++;
                    i2 = 8;
                }
                strArr2[i] = String.format("%016X", Long.valueOf(j2));
                return;
            }
        }
    }

    public final void zzfb() {
        if (this.zzemt && !this.zzemu) {
            zzabx.zza(this.zzejx, this.zzemp, "vfr2");
            this.zzemu = true;
        }
    }
}
