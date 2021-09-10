package com.camerasideas.collagemaker.activity;

import android.graphics.Bitmap;
import android.os.Bundle;
import androidx.core.app.b;
import com.camerasideas.collagemaker.activity.fragment.imagefragment.ImageGuidFragment;
import com.camerasideas.collagemaker.appdata.f;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import photoeditor.cutout.backgrounderaser.R;

public final /* synthetic */ class x implements Runnable {
    public final /* synthetic */ ImageCutoutActivity b;
    public final /* synthetic */ Bitmap c;
    public final /* synthetic */ Bitmap d;

    public /* synthetic */ x(ImageCutoutActivity imageCutoutActivity, Bitmap bitmap, Bitmap bitmap2) {
        this.b = imageCutoutActivity;
        this.c = bitmap;
        this.d = bitmap2;
    }

    public final void run() {
        ImageCutoutActivity imageCutoutActivity = this.b;
        Bitmap bitmap = this.c;
        Bitmap bitmap2 = this.d;
        imageCutoutActivity.c();
        uq.t(imageCutoutActivity.mBtnChangeAlpha, true);
        if (wq.o(bitmap) && wq.o(bitmap2)) {
            CutoutEditorView cutoutEditorView = imageCutoutActivity.mCutoutView;
            if (cutoutEditorView != null) {
                cutoutEditorView.h0(bitmap);
                imageCutoutActivity.mCutoutView.invalidate();
                if (f.g(imageCutoutActivity).getBoolean("enableShowEraserGuide", true)) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("GUID_TYPE", 0);
                    b.s(imageCutoutActivity, ImageGuidFragment.class, bundle, R.id.hl, true, true);
                }
            }
        } else if (imageCutoutActivity.mCutoutView != null && wq.o(bitmap2)) {
            imageCutoutActivity.mCutoutView.h0(bitmap2);
            imageCutoutActivity.mCutoutView.invalidate();
        }
    }
}
