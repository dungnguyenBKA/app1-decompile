package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public final class zzbax extends FrameLayout implements zzbaw {
    private final zzbbo zzeix;
    private final FrameLayout zzejw;
    private final zzacc zzejx;
    private final zzbbq zzejy;
    private final long zzejz;
    private zzbav zzeka;
    private boolean zzekb;
    private boolean zzekc;
    private boolean zzekd;
    private boolean zzeke;
    private long zzekf;
    private long zzekg;
    private String zzekh;
    private String[] zzeki;
    private Bitmap zzekj;
    private ImageView zzekk;
    private boolean zzekl;

    public zzbax(Context context, zzbbo zzbbo, int i, boolean z, zzacc zzacc, zzbbl zzbbl) {
        super(context);
        this.zzeix = zzbbo;
        this.zzejx = zzacc;
        FrameLayout frameLayout = new FrameLayout(context);
        this.zzejw = frameLayout;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcno)).booleanValue()) {
            frameLayout.setBackgroundResource(17170444);
        }
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Objects.requireNonNull(zzbbo.zzabf(), "null reference");
        zzbav zza = zzbbo.zzabf().zzbol.zza(context, zzbbo, i, z, zzacc, zzbbl);
        this.zzeka = zza;
        if (zza != null) {
            frameLayout.addView(zza, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcnf)).booleanValue()) {
                zzaar();
            }
        }
        this.zzekk = new ImageView(context);
        this.zzejz = ((Long) zzwr.zzqr().zzd(zzabp.zzcnj)).longValue();
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcnh)).booleanValue();
        this.zzeke = booleanValue;
        if (zzacc != null) {
            zzacc.zzg("spinner_used", booleanValue ? "1" : "0");
        }
        this.zzejy = new zzbbq(this);
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.zza(this);
        }
        if (this.zzeka == null) {
            zzl("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void zza(zzbbo zzbbo) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "no_video_view");
        zzbbo.zza("onVideoEvent", hashMap);
    }

    private final boolean zzaat() {
        return this.zzekk.getParent() != null;
    }

    private final void zzaau() {
        if (this.zzeix.zzabe() != null && this.zzekc && !this.zzekd) {
            this.zzeix.zzabe().getWindow().clearFlags(128);
            this.zzekc = false;
        }
    }

    public final void destroy() {
        this.zzejy.pause();
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.stop();
        }
        zzaau();
    }

    @Override // java.lang.Object
    public final void finalize() {
        try {
            this.zzejy.pause();
            zzbav zzbav = this.zzeka;
            if (zzbav != null) {
                zzdzv zzdzv = zzazp.zzeig;
                zzbav.getClass();
                zzdzv.execute(zzbba.zza(zzbav));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void onPaused() {
        zzd("pause", new String[0]);
        zzaau();
        this.zzekb = false;
    }

    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.zzejy.resume();
        } else {
            this.zzejy.pause();
            this.zzekg = this.zzekf;
        }
        zzj.zzeen.post(new zzbaz(this, z));
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.zzejy.resume();
            z = true;
        } else {
            this.zzejy.pause();
            this.zzekg = this.zzekf;
            z = false;
        }
        zzj.zzeen.post(new zzbbe(this, z));
    }

    public final void pause() {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.pause();
        }
    }

    public final void play() {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.play();
        }
    }

    public final void seekTo(int i) {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.seekTo(i);
        }
    }

    public final void setVolume(float f) {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.zzejv.setVolume(f);
            zzbav.zzaaj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaak() {
        this.zzejy.resume();
        zzj.zzeen.post(new zzbbc(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaal() {
        if (this.zzeix.zzabe() != null && !this.zzekc) {
            boolean z = (this.zzeix.zzabe().getWindow().getAttributes().flags & 128) != 0;
            this.zzekd = z;
            if (!z) {
                this.zzeix.zzabe().getWindow().addFlags(128);
                this.zzekc = true;
            }
        }
        this.zzekb = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaam() {
        zzd("ended", new String[0]);
        zzaau();
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaan() {
        if (this.zzekl && this.zzekj != null && !zzaat()) {
            this.zzekk.setImageBitmap(this.zzekj);
            this.zzekk.invalidate();
            this.zzejw.addView(this.zzekk, new FrameLayout.LayoutParams(-1, -1));
            this.zzejw.bringChildToFront(this.zzekk);
        }
        this.zzejy.pause();
        this.zzekg = this.zzekf;
        zzj.zzeen.post(new zzbbb(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaao() {
        if (this.zzekb && zzaat()) {
            this.zzejw.removeView(this.zzekk);
        }
        if (this.zzekj != null) {
            long b = zzr.zzky().b();
            if (this.zzeka.getBitmap(this.zzekj) != null) {
                this.zzekl = true;
            }
            long b2 = zzr.zzky().b() - b;
            if (zzd.zzyg()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(b2);
                sb.append("ms");
                zzd.zzeb(sb.toString());
            }
            if (b2 > this.zzejz) {
                zzazk.zzex("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.zzeke = false;
                this.zzekj = null;
                zzacc zzacc = this.zzejx;
                if (zzacc != null) {
                    zzacc.zzg("spinner_jank", Long.toString(b2));
                }
            }
        }
    }

    public final void zzaap() {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.zzejv.setMuted(true);
            zzbav.zzaaj();
        }
    }

    public final void zzaaq() {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.zzejv.setMuted(false);
            zzbav.zzaaj();
        }
    }

    @TargetApi(VungleException.SERVER_RETRY_ERROR)
    public final void zzaar() {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            TextView textView = new TextView(zzbav.getContext());
            String valueOf = String.valueOf(this.zzeka.zzaad());
            textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
            textView.setTextColor(-65536);
            textView.setBackgroundColor(-256);
            this.zzejw.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
            this.zzejw.bringChildToFront(textView);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzaas() {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            long currentPosition = (long) zzbav.getCurrentPosition();
            if (this.zzekf != currentPosition && currentPosition > 0) {
                float f = ((float) currentPosition) / 1000.0f;
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue()) {
                    zzd("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(this.zzeka.getTotalBytes()), "qoeCachedBytes", String.valueOf(this.zzeka.zznb()), "qoeLoadedBytes", String.valueOf(this.zzeka.zzaah()), "droppedFrames", String.valueOf(this.zzeka.zzaai()), "reportTime", String.valueOf(zzr.zzky().a()));
                } else {
                    zzd("timeupdate", "time", String.valueOf(f));
                }
                this.zzekf = currentPosition;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzav(boolean z) {
        zzd("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    public final void zzc(String str, String[] strArr) {
        this.zzekh = str;
        this.zzeki = strArr;
    }

    public final void zzd(int i, int i2, int i3, int i4) {
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.zzejw.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    public final void zzdk(int i) {
        this.zzeka.zzdk(i);
    }

    public final void zzdl(int i) {
        this.zzeka.zzdl(i);
    }

    public final void zzdm(int i) {
        this.zzeka.zzdm(i);
    }

    public final void zzdn(int i) {
        this.zzeka.zzdn(i);
    }

    public final void zzdo(int i) {
        this.zzeka.zzdo(i);
    }

    @TargetApi(VungleException.SERVER_RETRY_ERROR)
    public final void zze(MotionEvent motionEvent) {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.dispatchTouchEvent(motionEvent);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzfb() {
        zzbav zzbav = this.zzeka;
        if (zzbav != null && this.zzekg == 0) {
            zzd("canplaythrough", "duration", String.valueOf(((float) zzbav.getDuration()) / 1000.0f), "videoWidth", String.valueOf(this.zzeka.getVideoWidth()), "videoHeight", String.valueOf(this.zzeka.getVideoHeight()));
        }
    }

    public final void zzhy() {
        if (this.zzeka != null) {
            if (!TextUtils.isEmpty(this.zzekh)) {
                this.zzeka.zzb(this.zzekh, this.zzeki);
            } else {
                zzd("no_src", new String[0]);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzk(int i, int i2) {
        if (this.zzeke) {
            zzaba<Integer> zzaba = zzabp.zzcni;
            int max = Math.max(i / ((Integer) zzwr.zzqr().zzd(zzaba)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) zzwr.zzqr().zzd(zzaba)).intValue(), 1);
            Bitmap bitmap = this.zzekj;
            if (bitmap == null || bitmap.getWidth() != max || this.zzekj.getHeight() != max2) {
                this.zzekj = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
                this.zzekl = false;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzl(String str, String str2) {
        zzd("error", "what", str, "extra", str2);
    }

    public static void zza(zzbbo zzbbo, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("mimeTypes", map);
        zzbbo.zza("onVideoEvent", hashMap);
    }

    /* access modifiers changed from: private */
    public final void zzd(String str, String... strArr) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.zzeix.zza("onVideoEvent", hashMap);
    }

    public static void zza(zzbbo zzbbo, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "decoderProps");
        hashMap.put("error", str);
        zzbbo.zza("onVideoEvent", hashMap);
    }

    public final void zza(float f, float f2) {
        zzbav zzbav = this.zzeka;
        if (zzbav != null) {
            zzbav.zza(f, f2);
        }
    }
}
