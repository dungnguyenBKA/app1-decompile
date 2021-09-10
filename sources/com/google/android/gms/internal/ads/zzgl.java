package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.apache.http.protocol.HTTP;

public class zzgl {
    private static final String TAG = "zzgl";
    private final String className;
    private final String zzabj;
    private final int zzabk = 2;
    private volatile Method zzabl = null;
    private final Class<?>[] zzabm;
    private CountDownLatch zzabn = new CountDownLatch(1);
    private final zzfc zzwc;

    public zzgl(zzfc zzfc, String str, String str2, Class<?>... clsArr) {
        this.zzwc = zzfc;
        this.className = str;
        this.zzabj = str2;
        this.zzabm = clsArr;
        zzfc.zzcg().submit(new zzgo(this));
    }

    private final String zzb(byte[] bArr, String str) {
        return new String(this.zzwc.zzci().zza(bArr, str), HTTP.UTF_8);
    }

    /* access modifiers changed from: private */
    public final void zzda() {
        try {
            Class loadClass = this.zzwc.zzch().loadClass(zzb(this.zzwc.zzcj(), this.className));
            if (loadClass != null) {
                this.zzabl = loadClass.getMethod(zzb(this.zzwc.zzcj(), this.zzabj), this.zzabm);
                if (this.zzabl == null) {
                    this.zzabn.countDown();
                } else {
                    this.zzabn.countDown();
                }
            }
        } catch (zzej unused) {
        } catch (UnsupportedEncodingException unused2) {
        } catch (ClassNotFoundException unused3) {
        } catch (NoSuchMethodException unused4) {
        } catch (NullPointerException unused5) {
        } finally {
            this.zzabn.countDown();
        }
    }

    public final Method zzdb() {
        if (this.zzabl != null) {
            return this.zzabl;
        }
        try {
            if (!this.zzabn.await(2, TimeUnit.SECONDS)) {
                return null;
            }
            return this.zzabl;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
