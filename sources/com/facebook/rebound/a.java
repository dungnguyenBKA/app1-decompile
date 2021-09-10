package com.facebook.rebound;

import android.annotation.TargetApi;
import android.os.SystemClock;
import android.view.Choreographer;
import com.vungle.warren.error.VungleException;

/* access modifiers changed from: package-private */
@TargetApi(VungleException.NO_SPACE_TO_INIT)
public class a extends f {
    private final Choreographer b;
    private final Choreographer.FrameCallback c = new Choreographer$FrameCallbackC0040a();
    private boolean d;
    private long e;

    /* renamed from: com.facebook.rebound.a$a  reason: collision with other inner class name */
    class Choreographer$FrameCallbackC0040a implements Choreographer.FrameCallback {
        Choreographer$FrameCallbackC0040a() {
        }

        public void doFrame(long j) {
            if (a.this.d && a.this.a != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                a aVar = a.this;
                aVar.a.d((double) (uptimeMillis - aVar.e));
                a.this.e = uptimeMillis;
                a.this.b.postFrameCallback(a.this.c);
            }
        }
    }

    public a(Choreographer choreographer) {
        this.b = choreographer;
    }

    @Override // com.facebook.rebound.f
    public void a() {
        if (!this.d) {
            this.d = true;
            this.e = SystemClock.uptimeMillis();
            this.b.removeFrameCallback(this.c);
            this.b.postFrameCallback(this.c);
        }
    }

    @Override // com.facebook.rebound.f
    public void b() {
        this.d = false;
        this.b.removeFrameCallback(this.c);
    }
}
