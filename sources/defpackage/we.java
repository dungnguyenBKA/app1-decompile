package defpackage;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

/* renamed from: we  reason: default package */
public class we implements qe {
    private static final Bitmap.Config j = Bitmap.Config.ARGB_8888;
    private final xe a;
    private final Set<Bitmap.Config> b;
    private final a c;
    private long d;
    private long e;
    private int f;
    private int g;
    private int h;
    private int i;

    /* access modifiers changed from: private */
    /* renamed from: we$a */
    public interface a {
    }

    /* access modifiers changed from: private */
    /* renamed from: we$b */
    public static final class b implements a {
        b() {
        }
    }

    public we(long j2) {
        ze zeVar = new ze();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i2 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i2 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set<Bitmap.Config> unmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.d = j2;
        this.a = zeVar;
        this.b = unmodifiableSet;
        this.c = new b();
    }

    private void f() {
        if (Log.isLoggable("LruBitmapPool", 2)) {
            g();
        }
    }

    private void g() {
        StringBuilder q = ic.q("Hits=");
        q.append(this.f);
        q.append(", misses=");
        q.append(this.g);
        q.append(", puts=");
        q.append(this.h);
        q.append(", evictions=");
        q.append(this.i);
        q.append(", currentSize=");
        q.append(this.e);
        q.append(", maxSize=");
        q.append(this.d);
        q.append("\nStrategy=");
        q.append(this.a);
        q.toString();
    }

    private synchronized Bitmap h(int i2, int i3, Bitmap.Config config) {
        Bitmap b2;
        if (Build.VERSION.SDK_INT >= 26) {
            if (config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
        }
        b2 = ((ze) this.a).b(i2, i3, config != null ? config : j);
        if (b2 == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Objects.requireNonNull((ze) this.a);
                ze.c(hl.c(i2, i3, config), config);
            }
            this.g++;
        } else {
            this.f++;
            long j2 = this.e;
            Objects.requireNonNull((ze) this.a);
            this.e = j2 - ((long) hl.d(b2));
            Objects.requireNonNull((b) this.c);
            b2.setHasAlpha(true);
            b2.setPremultiplied(true);
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            Objects.requireNonNull((ze) this.a);
            ze.c(hl.c(i2, i3, config), config);
        }
        f();
        return b2;
    }

    private synchronized void i(long j2) {
        while (this.e > j2) {
            Bitmap g2 = ((ze) this.a).g();
            if (g2 == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    g();
                }
                this.e = 0;
                return;
            }
            Objects.requireNonNull((b) this.c);
            long j3 = this.e;
            Objects.requireNonNull((ze) this.a);
            this.e = j3 - ((long) hl.d(g2));
            this.i++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                ((ze) this.a).e(g2);
            }
            f();
            g2.recycle();
        }
    }

    @Override // defpackage.qe
    @SuppressLint({"InlinedApi"})
    public void a(int i2) {
        Log.isLoggable("LruBitmapPool", 3);
        if (i2 >= 40 || (Build.VERSION.SDK_INT >= 23 && i2 >= 20)) {
            Log.isLoggable("LruBitmapPool", 3);
            i(0);
        } else if (i2 >= 20 || i2 == 15) {
            i(this.d / 2);
        }
    }

    @Override // defpackage.qe
    public void b() {
        Log.isLoggable("LruBitmapPool", 3);
        i(0);
    }

    @Override // defpackage.qe
    public Bitmap c(int i2, int i3, Bitmap.Config config) {
        Bitmap h2 = h(i2, i3, config);
        if (h2 != null) {
            return h2;
        }
        if (config == null) {
            config = j;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }

    @Override // defpackage.qe
    public synchronized void d(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        } else if (!bitmap.isRecycled()) {
            if (bitmap.isMutable()) {
                Objects.requireNonNull((ze) this.a);
                if (((long) hl.d(bitmap)) <= this.d) {
                    if (this.b.contains(bitmap.getConfig())) {
                        Objects.requireNonNull((ze) this.a);
                        int d2 = hl.d(bitmap);
                        ((ze) this.a).f(bitmap);
                        Objects.requireNonNull((b) this.c);
                        this.h++;
                        this.e += (long) d2;
                        if (Log.isLoggable("LruBitmapPool", 2)) {
                            ((ze) this.a).e(bitmap);
                        }
                        f();
                        i(this.d);
                        return;
                    }
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                ((ze) this.a).e(bitmap);
                bitmap.isMutable();
                this.b.contains(bitmap.getConfig());
            }
            bitmap.recycle();
        } else {
            throw new IllegalStateException("Cannot pool recycled bitmap");
        }
    }

    @Override // defpackage.qe
    public Bitmap e(int i2, int i3, Bitmap.Config config) {
        Bitmap h2 = h(i2, i3, config);
        if (h2 != null) {
            h2.eraseColor(0);
            return h2;
        }
        if (config == null) {
            config = j;
        }
        return Bitmap.createBitmap(i2, i3, config);
    }
}
