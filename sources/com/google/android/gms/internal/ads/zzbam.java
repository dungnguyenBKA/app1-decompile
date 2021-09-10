package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.vungle.warren.error.VungleException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@TargetApi(VungleException.SERVER_RETRY_ERROR)
public final class zzbam extends zzbav implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {
    private static final Map<Integer, String> zzeiw;
    private final zzbbo zzeix;
    private final zzbbn zzeiy;
    private final boolean zzeiz;
    private int zzeja = 0;
    private int zzejb = 0;
    private MediaPlayer zzejc;
    private Uri zzejd;
    private int zzeje;
    private int zzejf;
    private int zzejg;
    private int zzejh;
    private int zzeji;
    private zzbbm zzejj;
    private boolean zzejk;
    private int zzejl;
    private zzbaw zzejm;
    private Integer zzejn = null;

    static {
        HashMap hashMap = new HashMap();
        zzeiw = hashMap;
        hashMap.put(-1004, "MEDIA_ERROR_IO");
        hashMap.put(-1007, "MEDIA_ERROR_MALFORMED");
        hashMap.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
        hashMap.put(-110, "MEDIA_ERROR_TIMED_OUT");
        hashMap.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        hashMap.put(100, "MEDIA_ERROR_SERVER_DIED");
        hashMap.put(1, "MEDIA_ERROR_UNKNOWN");
        hashMap.put(1, "MEDIA_INFO_UNKNOWN");
        hashMap.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        hashMap.put(701, "MEDIA_INFO_BUFFERING_START");
        hashMap.put(702, "MEDIA_INFO_BUFFERING_END");
        hashMap.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        hashMap.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(802, "MEDIA_INFO_METADATA_UPDATE");
        hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzbam(Context context, zzbbo zzbbo, boolean z, boolean z2, zzbbl zzbbl, zzbbn zzbbn) {
        super(context);
        setSurfaceTextureListener(this);
        this.zzeix = zzbbo;
        this.zzeiy = zzbbn;
        this.zzejk = z;
        this.zzeiz = z2;
        zzbbn.zzb(this);
    }

    private final void zzaae() {
        zzd.zzeb("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzejd != null && surfaceTexture != null) {
            zzau(false);
            try {
                zzr.zzlh();
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.zzejc = mediaPlayer;
                mediaPlayer.setOnBufferingUpdateListener(this);
                this.zzejc.setOnCompletionListener(this);
                this.zzejc.setOnErrorListener(this);
                this.zzejc.setOnInfoListener(this);
                this.zzejc.setOnPreparedListener(this);
                this.zzejc.setOnVideoSizeChangedListener(this);
                this.zzejg = 0;
                if (this.zzejk) {
                    zzbbm zzbbm = new zzbbm(getContext());
                    this.zzejj = zzbbm;
                    zzbbm.zza(surfaceTexture, getWidth(), getHeight());
                    this.zzejj.start();
                    SurfaceTexture zzaax = this.zzejj.zzaax();
                    if (zzaax != null) {
                        surfaceTexture = zzaax;
                    } else {
                        this.zzejj.zzaaw();
                        this.zzejj = null;
                    }
                }
                this.zzejc.setDataSource(getContext(), this.zzejd);
                zzr.zzli();
                this.zzejc.setSurface(new Surface(surfaceTexture));
                this.zzejc.setAudioStreamType(3);
                this.zzejc.setScreenOnWhilePlaying(true);
                this.zzejc.prepareAsync();
                zzdi(1);
            } catch (IOException | IllegalArgumentException | IllegalStateException e) {
                String valueOf = String.valueOf(this.zzejd);
                StringBuilder sb = new StringBuilder(valueOf.length() + 36);
                sb.append("Failed to initialize MediaPlayer at ");
                sb.append(valueOf);
                zzazk.zzd(sb.toString(), e);
                onError(this.zzejc, 1, 0);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x003a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzaaf() {
        /*
            r8 = this;
            boolean r0 = r8.zzeiz
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            boolean r0 = r8.zzaag()
            if (r0 == 0) goto L_0x0059
            android.media.MediaPlayer r0 = r8.zzejc
            int r0 = r0.getCurrentPosition()
            if (r0 <= 0) goto L_0x0059
            int r0 = r8.zzejb
            r1 = 3
            if (r0 == r1) goto L_0x0059
            java.lang.String r0 = "AdMediaPlayerView nudging MediaPlayer"
            com.google.android.gms.ads.internal.util.zzd.zzeb(r0)
            r0 = 0
            r8.zzd(r0)
            android.media.MediaPlayer r0 = r8.zzejc
            r0.start()
            android.media.MediaPlayer r0 = r8.zzejc
            int r0 = r0.getCurrentPosition()
            com.google.android.gms.common.util.d r1 = com.google.android.gms.ads.internal.zzr.zzky()
            long r1 = r1.a()
        L_0x0034:
            boolean r3 = r8.zzaag()
            if (r3 == 0) goto L_0x0051
            android.media.MediaPlayer r3 = r8.zzejc
            int r3 = r3.getCurrentPosition()
            if (r3 != r0) goto L_0x0051
            com.google.android.gms.common.util.d r3 = com.google.android.gms.ads.internal.zzr.zzky()
            long r3 = r3.a()
            long r3 = r3 - r1
            r5 = 250(0xfa, double:1.235E-321)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L_0x0034
        L_0x0051:
            android.media.MediaPlayer r0 = r8.zzejc
            r0.pause()
            r8.zzaaj()
        L_0x0059:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbam.zzaaf():void");
    }

    private final boolean zzaag() {
        int i;
        return (this.zzejc == null || (i = this.zzeja) == -1 || i == 0 || i == 1) ? false : true;
    }

    private final void zzau(boolean z) {
        zzd.zzeb("AdMediaPlayerView release");
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzaaw();
            this.zzejj = null;
        }
        MediaPlayer mediaPlayer = this.zzejc;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.zzejc.release();
            this.zzejc = null;
            zzdi(0);
            if (z) {
                this.zzejb = 0;
                this.zzejb = 0;
            }
        }
    }

    private final void zzd(float f) {
        MediaPlayer mediaPlayer = this.zzejc;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f, f);
            } catch (IllegalStateException unused) {
            }
        } else {
            zzazk.zzex("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        }
    }

    private final void zzdi(int i) {
        if (i == 3) {
            this.zzeiy.zzaaz();
            this.zzejv.zzaaz();
        } else if (this.zzeja == 3) {
            this.zzeiy.zzaba();
            this.zzejv.zzaba();
        }
        this.zzeja = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getCurrentPosition() {
        if (zzaag()) {
            return this.zzejc.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getDuration() {
        if (zzaag()) {
            return this.zzejc.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long getTotalBytes() {
        if (this.zzejn != null) {
            return ((long) getDuration()) * ((long) this.zzejn.intValue());
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getVideoHeight() {
        MediaPlayer mediaPlayer = this.zzejc;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int getVideoWidth() {
        MediaPlayer mediaPlayer = this.zzejc;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.zzejg = i;
    }

    public final void onCompletion(MediaPlayer mediaPlayer) {
        zzd.zzeb("AdMediaPlayerView completion");
        zzdi(5);
        this.zzejb = 5;
        zzj.zzeen.post(new zzban(this));
    }

    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = zzeiw;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 38);
        sb.append("AdMediaPlayerView MediaPlayer error: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzazk.zzex(sb.toString());
        zzdi(-1);
        this.zzejb = -1;
        zzj.zzeen.post(new zzbaq(this, str, str2));
        return true;
    }

    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Map<Integer, String> map = zzeiw;
        String str = map.get(Integer.valueOf(i));
        String str2 = map.get(Integer.valueOf(i2));
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + String.valueOf(str).length() + 37);
        sb.append("AdMediaPlayerView MediaPlayer info: ");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        zzd.zzeb(sb.toString());
        return true;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0065, code lost:
        if (r1 > r6) goto L_0x0067;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onMeasure(int r6, int r7) {
        /*
        // Method dump skipped, instructions count: 142
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbam.onMeasure(int, int):void");
    }

    public final void onPrepared(MediaPlayer mediaPlayer) {
        zzd.zzeb("AdMediaPlayerView prepared");
        zzdi(2);
        this.zzeiy.zzfb();
        zzj.zzeen.post(new zzbao(this, mediaPlayer));
        this.zzeje = mediaPlayer.getVideoWidth();
        this.zzejf = mediaPlayer.getVideoHeight();
        int i = this.zzejl;
        if (i != 0) {
            seekTo(i);
        }
        zzaaf();
        int i2 = this.zzeje;
        int i3 = this.zzejf;
        StringBuilder sb = new StringBuilder(62);
        sb.append("AdMediaPlayerView stream dimensions: ");
        sb.append(i2);
        sb.append(" x ");
        sb.append(i3);
        zzazk.zzew(sb.toString());
        if (this.zzejb == 3) {
            play();
        }
        zzaaj();
    }

    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zzd.zzeb("AdMediaPlayerView surface created");
        zzaae();
        zzj.zzeen.post(new zzbap(this));
    }

    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        zzd.zzeb("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.zzejc;
        if (mediaPlayer != null && this.zzejl == 0) {
            this.zzejl = mediaPlayer.getCurrentPosition();
        }
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzaaw();
        }
        zzj.zzeen.post(new zzbar(this));
        zzau(true);
        return true;
    }

    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        zzd.zzeb("AdMediaPlayerView surface changed");
        boolean z = true;
        boolean z2 = this.zzejb == 3;
        if (!(this.zzeje == i && this.zzejf == i2)) {
            z = false;
        }
        if (this.zzejc != null && z2 && z) {
            int i3 = this.zzejl;
            if (i3 != 0) {
                seekTo(i3);
            }
            play();
        }
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzm(i, i2);
        }
        zzj.zzeen.post(new zzbas(this, i, i2));
    }

    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zzeiy.zzc(this);
        this.zzeju.zza(surfaceTexture, this.zzejm);
    }

    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(57);
        sb.append("AdMediaPlayerView size changed: ");
        sb.append(i);
        sb.append(" x ");
        sb.append(i2);
        zzd.zzeb(sb.toString());
        this.zzeje = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.zzejf = videoHeight;
        if (this.zzeje != 0 && videoHeight != 0) {
            requestLayout();
        }
    }

    /* access modifiers changed from: protected */
    public final void onWindowVisibilityChanged(int i) {
        StringBuilder sb = new StringBuilder(58);
        sb.append("AdMediaPlayerView window visibility changed to ");
        sb.append(i);
        zzd.zzeb(sb.toString());
        zzj.zzeen.post(new zzbal(this, i));
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void pause() {
        zzd.zzeb("AdMediaPlayerView pause");
        if (zzaag() && this.zzejc.isPlaying()) {
            this.zzejc.pause();
            zzdi(4);
            zzj.zzeen.post(new zzbat(this));
        }
        this.zzejb = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void play() {
        zzd.zzeb("AdMediaPlayerView play");
        if (zzaag()) {
            this.zzejc.start();
            zzdi(3);
            this.zzeju.zzaal();
            zzj.zzeen.post(new zzbau(this));
        }
        this.zzejb = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void seekTo(int i) {
        StringBuilder sb = new StringBuilder(34);
        sb.append("AdMediaPlayerView seek ");
        sb.append(i);
        zzd.zzeb(sb.toString());
        if (zzaag()) {
            this.zzejc.seekTo(i);
            this.zzejl = 0;
            return;
        }
        this.zzejl = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void setVideoPath(String str) {
        Uri parse = Uri.parse(str);
        zzth zzd = zzth.zzd(parse);
        if (zzd == null || zzd.url != null) {
            if (zzd != null) {
                parse = Uri.parse(zzd.url);
            }
            this.zzejd = parse;
            this.zzejl = 0;
            zzaae();
            requestLayout();
            invalidate();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void stop() {
        zzd.zzeb("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.zzejc;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.zzejc.release();
            this.zzejc = null;
            zzdi(0);
            this.zzejb = 0;
        }
        this.zzeiy.onStop();
    }

    public final String toString() {
        String name = zzbam.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return ic.e(ic.m(hexString, name.length() + 1), name, "@", hexString);
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zza(zzbaw zzbaw) {
        this.zzejm = zzbaw;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final String zzaad() {
        String str = this.zzejk ? " spherical" : "";
        return str.length() != 0 ? "MediaPlayer".concat(str) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long zzaah() {
        if (this.zzejn != null) {
            return (getTotalBytes() * ((long) this.zzejg)) / 100;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final int zzaai() {
        if (Build.VERSION.SDK_INT < 26 || !zzaag()) {
            return -1;
        }
        return this.zzejc.getMetrics().getInt("android.media.mediaplayer.dropped");
    }

    @Override // com.google.android.gms.internal.ads.zzbav, com.google.android.gms.internal.ads.zzbbs
    public final void zzaaj() {
        zzd(this.zzejv.getVolume());
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzdj(int i) {
        zzbaw zzbaw = this.zzejm;
        if (zzbaw != null) {
            zzbaw.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final long zznb() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbav
    public final void zza(float f, float f2) {
        zzbbm zzbbm = this.zzejj;
        if (zzbbm != null) {
            zzbbm.zzb(f, f2);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private final void zza(MediaPlayer mediaPlayer) {
        MediaPlayer.TrackInfo[] trackInfo;
        MediaFormat format;
        if (!(!((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() || this.zzeix == null || mediaPlayer == null || (trackInfo = mediaPlayer.getTrackInfo()) == null)) {
            HashMap hashMap = new HashMap();
            for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
                if (trackInfo2 != null) {
                    int trackType = trackInfo2.getTrackType();
                    if (trackType == 1) {
                        MediaFormat format2 = trackInfo2.getFormat();
                        if (format2 != null) {
                            if (format2.containsKey("frame-rate")) {
                                try {
                                    hashMap.put("frameRate", String.valueOf(format2.getFloat("frame-rate")));
                                } catch (ClassCastException unused) {
                                    hashMap.put("frameRate", String.valueOf(format2.getInteger("frame-rate")));
                                }
                            }
                            if (format2.containsKey("bitrate")) {
                                Integer valueOf = Integer.valueOf(format2.getInteger("bitrate"));
                                this.zzejn = valueOf;
                                hashMap.put("bitRate", String.valueOf(valueOf));
                            }
                            if (format2.containsKey("width") && format2.containsKey("height")) {
                                int integer = format2.getInteger("width");
                                int integer2 = format2.getInteger("height");
                                StringBuilder sb = new StringBuilder(23);
                                sb.append(integer);
                                sb.append("x");
                                sb.append(integer2);
                                hashMap.put("resolution", sb.toString());
                            }
                            if (format2.containsKey("mime")) {
                                hashMap.put("videoMime", format2.getString("mime"));
                            }
                            if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                                hashMap.put("videoCodec", format2.getString("codecs-string"));
                            }
                        }
                    } else if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                        if (format.containsKey("mime")) {
                            hashMap.put("audioMime", format.getString("mime"));
                        }
                        if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                            hashMap.put("audioCodec", format.getString("codecs-string"));
                        }
                    }
                }
            }
            if (!hashMap.isEmpty()) {
                this.zzeix.zza("onMetadataEvent", hashMap);
            }
        }
    }
}
