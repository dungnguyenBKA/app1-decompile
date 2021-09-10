package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzr;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;

public final class zzbcg implements zzon {
    private final Context context;
    private boolean isOpen;
    private Uri uri;
    private boolean zzbvh = false;
    private long zzbvj = 0;
    private boolean zzbvk = false;
    private final String zzbvs;
    private final int zzbvt;
    private final zzpd<zzon> zzenv;
    private final zzon zzenw;
    private final zzbci zzenx;
    private final boolean zzeny = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue();
    private InputStream zzenz;
    private volatile zzth zzeoa;
    private boolean zzeob = false;
    private boolean zzeoc = false;
    private zzdzw<Long> zzeod = null;
    private final AtomicLong zzeoe = new AtomicLong(-1);

    public zzbcg(Context context2, zzon zzon, String str, int i, zzpd<zzon> zzpd, zzbci zzbci) {
        this.context = context2;
        this.zzenw = zzon;
        this.zzenv = zzpd;
        this.zzenx = zzbci;
        this.zzbvs = str;
        this.zzbvt = i;
    }

    private final boolean zzacg() {
        if (!this.zzeny) {
            return false;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcuk)).booleanValue() && !this.zzbvk) {
            return true;
        }
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcul)).booleanValue() || this.zzeoc) {
            return false;
        }
        return true;
    }

    private final void zzb(zzos zzos) {
        zzpd<zzon> zzpd = this.zzenv;
        if (zzpd != null) {
            zzpd.zza(this, zzos);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final void close() {
        zzpd<zzon> zzpd;
        if (this.isOpen) {
            boolean z = false;
            this.isOpen = false;
            this.uri = null;
            if (!this.zzeny || this.zzenz != null) {
                z = true;
            }
            InputStream inputStream = this.zzenz;
            if (inputStream != null) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                this.zzenz = null;
            } else {
                this.zzenw.close();
            }
            if (z && (zzpd = this.zzenv) != null) {
                zzpd.zze(this);
                return;
            }
            return;
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    public final long getContentLength() {
        if (this.zzeoa == null) {
            return -1;
        }
        if (this.zzeoe.get() != -1) {
            return this.zzeoe.get();
        }
        synchronized (this) {
            if (this.zzeod == null) {
                this.zzeod = zzazp.zzeic.zze(new zzbcf(this));
            }
        }
        if (!this.zzeod.isDone()) {
            return -1;
        }
        try {
            this.zzeoe.compareAndSet(-1, this.zzeod.get().longValue());
            return this.zzeoe.get();
        } catch (InterruptedException | ExecutionException unused) {
            return -1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.gms.internal.ads.zzon
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        zzpd<zzon> zzpd;
        if (this.isOpen) {
            InputStream inputStream = this.zzenz;
            if (inputStream != null) {
                i3 = inputStream.read(bArr, i, i2);
            } else {
                i3 = this.zzenw.read(bArr, i, i2);
            }
            if ((!this.zzeny || this.zzenz != null) && (zzpd = this.zzenv) != null) {
                zzpd.zzc(this, i3);
            }
            return i3;
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:58:0x01f4  */
    @Override // com.google.android.gms.internal.ads.zzon
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long zza(com.google.android.gms.internal.ads.zzos r15) {
        /*
        // Method dump skipped, instructions count: 542
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcg.zza(com.google.android.gms.internal.ads.zzos):long");
    }

    public final boolean zzace() {
        return this.zzeob;
    }

    public final boolean zzacf() {
        return this.zzeoc;
    }

    /* access modifiers changed from: package-private */
    public final /* synthetic */ Long zzach() {
        return Long.valueOf(zzr.zzkx().zzb(this.zzeoa));
    }

    public final boolean zzmz() {
        return this.zzbvh;
    }

    public final long zznb() {
        return this.zzbvj;
    }

    public final boolean zznc() {
        return this.zzbvk;
    }
}
