package defpackage;

/* renamed from: m40  reason: default package */
final /* synthetic */ class m40 implements g40 {
    private static final m40 a = new m40();

    private m40() {
    }

    public static g40 b() {
        return a;
    }

    @Override // defpackage.g40
    public void a(Object obj, Object obj2) {
        h40 h40 = (h40) obj2;
        int i = p40.i;
        StringBuilder q = ic.q("Couldn't find encoder for type ");
        q.append(obj.getClass().getCanonicalName());
        throw new e40(q.toString());
    }
}
