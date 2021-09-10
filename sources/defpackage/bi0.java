package defpackage;

import java.io.IOException;

/* renamed from: bi0  reason: default package */
public final class bi0 extends RuntimeException {
    private IOException b;
    private IOException c;

    public bi0(IOException iOException) {
        super(iOException);
        this.b = iOException;
        this.c = iOException;
    }

    public void a(IOException iOException) {
        rh0.a(this.b, iOException);
        this.c = iOException;
    }

    public IOException b() {
        return this.b;
    }

    public IOException c() {
        return this.c;
    }
}
