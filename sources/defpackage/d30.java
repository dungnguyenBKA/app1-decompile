package defpackage;

/* access modifiers changed from: package-private */
/* renamed from: d30  reason: default package */
public final /* synthetic */ class d30 implements cs {
    private final lw a;
    private final l00 b;

    private d30(lw lwVar, l00 l00) {
        this.a = lwVar;
        this.b = l00;
    }

    public static cs b(lw lwVar, l00 l00) {
        return new d30(lwVar, l00);
    }

    @Override // defpackage.cs
    public void a(Exception exc) {
        lw lwVar = this.a;
        l00 l00 = this.b;
        int i = f30.f;
        if (exc != null) {
            lwVar.d(exc);
        } else {
            lwVar.e(l00);
        }
    }
}
