package com.camerasideas.collagemaker.activity;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.c;
import com.bumptech.glide.h;
import com.bumptech.glide.i;

public class w0 extends i {
    public w0(c cVar, fj fjVar, kj kjVar, Context context) {
        super(cVar, fjVar, kjVar, context);
    }

    @Override // com.bumptech.glide.i
    public h j() {
        return (v0) super.j();
    }

    @Override // com.bumptech.glide.i
    public h k() {
        return (v0) super.k();
    }

    /* access modifiers changed from: protected */
    @Override // com.bumptech.glide.i
    public void p(ck ckVar) {
        if (ckVar instanceof u0) {
            super.p(ckVar);
        } else {
            super.p(new u0().Z(ckVar));
        }
    }

    /* renamed from: s */
    public <ResourceType> v0<ResourceType> i(Class<ResourceType> cls) {
        return new v0<>(this.b, this, cls, this.c);
    }

    public v0<Drawable> t(Integer num) {
        return (v0) k().h0(num);
    }

    public v0<Drawable> u(String str) {
        h k = k();
        k.j0(str);
        return (v0) k;
    }
}
