package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import javax.annotation.Nullable;

/* access modifiers changed from: package-private */
/* renamed from: ok0  reason: default package */
public final class ok0 {
    @Nullable
    static nk0 a;
    static long b;

    private ok0() {
    }

    static void a(nk0 nk0) {
        if (nk0.f != null || nk0.g != null) {
            throw new IllegalArgumentException();
        } else if (!nk0.d) {
            synchronized (ok0.class) {
                long j = b + PlaybackStateCompat.ACTION_PLAY_FROM_URI;
                if (j <= PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
                    b = j;
                    nk0.f = a;
                    nk0.c = 0;
                    nk0.b = 0;
                    a = nk0;
                }
            }
        }
    }

    static nk0 b() {
        synchronized (ok0.class) {
            nk0 nk0 = a;
            if (nk0 == null) {
                return new nk0();
            }
            a = nk0.f;
            nk0.f = null;
            b -= PlaybackStateCompat.ACTION_PLAY_FROM_URI;
            return nk0;
        }
    }
}
