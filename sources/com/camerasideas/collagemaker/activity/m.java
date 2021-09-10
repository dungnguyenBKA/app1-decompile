package com.camerasideas.collagemaker.activity;

import android.graphics.Bitmap;
import com.example.portraitmatting.PortraitMatting;
import java.util.Objects;
import jp.co.cyberagent.android.gpuimage.b;

public final /* synthetic */ class m implements Runnable {
    public final /* synthetic */ ImageCutoutActivity b;
    public final /* synthetic */ Bitmap c;

    public /* synthetic */ m(ImageCutoutActivity imageCutoutActivity, Bitmap bitmap) {
        this.b = imageCutoutActivity;
        this.c = bitmap;
    }

    public final void run() {
        Bitmap t;
        ImageCutoutActivity imageCutoutActivity = this.b;
        Bitmap bitmap = this.c;
        Objects.requireNonNull(imageCutoutActivity);
        if (bitmap != null) {
            try {
                if (!bitmap.isRecycled()) {
                    Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ALPHA_8);
                    PortraitMatting.b(imageCutoutActivity);
                    long a = PortraitMatting.a(imageCutoutActivity);
                    PortraitMatting.e(a, bitmap, createBitmap);
                    PortraitMatting.d(a);
                    if (wq.o(createBitmap)) {
                        Bitmap copy = createBitmap.copy(Bitmap.Config.ARGB_8888, false);
                        Bitmap bitmap2 = null;
                        if (wq.o(copy) && (t = wq.t(copy, 1.0f)) != null) {
                            b bVar = new b(imageCutoutActivity);
                            bVar.c(new of0(4));
                            bitmap2 = bVar.b(t);
                        }
                        imageCutoutActivity.runOnUiThread(new x(imageCutoutActivity, bitmap2, bitmap));
                        return;
                    }
                    imageCutoutActivity.runOnUiThread(new t(imageCutoutActivity, bitmap));
                    return;
                }
            } catch (Throwable th) {
                String tag = imageCutoutActivity.getTAG();
                StringBuilder q = ic.q("process failed:");
                q.append(th.toString());
                em.h(tag, q.toString());
                imageCutoutActivity.runOnUiThread(new u(imageCutoutActivity, bitmap));
                return;
            }
        }
        imageCutoutActivity.c();
    }
}
