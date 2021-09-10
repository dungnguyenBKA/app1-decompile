package defpackage;

import com.bumptech.glide.load.ImageHeaderParser;
import java.util.ArrayList;
import java.util.List;

/* renamed from: tj  reason: default package */
public final class tj {
    private final List<ImageHeaderParser> a = new ArrayList();

    public synchronized void a(ImageHeaderParser imageHeaderParser) {
        this.a.add(imageHeaderParser);
    }

    public synchronized List<ImageHeaderParser> b() {
        return this.a;
    }
}
