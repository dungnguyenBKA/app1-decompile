package defpackage;

/* renamed from: r90  reason: default package */
public enum r90 {
    NATIVE("native"),
    JAVASCRIPT("javascript"),
    NONE("none");
    
    private final String b;

    private r90(String str) {
        this.b = str;
    }

    public String toString() {
        return this.b;
    }
}
