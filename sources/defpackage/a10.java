package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: a10  reason: default package */
public final /* synthetic */ class a10 implements dw {
    private final c10 a;

    private a10(c10 c10) {
        this.a = c10;
    }

    public static dw a(c10 c10) {
        return new a10(c10);
    }

    @Override // defpackage.dw
    public Object then(kw kwVar) {
        return Boolean.valueOf(c10.a(this.a, kwVar));
    }
}
