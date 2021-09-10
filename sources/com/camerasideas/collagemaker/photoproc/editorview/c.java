package com.camerasideas.collagemaker.photoproc.editorview;

import android.graphics.Bitmap;
import android.util.LruCache;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class c {
    public static final LruCache<String, Bitmap> a = new a((int) ((Runtime.getRuntime().maxMemory() - (Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory())) / 4));
    private static final ExecutorService b = Executors.newSingleThreadExecutor();

    public static final class a extends LruCache<String, Bitmap> {
        public a(int i) {
            super(i);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.LruCache
        public int sizeOf(String str, Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0064, code lost:
        if (r4 != null) goto L_0x0066;
     */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x005e A[Catch:{ FileNotFoundException -> 0x005f, IOException -> 0x0057, all -> 0x0055, all -> 0x006f }] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0073 A[SYNTHETIC, Splitter:B:36:0x0073] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x007f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final android.graphics.Bitmap a(java.lang.String r6) {
        /*
        // Method dump skipped, instructions count: 140
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.photoproc.editorview.c.a(java.lang.String):android.graphics.Bitmap");
    }

    public static final void b(String str, Bitmap bitmap) {
        a.put(str, bitmap);
        b.execute(new a(bitmap, str));
    }
}
