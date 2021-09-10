package com.camerasideas.collagemaker.activity;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.photoproc.crop.CropEditorView;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCropActivity_ViewBinding implements Unbinder {
    private ImageCropActivity b;
    private View c;
    private View d;

    class a extends p6 {
        final /* synthetic */ ImageCropActivity c;

        a(ImageCropActivity_ViewBinding imageCropActivity_ViewBinding, ImageCropActivity imageCropActivity) {
            this.c = imageCropActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ ImageCropActivity c;

        b(ImageCropActivity_ViewBinding imageCropActivity_ViewBinding, ImageCropActivity imageCropActivity) {
            this.c = imageCropActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public ImageCropActivity_ViewBinding(ImageCropActivity imageCropActivity, View view) {
        this.b = imageCropActivity;
        imageCropActivity.mCropView = (CropEditorView) q6.a(q6.b(view, R.id.iw, "field 'mCropView'"), R.id.iw, "field 'mCropView'", CropEditorView.class);
        imageCropActivity.mProgressViewLayout = q6.b(view, R.id.na, "field 'mProgressViewLayout'");
        imageCropActivity.mRatioRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.nt, "field 'mRatioRecyclerView'"), R.id.nt, "field 'mRatioRecyclerView'", RecyclerView.class);
        View b2 = q6.b(view, R.id.da, "method 'onClick'");
        this.c = b2;
        b2.setOnClickListener(new a(this, imageCropActivity));
        View b3 = q6.b(view, R.id.df, "method 'onClick'");
        this.d = b3;
        b3.setOnClickListener(new b(this, imageCropActivity));
    }

    @Override // butterknife.Unbinder
    public void a() {
        ImageCropActivity imageCropActivity = this.b;
        if (imageCropActivity != null) {
            this.b = null;
            imageCropActivity.mCropView = null;
            imageCropActivity.mProgressViewLayout = null;
            imageCropActivity.mRatioRecyclerView = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
