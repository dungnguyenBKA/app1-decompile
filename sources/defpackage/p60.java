package defpackage;

import java.io.IOException;
import java.io.StringWriter;

/* renamed from: p60  reason: default package */
public abstract class p60 {
    public boolean a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public double b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public float c() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int d() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public s60 e() {
        if (this instanceof s60) {
            return (s60) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + this);
    }

    public u60 f() {
        if (this instanceof u60) {
            return (u60) this;
        }
        throw new IllegalStateException("Not a JSON Primitive: " + this);
    }

    public long g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String h() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            c90 c90 = new c90(stringWriter);
            c90.t0(true);
            s80.X.c(c90, this);
            return stringWriter.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
