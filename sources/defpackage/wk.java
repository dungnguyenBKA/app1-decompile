package defpackage;

import com.bumptech.glide.load.g;
import java.security.MessageDigest;

/* renamed from: wk  reason: default package */
public final class wk implements g {
    private static final wk b = new wk();

    private wk() {
    }

    public static wk c() {
        return b;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
    }

    public String toString() {
        return "EmptySignature";
    }
}
