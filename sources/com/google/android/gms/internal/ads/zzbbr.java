package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.net.Uri;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.nio.ByteBuffer;
import java.util.Arrays;

@TargetApi(VungleException.NO_SPACE_TO_INIT)
public final class zzbbr extends zzbav implements TextureView.SurfaceTextureListener, zzbcu {
    private Surface zzblm;
    private final zzbbo zzeix;
    private final zzbbn zzeiy;
    private final boolean zzeiz;
    private int zzeje;
    private int zzejf;
    private int zzejh;
    private int zzeji;
    private zzbbm zzejj;
    private final boolean zzejk;
    private zzbaw zzejm;
    private String[] zzeki;
    private final zzbbl zzenf;
    private zzbck zzeng;
    private String zzenh;
    private boolean zzeni;
    private int zzenj = 1;
    private boolean zzenk;
    private boolean zzenl;
    private float zzenm;

    public zzbbr(Context context, zzbbn zzbbn, zzbbo zzbbo, boolean z, boolean z2, zzbbl zzbbl) {
        super(context);
        this.zzeiz = z2;
        this.zzeix = zzbbo;
        this.zzeiy = zzbbn;
        this.zzejk = z;
        this.zzenf = zzbbl;
        setSurfaceTextureListener(this);
        zzbbn.zzb(this);
    }

