package defpackage;

import android.util.Log;
import com.bumptech.glide.load.g;
import defpackage.af;
import defpackage.jc;
import java.io.File;
import java.io.IOException;

/* renamed from: ef  reason: default package */
public class ef implements af {
    private final kf a;
    private final File b;
    private final long c;
    private final cf d = new cf();
    private jc e;

    @Deprecated
    protected ef(File file, long j) {
        this.b = file;
        this.c = j;
        this.a = new kf();
    }

    private synchronized jc c() {
        if (this.e == null) {
            this.e = jc.r0(this.b, 1, 1, this.c);
        }
        return this.e;
    }

    @Override // defpackage.af
    public void a(g gVar, af.b bVar) {
        String a2 = this.a.a(gVar);
        this.d.a(a2);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                String str = "Put: Obtained: " + a2 + " for for Key: " + gVar;
            }
            try {
                jc c2 = c();
                if (c2.p0(a2) == null) {
                    jc.c n0 = c2.n0(a2);
                    if (n0 != null) {
                        try {
                            if (bVar.a(n0.f(0))) {
                                n0.e();
                            }
                        } finally {
                            n0.b();
                        }
                    } else {
                        throw new IllegalStateException("Had two simultaneous puts for: " + a2);
                    }
                }
            } catch (IOException e2) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e2);
                }
            }
        } finally {
            this.d.b(a2);
        }
    }

    @Override // defpackage.af
    public File b(g gVar) {
        String a2 = this.a.a(gVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            String str = "Get: Obtained: " + a2 + " for for Key: " + gVar;
        }
        try {
            jc.e p0 = c().p0(a2);
            if (p0 != null) {
                return p0.a(0);
            }
            return null;
        } catch (IOException e2) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e2);
            return null;
        }
    }
}
