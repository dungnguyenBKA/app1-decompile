package com.camerasideas.collagemaker.activity;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCutoutActivity_ViewBinding implements Unbinder {
    private ImageCutoutActivity b;
    private View c;
    private View d;
    private View e;

    class a extends p6 {
        final /* synthetic */ ImageCutoutActivity c;

        a(ImageCutoutActivity_ViewBinding imageCutoutActivity_ViewBinding, ImageCutoutActivity imageCutoutActivity) {
            this.c = imageCutoutActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ ImageCutoutActivity c;

        b(ImageCutoutActivity_ViewBinding imageCutoutActivity_ViewBinding, ImageCutoutActivity imageCutoutActivity) {
            this.c = imageCutoutActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ ImageCutoutActivity c;

        c(ImageCutoutActivity_ViewBinding imageCutoutActivity_ViewBinding, ImageCutoutActivity imageCutoutActivity) {
            this.c = imageCutoutActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public ImageCutoutActivity_ViewBinding(ImageCutoutActivity imageCutoutActivity, View view) {
        this.b = imageCutoutActivity;
        imageCutoutActivity.mBannerAdContainer = (ViewGroup) q6.a(q6.b(view, R.id.jz, "field 'mBannerAdContainer'"), R.id.jz, "field 'mBannerAdContainer'", ViewGroup.class);
        imageCutoutActivity.mBannerAdLayout = (ViewGroup) q6.a(q6.b(view, R.id.bt, "field 'mBannerAdLayout'"), R.id.bt, "field 'mBannerAdLayout'", ViewGroup.class);
        imageCutoutActivity.mCutoutView = (CutoutEditorView) q6.a(q6.b(view, R.id.iz, "field 'mCutoutView'"), R.id.iz, "field 'mCutoutView'", CutoutEditorView.class);
        imageCutoutActivity.mProgressView = q6.b(view, R.id.nb, "field 'mProgressView'");
        imageCutoutActivity.mBgToolBarLayout = q6.b(view, R.id.fy, "field 'mBgToolBarLayout'");
        imageCutoutActivity.mMaskView = (FrameLayout) q6.a(q6.b(view, R.id.hk, "field 'mMaskView'"), R.id.hk, "field 'mMaskView'", FrameLayout.class);
        imageCutoutActivity.mMiddleLayout = q6.b(view, R.id.l3, "field 'mMiddleLayout'");
        imageCutoutActivity.mImgAlignLineV = (ImageView) q6.a(q6.b(view, R.id.j5, "field 'mImgAlignLineV'"), R.id.j5, "field 'mImgAlignLineV'", ImageView.class);
        imageCutoutActivity.mImgAlignLineH = (ImageView) q6.a(q6.b(view, R.id.j4, "field 'mImgAlignLineH'"), R.id.j4, "field 'mImgAlignLineH'", ImageView.class);
        imageCutoutActivity.mSortItemLayout = q6.b(view, R.id.qn, "field 'mSortItemLayout'");
        View b2 = q6.b(view, R.id.e2, "field 'mBtnMoveUp' and method 'onClick'");
        imageCutoutActivity.mBtnMoveUp = (LinearLayout) q6.a(b2, R.id.e2, "field 'mBtnMoveUp'", LinearLayout.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, imageCutoutActivity));
        View b3 = q6.b(view, R.id.e1, "field 'mBtnMoveDown' and method 'onClick'");
        imageCutoutActivity.mBtnMoveDown = (LinearLayout) q6.a(b3, R.id.e1, "field 'mBtnMoveDown'", LinearLayout.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, imageCutoutActivity));
        imageCutoutActivity.mBtnChangeAlpha = (ImageView) q6.a(q6.b(view, R.id.di, "field 'mBtnChangeAlpha'"), R.id.di, "field 'mBtnChangeAlpha'", ImageView.class);
        View b4 = q6.b(view, R.id.dp, "method 'onClick'");
        this.e = b4;
        b4.setOnClickListener(new c(this, imageCutoutActivity));
    }

    @Override // butterknife.Unbinder
    public void a() {
        ImageCutoutActivity imageCutoutActivity = this.b;
        if (imageCutoutActivity != null) {
            this.b = null;
            imageCutoutActivity.mBannerAdContainer = null;
            imageCutoutActivity.mBannerAdLayout = null;
            imageCutoutActivity.mCutoutView = null;
            imageCutoutActivity.mProgressView = null;
            imageCutoutActivity.mMaskView = null;
            imageCutoutActivity.mImgAlignLineV = null;
            imageCutoutActivity.mImgAlignLineH = null;
            imageCutoutActivity.mSortItemLayout = null;
            imageCutoutActivity.mBtnMoveUp = null;
            imageCutoutActivity.mBtnMoveDown = null;
            imageCutoutActivity.mBtnChangeAlpha = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
