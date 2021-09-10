package defpackage;

import android.content.Context;
import com.bumptech.glide.load.m;
import java.security.MessageDigest;

/* renamed from: sg  reason: default package */
public final class sg<T> implements m<T> {
    private static final m<?> b = new sg();

    private sg() {
    }

    public static <T> sg<T> c() {
        return (sg) b;
    }

    @Override // com.bumptech.glide.load.g
    public void a(MessageDigest messageDigest) {
    }

    @Override // com.bumptech.glide.load.m
    public he<T> b(Context context, he<T> heVar, int i, int i2) {
        return heVar;
    }
}
