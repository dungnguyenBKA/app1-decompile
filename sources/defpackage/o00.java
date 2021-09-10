package defpackage;

/* renamed from: o00  reason: default package */
public enum o00 {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    
    private final int b;

    private o00(int i) {
        this.b = i;
    }

    public int a() {
        return this.b;
    }

    public String toString() {
        return Integer.toString(this.b);
    }
}
