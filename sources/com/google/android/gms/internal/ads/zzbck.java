package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class zzbck implements zzhg, zzil, zzmz, zzpd<zzon>, zzqk {
    private static int zzeom;
    private static int zzeon;
    private int bytesTransferred;
    private final Context context;
    private int zzbls;
    private final String zzbvs;
    private final int zzbvt;
    private final zzbbl zzenf;
    private final zzbch zzeoo;
    private final zzhy zzeop;
    private final zzhy zzeoq;
    private final zzob zzeor;
    private zzhh zzeos;
    private ByteBuffer zzeot;
    private boolean zzeou;
    private final WeakReference<zzbbo> zzeov;
    private zzbcu zzeow;
    private long zzeox;
    private final ArrayList<zzot> zzeoy;
    private volatile zzbcg zzeoz;
    private Set<WeakReference<zzbce>> zzepa = new HashSet();

    public zzbck(Context context2, zzbbl zzbbl, zzbbo zzbbo) {
        this.context = context2;
        this.zzenf = zzbbl;
        this.zzeov = new WeakReference<>(zzbbo);
        zzbch zzbch = new zzbch();
        this.zzeoo = zzbch;
        zzlx zzlx = zzlx.zzbcu;
        zzdvl zzdvl = zzj.zzeen;
        zzqe zzqe = new zzqe(context2, zzlx, 0, zzdvl, this, -1);
        this.zzeop = zzqe;
        zzjc zzjc = new zzjc(zzlx, zzdvl, this);
        this.zzeoq = zzjc;
        zzoa zzoa = new zzoa();
        this.zzeor = zzoa;
        if (zzd.zzyg()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(valueOf.length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(valueOf);
            zzd.zzeb(sb.toString());
        }
        zzeom++;
        int i = 0;
        zzhh zza = zzhl.zza(new zzhy[]{zzjc, zzqe}, zzoa, zzbch);
        this.zzeos = zza;
        zza.zza(this);
        this.bytesTransferred = 0;
        this.zzeox = 0;
        this.zzbls = 0;
        this.zzeoy = new ArrayList<>();
        this.zzeoz = null;
        this.zzbvs = (zzbbo == null || zzbbo.zzabg() == null) ? "" : zzbbo.zzabg();
        this.zzbvt = zzbbo != null ? zzbbo.zzabh() : i;
    }

    private final boolean zzace() {
        return this.zzeoz != null && this.zzeoz.zzace();
    }

    public static int zzacj() {
        return zzeom;
    }

    public static int zzack() {
        return zzeon;
    }

    private static long zzk(Map<String, List<String>> map) {
        if (map == null) {
            return 0;
        }
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry != null) {
                try {
                    if (!(entry.getKey() == null || !zzdvr.zza("content-length", entry.getKey()) || entry.getValue() == null || entry.getValue().get(0) == null)) {
                        return Long.parseLong(entry.getValue().get(0));
                    }
                } catch (NumberFormatException unused) {
                    continue;
                }
            }
        }
        return 0;
    }

    public final void finalize() {
        zzeom--;
        if (zzd.zzyg()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(valueOf.length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(valueOf);
            zzd.zzeb(sb.toString());
        }
    }

    public final long getBytesTransferred() {
        return (long) this.bytesTransferred;
    }

    public final long getTotalBytes() {
        if (zzace()) {
            return this.zzeoz.getContentLength();
        }
        while (!this.zzeoy.isEmpty()) {
            this.zzeox += zzk(this.zzeoy.remove(0).getResponseHeaders());
        }
        return this.zzeox;
    }

    public final void release() {
        zzhh zzhh = this.zzeos;
        if (zzhh != null) {
            zzhh.zzb(this);
            this.zzeos.release();
            this.zzeos = null;
            zzeon--;
        }
    }

    public final void zza(zzbcu zzbcu) {
        this.zzeow = zzbcu;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzhz zzhz) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzid zzid, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zznu zznu, zzoi zzoi) {
    }

    public final long zzaah() {
        if (!zzace()) {
            return (long) this.bytesTransferred;
        }
        return 0;
    }

    public final int zzaai() {
        return this.zzbls;
    }

    public final zzhh zzaci() {
        return this.zzeos;
    }

    public final zzbch zzacl() {
        return this.zzeoo;
    }

    /* access modifiers changed from: package-private */
    public final void zzax(boolean z) {
        if (this.zzeos != null) {
            for (int i = 0; i < this.zzeos.zzem(); i++) {
                this.zzeor.zzf(i, !z);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzb(int i, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzb(Surface surface) {
    }

    @Override // com.google.android.gms.internal.ads.zzmz
    public final void zzb(IOException iOException) {
        zzbcu zzbcu = this.zzeow;
        if (zzbcu != null) {
            zzbcu.zza("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzb(String str, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzc(zzht zzht) {
        zzbbo zzbbo = this.zzeov.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() && zzbbo != null && zzht != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("audioMime", zzht.zzahd);
            hashMap.put("audioSampleMime", zzht.zzahe);
            hashMap.put("audioCodec", zzht.zzahb);
            zzbbo.zza("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzc(zzjm zzjm) {
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzd(zzjm zzjm) {
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzd(String str, long j, long j2) {
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ void zzd(boolean z, long j) {
        zzbcu zzbcu = this.zzeow;
        if (zzbcu != null) {
            zzbcu.zzb(z, j);
        }
    }

    public final void zzdo(int i) {
        for (WeakReference<zzbce> weakReference : this.zzepa) {
            zzbce zzbce = weakReference.get();
            if (zzbce != null) {
                zzbce.setReceiveBufferSize(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zze(zzjm zzjm) {
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* bridge */ /* synthetic */ void zze(zzon zzon) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzek() {
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzf(zzjm zzjm) {
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zzf(boolean z) {
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzon zzfe(String str) {
        zzbbl zzbbl = this.zzenf;
        return new zzou(str, null, zzbbl.zzelo ? null : this, zzbbl.zzeli, zzbbl.zzelk, true, null);
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzon zzff(String str) {
        zzbbl zzbbl = this.zzenf;
        zzbce zzbce = new zzbce(str, zzbbl.zzelo ? null : this, zzbbl.zzeli, zzbbl.zzelk, zzbbl.zzeln);
        this.zzepa.add(new WeakReference<>(zzbce));
        return zzbce;
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzg(int i, long j) {
        this.zzbls += i;
    }

    public final long zznb() {
        if (zzace() && this.zzeoz.zznc()) {
            return Math.min((long) this.bytesTransferred, this.zzeoz.zznb());
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzil
    public final void zzx(int i) {
    }

    public final void zza(Uri[] uriArr, String str) {
        zza(uriArr, str, ByteBuffer.allocate(0), false);
    }

    public final void zza(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzne zzne;
        if (this.zzeos != null) {
            this.zzeot = byteBuffer;
            this.zzeou = z;
            if (uriArr.length == 1) {
                zzne = zzb(uriArr[0], str);
            } else {
                zzne[] zzneArr = new zzne[uriArr.length];
                for (int i = 0; i < uriArr.length; i++) {
                    zzneArr[i] = zzb(uriArr[i], str);
                }
                zzne = new zznf(zzneArr);
            }
            this.zzeos.zza(zzne);
            zzeon++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzb(int i, int i2, int i3, float f) {
        zzbcu zzbcu = this.zzeow;
        if (zzbcu != null) {
            zzbcu.zzn(i, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zzb(float f, boolean z) {
        if (this.zzeos != null) {
            zzhi zzhi = new zzhi(this.zzeoq, 2, Float.valueOf(f));
            if (z) {
                this.zzeos.zzb(zzhi);
                return;
            }
            this.zzeos.zza(zzhi);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqk
    public final void zzk(zzht zzht) {
        zzbbo zzbbo = this.zzeov.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() && zzbbo != null && zzht != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("frameRate", String.valueOf(zzht.zzahi));
            hashMap.put("bitRate", String.valueOf(zzht.zzaha));
            int i = zzht.width;
            int i2 = zzht.height;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            hashMap.put("resolution", sb.toString());
            hashMap.put("videoMime", zzht.zzahd);
            hashMap.put("videoSampleMime", zzht.zzahe);
            hashMap.put("videoCodec", zzht.zzahb);
            zzbbo.zza("onMetadataEvent", hashMap);
        }
    }

    private final zzne zzb(Uri uri, String str) {
        zzoq zzoq;
        zzkb zzkb;
        if (!this.zzeou || this.zzeot.limit() <= 0) {
            if (this.zzenf.zzeln > 0) {
                zzoq = new zzbcl(this, str);
            } else {
                zzoq = new zzbco(this, str);
            }
            if (this.zzenf.zzelo) {
                zzoq = new zzbcn(this, zzoq);
            }
            if (this.zzeot.limit() > 0) {
                byte[] bArr = new byte[this.zzeot.limit()];
                this.zzeot.get(bArr);
                zzoq = new zzbcq(zzoq, bArr);
            }
        } else {
            byte[] bArr2 = new byte[this.zzeot.limit()];
            this.zzeot.get(bArr2);
            zzoq = new zzbcm(bArr2);
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcmw)).booleanValue()) {
            zzkb = zzbcp.zzepd;
        } else {
            zzkb = zzbcs.zzepd;
        }
        zzbbl zzbbl = this.zzenf;
        return new zzna(uri, zzoq, zzkb, zzbbl.zzelp, zzj.zzeen, this, null, zzbbl.zzell);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, int] */
    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* synthetic */ void zzc(zzon zzon, int i) {
        this.bytesTransferred += i;
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(boolean z, int i) {
        zzbcu zzbcu = this.zzeow;
        if (zzbcu != null) {
            zzbcu.zzdq(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public final void zza(zzhe zzhe) {
        zzbcu zzbcu = this.zzeow;
        if (zzbcu != null) {
            zzbcu.zza("onPlayerError", zzhe);
        }
    }

    /* access modifiers changed from: package-private */
    public final void zza(Surface surface, boolean z) {
        if (this.zzeos != null) {
            zzhi zzhi = new zzhi(this.zzeop, 1, surface);
            if (z) {
                this.zzeos.zzb(zzhi);
                return;
            }
            this.zzeos.zza(zzhi);
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, com.google.android.gms.internal.ads.zzos] */
    @Override // com.google.android.gms.internal.ads.zzpd
    public final /* synthetic */ void zza(zzon zzon, zzos zzos) {
        zzon zzon2 = zzon;
        if (zzon2 instanceof zzot) {
            this.zzeoy.add((zzot) zzon2);
        } else if (zzon2 instanceof zzbcg) {
            this.zzeoz = (zzbcg) zzon2;
            zzbbo zzbbo = this.zzeov.get();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue() && zzbbo != null && this.zzeoz.zzmz()) {
                HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.zzeoz.zznc()));
                hashMap.put("gcacheDownloaded", String.valueOf(this.zzeoz.zzacf()));
                zzj.zzeen.post(new zzbcj(zzbbo, hashMap));
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ zzon zza(zzoq zzoq) {
        return new zzbcg(this.context, zzoq.zzip(), this.zzbvs, this.zzbvt, this, new zzbcr(this));
    }
}
