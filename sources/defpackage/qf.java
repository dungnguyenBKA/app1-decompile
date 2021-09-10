package defpackage;

import android.util.Base64;
import com.bumptech.glide.f;
import com.bumptech.glide.load.i;
import defpackage.uc;
import defpackage.zf;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* renamed from: qf  reason: default package */
public final class qf<Model, Data> implements zf<Model, Data> {
    private final a<Data> a;

    /* renamed from: qf$a */
    public interface a<Data> {
    }

    /* renamed from: qf$b */
    private static final class b<Data> implements uc<Data> {
        private final String b;
        private final a<Data> c;
        private Data d;

        b(String str, a<Data> aVar) {
            this.b = str;
            this.c = aVar;
        }

        @Override // defpackage.uc
        public Class<Data> a() {
            Objects.requireNonNull((c.a) this.c);
            return InputStream.class;
        }

        @Override // defpackage.uc
        public void b() {
            try {
                a<Data> aVar = this.c;
                Data data = this.d;
                Objects.requireNonNull((c.a) aVar);
                data.close();
            } catch (IOException unused) {
            }
        }

        @Override // defpackage.uc
        public void cancel() {
        }

        @Override // defpackage.uc
        public com.bumptech.glide.load.a d() {
            return com.bumptech.glide.load.a.LOCAL;
        }

        @Override // defpackage.uc
        public void e(f fVar, uc.a<? super Data> aVar) {
            try {
                Data data = (Data) ((c.a) this.c).a(this.b);
                this.d = data;
                aVar.f(data);
            } catch (IllegalArgumentException e) {
                aVar.c(e);
            }
        }
    }

    /* renamed from: qf$c */
    public static final class c<Model> implements ag<Model, InputStream> {
        private final a<InputStream> a = new a(this);

        /* renamed from: qf$c$a */
        class a implements a<InputStream> {
            a(c cVar) {
            }

            public Object a(String str) {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf == -1) {
                        throw new IllegalArgumentException("Missing comma in data URL.");
                    } else if (str.substring(0, indexOf).endsWith(";base64")) {
                        return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                    } else {
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                } else {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
            }
        }

        @Override // defpackage.ag
        public void a() {
        }

        @Override // defpackage.ag
        public zf<Model, InputStream> c(dg dgVar) {
            return new qf(this.a);
        }
    }

    public qf(a<Data> aVar) {
        this.a = aVar;
    }

    @Override // defpackage.zf
    public boolean a(Model model) {
        return model.toString().startsWith("data:image");
    }

    @Override // defpackage.zf
    public zf.a<Data> b(Model model, int i, int i2, i iVar) {
        return new zf.a<>(new xk(model), new b(model.toString(), this.a));
    }
}
