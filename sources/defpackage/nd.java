package defpackage;

/* renamed from: nd  reason: default package */
final class nd extends RuntimeException {
    nd(Throwable th) {
        super("Unexpected exception thrown by non-Glide code", th);
    }
}
