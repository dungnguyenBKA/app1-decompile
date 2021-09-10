package defpackage;

import com.vungle.warren.model.Advertisement;

/* renamed from: p90  reason: default package */
public enum p90 {
    DEFINED_BY_JAVASCRIPT("definedByJavaScript"),
    HTML_DISPLAY("htmlDisplay"),
    NATIVE_DISPLAY("nativeDisplay"),
    VIDEO(Advertisement.KEY_VIDEO),
    AUDIO("audio");
    
    private final String b;

    private p90(String str) {
        this.b = str;
    }

    public String toString() {
        return this.b;
    }
}
