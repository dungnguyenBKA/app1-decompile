package com.camerasideas.stackblur;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* access modifiers changed from: package-private */
public class NativeBlurProcess implements a {
    private static boolean a = false;

    /* access modifiers changed from: private */
    public static class a implements Callable<Void> {
        private final Bitmap b;
        private final int c;
        private final int d;
        private final int e;

        public a(Bitmap bitmap, int i, int i2, int i3, int i4) {
            this.b = bitmap;
            this.c = i;
            this.d = i3;
            this.e = i4;
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // java.util.concurrent.Callable
        public Void call() {
            NativeBlurProcess.functionToBlur(this.b, this.c, 1, this.d, this.e);
            return null;
        }
    }

    static {
        try {
            System.loadLibrary("blur");
            a = true;
        } catch (Throwable unused) {
            a = false;
        }
    }

    NativeBlurProcess() {
    }

    public static boolean c() {
        return a;
    }

    /* access modifiers changed from: private */
    public static native void functionToBlur(Bitmap bitmap, int i, int i2, int i3, int i4);

    @Override // com.camerasideas.stackblur.a
    public Bitmap a(Bitmap bitmap, float f) {
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        for (int i = 0; i < 1; i++) {
            int i2 = (int) f;
            arrayList.add(new a(copy, i2, 1, i, 1));
            arrayList2.add(new a(copy, i2, 1, i, 2));
        }
        try {
            ExecutorService executorService = c.d;
            executorService.invokeAll(arrayList);
            executorService.invokeAll(arrayList2);
        } catch (InterruptedException unused) {
        }
        return copy;
    }
}
