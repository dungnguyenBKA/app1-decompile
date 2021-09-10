package defpackage;

import java.io.IOException;

/* renamed from: fj0  reason: default package */
public final class fj0 extends IOException {
    public final qi0 b;

    public fj0(qi0 qi0) {
        super("stream was reset: " + qi0);
        this.b = qi0;
    }
}
