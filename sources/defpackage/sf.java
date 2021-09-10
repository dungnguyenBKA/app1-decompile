package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.load.g;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;
import java.util.Objects;

/* renamed from: sf  reason: default package */
public class sf implements g {
    private final tf b;
    private final URL c;
    private final String d;
    private String e;
    private URL f;
    private volatile byte[] g;
    private int h;

    public sf(URL url) {
        tf tfVar = tf.a;
        Objects.requireNonNull(url, "Argument must not be null");
        this.c = url;
        this.d = null;
        Objects.requireNonNull(tfVar, "Argument must not be null");
        this.b = tfVar;
    }

    private String e() {
        if (TextUtils.isEmpty(this.e)) {
            String str = this.d;
            if (TextUtils.isEmpty(str)) {
                URL url = this.c;
                Objects.requireNonNull(url, "Argument must not be null");
                str = url.toString();
            }
            this.e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.e;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
        if (this.g == null) {
            this.g = c().getBytes(g.a);
        }
        messageDigest.update(this.g);
    }

    public String c() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        URL url = this.c;
        Objects.requireNonNull(url, "Argument must not be null");
        return url.toString();
    }

    public Map<String, String> d() {
        return this.b.a();
    }

    @Override // com.bumptech.glide.load.g
    public boolean equals(Object obj) {
        if (!(obj instanceof sf)) {
            return false;
        }
        sf sfVar = (sf) obj;
        if (!c().equals(sfVar.c()) || !this.b.equals(sfVar.b)) {
            return false;
        }
        return true;
    }

    public String f() {
        return e();
    }

    public URL g() {
        if (this.f == null) {
            this.f = new URL(e());
        }
        return this.f;
    }

    @Override // com.bumptech.glide.load.g
    public int hashCode() {
        if (this.h == 0) {
            int hashCode = c().hashCode();
            this.h = hashCode;
            this.h = this.b.hashCode() + (hashCode * 31);
        }
        return this.h;
    }

    public String toString() {
        return c();
    }

    public sf(String str) {
        tf tfVar = tf.a;
        this.c = null;
        if (!TextUtils.isEmpty(str)) {
            this.d = str;
            Objects.requireNonNull(tfVar, "Argument must not be null");
            this.b = tfVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
