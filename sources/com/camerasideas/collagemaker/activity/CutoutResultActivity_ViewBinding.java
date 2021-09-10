package com.camerasideas.collagemaker.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.widget.CircularProgressView;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class CutoutResultActivity_ViewBinding implements Unbinder {
    private CutoutResultActivity b;
    private View c;
    private View d;
    private View e;

    class a extends p6 {
        final /* synthetic */ CutoutResultActivity c;

        a(CutoutResultActivity_ViewBinding cutoutResultActivity_ViewBinding, CutoutResultActivity cutoutResultActivity) {
            this.c = cutoutResultActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ CutoutResultActivity c;

        b(CutoutResultActivity_ViewBinding cutoutResultActivity_ViewBinding, CutoutResultActivity cutoutResultActivity) {
            this.c = cutoutResultActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ CutoutResultActivity c;

        c(CutoutResultActivity_ViewBinding cutoutResultActivity_ViewBinding, CutoutResultActivity cutoutResultActivity) {
            this.c = cutoutResultActivity;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public CutoutResultActivity_ViewBinding(CutoutResultActivity cutoutResultActivity, View view) {
        this.b = cutoutResultActivity;
        View b2 = q6.b(view, R.id.dc, "field 'mBtnBack' and method 'onClick'");
        AppCompatImageView appCompatImageView = (AppCompatImageView) q6.a(b2, R.id.dc, "field 'mBtnBack'", AppCompatImageView.class);
        Objects.requireNonNull(cutoutResultActivity);
        this.c = b2;
        b2.setOnClickListener(new a(this, cutoutResultActivity));
        View b3 = q6.b(view, R.id.dw, "field 'mBtnHome' and method 'onClick'");
        cutoutResultActivity.mBtnHome = (AppCompatImageView) q6.a(b3, R.id.dw, "field 'mBtnHome'", AppCompatImageView.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, cutoutResultActivity));
        cutoutResultActivity.mSaveText = (TextView) q6.a(q6.b(view, R.id.om, "field 'mSaveText'"), R.id.om, "field 'mSaveText'", TextView.class);
        cutoutResultActivity.mShareRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.pz, "field 'mShareRecyclerView'"), R.id.pz, "field 'mShareRecyclerView'", RecyclerView.class);
        cutoutResultActivity.mPreViewProgressbar = (ProgressBar) q6.a(q6.b(view, R.id.od, "field 'mPreViewProgressbar'"), R.id.od, "field 'mPreViewProgressbar'", ProgressBar.class);
        cutoutResultActivity.mImageThumbnail = (ImageView) q6.a(q6.b(view, R.id.oe, "field 'mImageThumbnail'"), R.id.oe, "field 'mImageThumbnail'", ImageView.class);
        cutoutResultActivity.mPreviewLayout = (LinearLayout) q6.a(q6.b(view, R.id.n0, "field 'mPreviewLayout'"), R.id.n0, "field 'mPreviewLayout'", LinearLayout.class);
        View b4 = q6.b(view, R.id.oa, "field 'mImagePreview' and method 'onClick'");
        cutoutResultActivity.mImagePreview = (AppCompatImageView) q6.a(b4, R.id.oa, "field 'mImagePreview'", AppCompatImageView.class);
        this.e = b4;
        b4.setOnClickListener(new c(this, cutoutResultActivity));
        cutoutResultActivity.mImagePreviewLayout = (FrameLayout) q6.a(q6.b(view, R.id.ob, "field 'mImagePreviewLayout'"), R.id.ob, "field 'mImagePreviewLayout'", FrameLayout.class);
        cutoutResultActivity.mSaveHintLayout = (LinearLayout) q6.a(q6.b(view, R.id.on, "field 'mSaveHintLayout'"), R.id.on, "field 'mSaveHintLayout'", LinearLayout.class);
        cutoutResultActivity.mSaveProgressBar = (CircularProgressView) q6.a(q6.b(view, R.id.oq, "field 'mSaveProgressBar'"), R.id.oq, "field 'mSaveProgressBar'", CircularProgressView.class);
        cutoutResultActivity.mSaveCompleteTV = (TextView) q6.a(q6.b(view, R.id.oc, "field 'mSaveCompleteTV'"), R.id.oc, "field 'mSaveCompleteTV'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        CutoutResultActivity cutoutResultActivity = this.b;
        if (cutoutResultActivity != null) {
            this.b = null;
            cutoutResultActivity.mBtnHome = null;
            cutoutResultActivity.mSaveText = null;
            cutoutResultActivity.mShareRecyclerView = null;
            cutoutResultActivity.mPreViewProgressbar = null;
            cutoutResultActivity.mImageThumbnail = null;
            cutoutResultActivity.mPreviewLayout = null;
            cutoutResultActivity.mImagePreview = null;
            cutoutResultActivity.mSaveHintLayout = null;
            cutoutResultActivity.mSaveProgressBar = null;
            cutoutResultActivity.mSaveCompleteTV = null;
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
