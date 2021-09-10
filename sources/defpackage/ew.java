package defpackage;

/* renamed from: ew  reason: default package */
public final class ew extends IllegalStateException {
    private ew(String str, Throwable th) {
        super(str, th);
    }

    public static IllegalStateException a(kw<?> kwVar) {
        String str;
        if (!kwVar.l()) {
            return new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
        }
        Exception i = kwVar.i();
        if (i != null) {
            str = "failure";
        } else if (kwVar.m()) {
            String valueOf = String.valueOf(kwVar.j());
            str = ic.d(valueOf.length() + 7, "result ", valueOf);
        } else {
            str = kwVar.k() ? "cancellation" : "unknown issue";
        }
        String valueOf2 = String.valueOf(str);
        return new ew(valueOf2.length() != 0 ? "Complete with: ".concat(valueOf2) : new String("Complete with: "), i);
    }
}