    private final void zza(Surface surface, boolean z) {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zza(surface, z);
        } else {
            zzazk.zzex("Trying to set surface before player is initalized.");
        }
    }

    private final zzbck zzabp() {
        return new zzbck(this.zzeix.getContext(), this.zzenf, this.zzeix);
    }

    private final String zzabq() {
        return zzr.zzkr().zzq(this.zzeix.getContext(), this.zzeix.zzabj().zzbrp);
    }

    private final boolean zzabr() {
        zzbck zzbck = this.zzeng;
        return (zzbck == null || zzbck.zzaci() == null || this.zzeni) ? false : true;
    }

    private final boolean zzabs() {
        return zzabr() && this.zzenj != 1;
    }

    private final void zzabt() {
        String str;
        if (this.zzeng == null && (str = this.zzenh) != null && this.zzblm != null) {
            if (str.startsWith("cache:")) {
                zzbdd zzfc = this.zzeix.zzfc(this.zzenh);
                if (zzfc instanceof zzbds) {
                    zzbck zzaco = ((zzbds) zzfc).zzaco();
                    this.zzeng = zzaco;
                    if (zzaco.zzaci() == null) {
                        zzazk.zzex("Precached video player has been released.");
                        return;
                    }
                } else if (zzfc instanceof zzbdp) {
                    zzbdp zzbdp = (zzbdp) zzfc;
                    String zzabq = zzabq();
                    ByteBuffer byteBuffer = zzbdp.getByteBuffer();
                    boolean zzacm = zzbdp.zzacm();
                    String url = zzbdp.getUrl();
                    if (url == null) {
                        zzazk.zzex("Stream cache URL is null.");
                        return;
                    }
                    zzbck zzabp = zzabp();
                    this.zzeng = zzabp;
                    zzabp.zza(new Uri[]{Uri.parse(url)}, zzabq, byteBuffer, zzacm);
                } else {
                    String valueOf = String.valueOf(this.zzenh);
                    zzazk.zzex(valueOf.length() != 0 ? "Stream cache miss: ".concat(valueOf) : new String("Stream cache miss: "));
                    return;
                }
            } else {
                this.zzeng = zzabp();
                String zzabq2 = zzabq();
                Uri[] uriArr = new Uri[this.zzeki.length];
                int i = 0;
                while (true) {
                    String[] strArr = this.zzeki;
                    if (i >= strArr.length) {
                        break;
                    }
                    uriArr[i] = Uri.parse(strArr[i]);
                    i++;
                }
                this.zzeng.zza(uriArr, zzabq2);
            }
            this.zzeng.zza(this);
            zza(this.zzblm, false);
            if (this.zzeng.zzaci() != null) {
                int playbackState = this.zzeng.zzaci().getPlaybackState();
                this.zzenj = playbackState;
                if (playbackState == 3) {
                    zzabu();
                }
            }
        }
    }

    private final void zzabu() {
        if (!this.zzenk) {
            this.zzenk = true;
            zzj.zzeen.post(new zzbbu(this));
            zzaaj();
            this.zzeiy.zzfb();
            if (this.zzenl) {
                play();
            }
        }
    }

    private final void zzabv() {
        zzo(this.zzeje, this.zzejf);
    }

    private final void zzabw() {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzax(true);
        }
    }

    private final void zzabx() {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzax(false);
        }
    }

    private final void zzo(int i, int i2) {
        float f = i2 > 0 ? ((float) i) / ((float) i2) : 1.0f;
        if (this.zzenm != f) {
            this.zzenm = f;
            requestLayout();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getCurrentPosition() {
        if (zzabs()) {
            return (int) this.zzeng.zzaci().zzen();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getDuration() {
        if (zzabs()) {
            return (int) this.zzeng.zzaci().getDuration();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long getTotalBytes() {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            return zzbck.getTotalBytes();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getVideoHeight() {
        return this.zzejf;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getVideoWidth() {
        return this.zzeje;
    }

    /* access modifiers changed from: protected */
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f = this.zzenm;
        if (f != 0.0f && this.zzejj == null) {
            float f2 = (float) measuredWidth;
            float f3 = f2 / ((float) measuredHeight);
            if (f > f3) {
                measuredHeight = (int) (f2 / f);
            }
            if (f < f3) {
                measuredWidth = (int) (((float) measuredHeight) * f);
            }
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzm(measuredWidth, measuredHeight);
        }
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.zzejk) {
            zzbbm zzbbm = new zzbbm(getContext());
            this.zzejj = zzbbm;
            zzbbm.zza(surfaceTexture, i, i2);
            this.zzejj.start();
            SurfaceTexture zzaax = this.zzejj.zzaax();
            if (zzaax != null) {
                surfaceTexture = zzaax;
            } else {
                this.zzejj.zzaaw();
                this.zzejj = null;
            }
        }
        Surface surface = new Surface(surfaceTexture);
        this.zzblm = surface;
        if (this.zzeng == null) {
            zzabt();
        } else {
            zza(surface, true);
            if (!this.zzenf.zzelf) {
                zzabw();
            }
        }
        if (this.zzeje == 0 || this.zzejf == 0) {
            zzo(i, i2);
        } else {
            zzabv();
        }
        zzj.zzeen.post(new zzbbx(this));
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        pause();
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzaaw();
            this.zzejj = null;
        }
        if (this.zzeng != null) {
            zzabx();
            Surface surface = this.zzblm;
            if (surface != null) {
                surface.release();
            }
            this.zzblm = null;
            zza((Surface) null, true);
        }
        zzj.zzeen.post(new zzbbz(this));
        return true;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzm(i, i2);
        }
        zzj.zzeen.post(new zzbca(this, i, i2));
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzeiy.zzc(this);
        this.zzeju.zza(surfaceTexture, this.zzejm);
    }

    /* access modifiers changed from: protected */
    public final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdExoPlayerView3 window visibility changed to ");
        sb.append(i);
        zzd.zzeb(sb.toString());
        zzj.zzeen.post(new zzbcc(this, i));
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void pause() {
        if (zzabs()) {
            if (this.zzenf.zzelf) {
                zzabx();
            }
            this.zzeng.zzaci().zzg(false);
            this.zzeiy.zzaba();
            this.zzejv.zzaba();
            zzj.zzeen.post(new zzbby(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void play() {
        if (zzabs()) {
            if (this.zzenf.zzelf) {
                zzabw();
            }
            this.zzeng.zzaci().zzg(true);
            this.zzeiy.zzaaz();
            this.zzejv.zzaaz();
            this.zzeju.zzaal();
            zzj.zzeen.post(new zzbbv(this));
            return;
        }
        this.zzenl = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void seekTo(int i) {
        if (zzabs()) {
            this.zzeng.zzaci().seekTo((long) i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void setVideoPath(String str) {
        if (str != null) {
            this.zzenh = str;
            this.zzeki = new String[]{str};
            zzabt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void stop() {
        if (zzabr()) {
            this.zzeng.zzaci().stop();
            if (this.zzeng != null) {
                zza((Surface) null, true);
                zzbck zzbck = this.zzeng;
                if (zzbck != null) {
                    zzbck.zza((zzbcu) null);
                    this.zzeng.release();
                    this.zzeng = null;
                }
                this.zzenj = 1;
                this.zzeni = false;
                this.zzenk = false;
                this.zzenl = false;
            }
        }
        this.zzeiy.zzaba();
        this.zzejv.zzaba();
        this.zzeiy.onStop();
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final String zzaad() {
        String str = this.zzejk ? " spherical" : "";
        return str.length() != 0 ? "ExoPlayer/3".concat(str) : new String("ExoPlayer/3");
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long zzaah() {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            return zzbck.zzaah();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int zzaai() {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            return zzbck.zzaai();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbbs, com.google.android.gms.internal.ads.zzbav
    public final void zzaaj() {
        zza(this.zzejv.getVolume(), false);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzaby() {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.zzaan();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzabz() {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.zzaak();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzaca() {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.onPaused();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzacb() {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.zzaal();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzacc() {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.zzaam();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzacd() {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.zzfb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzb(String str, String[] strArr) {
        if (str != null) {
            if (strArr == null) {
                setVideoPath(str);
            }
            this.zzenh = str;
            this.zzeki = (String[]) Arrays.copyOf(strArr, strArr.length);
            zzabt();
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzc(boolean z, long j) {
        this.zzeix.zza(z, j);
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdk(int i) {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzacl().zzds(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdl(int i) {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzacl().zzdt(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdm(int i) {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzacl().zzdm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdn(int i) {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzacl().zzdn(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zzdo(int i) {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzdo(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzdq(int i) {
        if (this.zzenj != i) {
            this.zzenj = i;
            if (i == 3) {
                zzabu();
            } else if (i == 4) {
                if (this.zzenf.zzelf) {
                    zzabx();
                }
                this.zzeiy.zzaba();
                this.zzejv.zzaba();
                zzj.zzeen.post(new zzbbt(this));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzdr(int i) {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.onWindowVisibilityChanged(i);
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzfd(String str) {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.zzl("ExoPlayerAdapter error", str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzn(int i, int i2) {
        this.zzeje = i;
        this.zzejf = i2;
        zzabv();
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long zznb() {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            return zzbck.zznb();
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzp(int i, int i2) {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.zzk(i, i2);
        }
    }

    private final void zza(float f, boolean z) {
        zzbck zzbck = this.zzeng;
        if (zzbck != null) {
            zzbck.zzb(f, z);
        } else {
            zzazk.zzex("Trying to set volume before player is initalized.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zzb(boolean z, long j) {
        if (this.zzeix != null) {
            zzazp.zzeig.execute(new zzbcb(this, z, j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zza(zzbaw zzbaw) {
        this.zzejm = zzbaw;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zza(float f, float f2) {
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzb(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbcu
    public final void zza(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder p = ic.p(ic.m(message, ic.m(canonicalName, ic.m(str, 2))), str, "/", canonicalName, ":");
        p.append(message);
        String sb = p.toString();
        String valueOf = String.valueOf(sb);
        zzazk.zzex(valueOf.length() != 0 ? "ExoPlayerAdapter error: ".concat(valueOf) : new String("ExoPlayerAdapter error: "));
        this.zzeni = true;
        if (this.zzenf.zzelf) {
            zzabx();
        }
        zzj.zzeen.post(new zzbbw(this, sb));
    }
}
