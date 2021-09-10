package defpackage;

/* renamed from: a50  reason: default package */
public interface a50 {

    /* renamed from: a50$a */
    public enum a {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);
        
        private final int b;

        private a(int i) {
            this.b = i;
        }

        public int a() {
            return this.b;
        }
    }

    a a(String str);
}
