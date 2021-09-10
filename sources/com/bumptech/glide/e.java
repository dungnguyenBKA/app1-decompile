package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import java.util.List;
import java.util.Map;
import java.util.Objects;

public class e extends ContextWrapper {
    static final j<?, ?> k = new b();
    private final oe a;
    private final g b;
    private final lk c;
    private final c.a d;
    private final List<bk<Object>> e;
    private final Map<Class<?>, j<?, ?>> f;
    private final wd g;
    private final boolean h;
    private final int i;
    private ck j;

    public e(Context context, oe oeVar, g gVar, lk lkVar, c.a aVar, Map<Class<?>, j<?, ?>> map, List<bk<Object>> list, wd wdVar, boolean z, int i2) {
        super(context.getApplicationContext());
        this.a = oeVar;
        this.b = gVar;
        this.c = lkVar;
        this.d = aVar;
        this.e = list;
        this.f = map;
        this.g = wdVar;
        this.h = z;
        this.i = i2;
    }

    public <X> ok<ImageView, X> a(ImageView imageView, Class<X> cls) {
        Objects.requireNonNull(this.c);
        if (Bitmap.class.equals(cls)) {
            return new gk(imageView);
        }
        if (Drawable.class.isAssignableFrom(cls)) {
            return new jk(imageView);
        }
        throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
    }

    public oe b() {
        return this.a;
    }

    public List<bk<Object>> c() {
        return this.e;
    }

    public synchronized ck d() {
        if (this.j == null) {
            Objects.requireNonNull((d.a) this.d);
            ck ckVar = new ck();
            ckVar.H();
            this.j = ckVar;
        }
        return this.j;
    }

    public <T> j<?, T> e(Class<T> cls) {
        j<?, T> jVar = (j<?, T>) this.f.get(cls);
        if (jVar == null) {
            for (Map.Entry<Class<?>, j<?, ?>> entry : this.f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    jVar = (j<?, T>) entry.getValue();
                }
            }
        }
        return jVar == null ? (j<?, T>) k : jVar;
    }

    public wd f() {
        return this.g;
    }

    public int g() {
        return this.i;
    }

    public g h() {
        return this.b;
    }

    public boolean i() {
        return this.h;
    }
}
