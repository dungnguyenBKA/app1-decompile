package defpackage;

/* renamed from: ha  reason: default package */
public enum ha {
    JSON(".json"),
    ZIP(".zip");
    
    public final String b;

    private ha(String str) {
        this.b = str;
    }

    public String toString() {
        return this.b;
    }
}
