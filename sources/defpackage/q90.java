package defpackage;

/* renamed from: q90  reason: default package */
public enum q90 {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    UNSPECIFIED("unspecified"),
    LOADED("loaded"),
    BEGIN_TO_RENDER("beginToRender"),
    ONE_PIXEL("onePixel"),
    VIEWABLE("viewable"),
    AUDIBLE("audible"),
    OTHER("other");
    
    private final String b;

    private q90(String str) {
        this.b = str;
    }

    public String toString() {
        return this.b;
    }
}
