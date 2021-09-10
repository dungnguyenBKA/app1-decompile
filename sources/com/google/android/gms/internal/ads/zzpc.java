package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzpb;
import java.io.IOException;

/* access modifiers changed from: package-private */
@SuppressLint({"HandlerLeak"})
public final class zzpc<T extends zzpb> extends Handler implements Runnable {
    private volatile boolean zzafw;
    private final T zzbjl;
    private final zzoz<T> zzbjm;
    public final int zzbjn;
    private final long zzbjo;
    private IOException zzbjp;
    private int zzbjq;
    private volatile Thread zzbjr;
    private final /* synthetic */ zzpa zzbjs;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public zzpc(zzpa zzpa, Looper looper, T t, zzoz<T> zzoz, int i, long j) {
        super(looper);
        this.zzbjs = zzpa;
        this.zzbjl = t;
        this.zzbjm = zzoz;
        this.zzbjn = i;
        this.zzbjo = j;
    }

    private final void execute() {
        this.zzbjp = null;
        this.zzbjs.zzbji.execute(this.zzbjs.zzbjj);
    }

    private final void finish() {
        this.zzbjs.zzbjj = null;
    }

    public final void handleMessage(Message message) {
        int i;
        if (!this.zzafw) {
            int i2 = message.what;
            if (i2 == 0) {
                execute();
            } else if (i2 != 4) {
                finish();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j = elapsedRealtime - this.zzbjo;
                if (this.zzbjl.zzhx()) {
                    this.zzbjm.zza((zzpb) this.zzbjl, elapsedRealtime, j, false);
                    return;
                }
                int i3 = message.what;
                if (i3 == 1) {
                    this.zzbjm.zza((zzpb) this.zzbjl, elapsedRealtime, j, false);
                } else if (i3 == 2) {
                    this.zzbjm.zza(this.zzbjl, elapsedRealtime, j);
                } else if (i3 == 3) {
                    IOException iOException = (IOException) message.obj;
                    this.zzbjp = iOException;
                    int zza = this.zzbjm.zza(this.zzbjl, elapsedRealtime, j, iOException);
                    if (zza == 3) {
                        this.zzbjs.zzbjk = this.zzbjp;
                    } else if (zza != 2) {
                        if (zza == 1) {
                            i = 1;
                        } else {
                            i = this.zzbjq + 1;
                        }
                        this.zzbjq = i;
                        zzek((long) Math.min((i - 1) * AdError.NETWORK_ERROR_CODE, 5000));
                    }
                }
            } else {
                throw ((Error) message.obj);
            }
        }
    }

    public final void run() {
        try {
            this.zzbjr = Thread.currentThread();
            if (!this.zzbjl.zzhx()) {
                String simpleName = this.zzbjl.getClass().getSimpleName();
                zzpu.beginSection(simpleName.length() != 0 ? "load:".concat(simpleName) : new String("load:"));
                try {
                    this.zzbjl.zzhy();
                } finally {
                    zzpu.endSection();
                }
            }
            if (!this.zzafw) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            if (!this.zzafw) {
                obtainMessage(3, e).sendToTarget();
            }
        } catch (InterruptedException unused) {
            zzpg.checkState(this.zzbjl.zzhx());
            if (!this.zzafw) {
                sendEmptyMessage(2);
            }
        } catch (Exception e2) {
            Log.e("LoadTask", "Unexpected exception loading stream", e2);
            if (!this.zzafw) {
                obtainMessage(3, new zzpe(e2)).sendToTarget();
            }
        } catch (OutOfMemoryError e3) {
            Log.e("LoadTask", "OutOfMemory error loading stream", e3);
            if (!this.zzafw) {
                obtainMessage(3, new zzpe(e3)).sendToTarget();
            }
        } catch (Error e4) {
            Log.e("LoadTask", "Unexpected error loading stream", e4);
            if (!this.zzafw) {
                obtainMessage(4, e4).sendToTarget();
            }
            throw e4;
        }
    }

    public final void zzbg(int i) {
        IOException iOException = this.zzbjp;
        if (iOException != null && this.zzbjq > i) {
            throw iOException;
        }
    }

    public final void zzek(long j) {
        zzpg.checkState(this.zzbjs.zzbjj == null);
        this.zzbjs.zzbjj = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            execute();
        }
    }

    public final void zzl(boolean z) {
        this.zzafw = z;
        this.zzbjp = null;
        if (hasMessages(0)) {
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            this.zzbjl.cancelLoad();
            if (this.zzbjr != null) {
                this.zzbjr.interrupt();
            }
        }
        if (z) {
            finish();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.zzbjm.zza((zzpb) this.zzbjl, elapsedRealtime, elapsedRealtime - this.zzbjo, true);
        }
    }
}
