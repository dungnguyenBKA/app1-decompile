package com.bumptech.glide;

import com.bumptech.glide.j;
import java.util.Objects;

public abstract class j<CHILD extends j<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    private tk<? super TranscodeType> b = rk.b();

    public final CHILD a() {
        try {
            return (CHILD) ((j) super.clone());
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: package-private */
    public final tk<? super TranscodeType> b() {
        return this.b;
    }

    public final CHILD c(tk<? super TranscodeType> tkVar) {
        Objects.requireNonNull(tkVar, "Argument must not be null");
        this.b = tkVar;
        return this;
    }

    @Override // java.lang.Object
    public Object clone() {
        try {
            return (j) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
