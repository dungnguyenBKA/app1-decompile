package defpackage;

import com.bumptech.glide.load.g;
import defpackage.il;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;

/* renamed from: kf  reason: default package */
public class kf {
    private final el<g, String> a = new el<>(1000);
    private final k2<b> b = il.a(10, new a(this));

    /* renamed from: kf$a */
    class a implements il.b<b> {
        a(kf kfVar) {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // defpackage.il.b
        public b a() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: kf$b */
    public static final class b implements il.d {
        final MessageDigest b;
        private final ll c = ll.a();

        b(MessageDigest messageDigest) {
            this.b = messageDigest;
        }

        @Override // defpackage.il.d
        public ll b() {
            return this.c;
        }
    }

    public String a(g gVar) {
        String b2;
        synchronized (this.a) {
            b2 = this.a.b(gVar);
        }
        if (b2 == null) {
            b b3 = this.b.b();
            Objects.requireNonNull(b3, "Argument must not be null");
            b bVar = b3;
            try {
                gVar.a(bVar.b);
                b2 = hl.j(bVar.b.digest());
            } finally {
                this.b.a(bVar);
            }
        }
        synchronized (this.a) {
            this.a.f(gVar, b2);
        }
        return b2;
    }
}
