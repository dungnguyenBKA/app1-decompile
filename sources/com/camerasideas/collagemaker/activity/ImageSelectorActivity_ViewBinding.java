package com.camerasideas.collagemaker.activity;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import com.camerasideas.collagemaker.activity.gallery.ui.GalleryMultiSelectGroupView;
import photoeditor.cutout.backgrounderaser.R;

public class ImageSelectorActivity_ViewBinding implements Unbinder {
    private ImageSelectorActivity b;

    public ImageSelectorActivity_ViewBinding(ImageSelectorActivity imageSelectorActivity, View view) {
        this.b = imageSelectorActivity;
        imageSelectorActivity.mBtnSelectedFolder = (TextView) q6.a(q6.b(view, R.id.mq, "field 'mBtnSelectedFolder'"), R.id.mq, "field 'mBtnSelectedFolder'", TextView.class);
        imageSelectorActivity.mBtnNext = (FrameLayout) q6.a(q6.b(view, R.id.e4, "field 'mBtnNext'"), R.id.e4, "field 'mBtnNext'", FrameLayout.class);
        imageSelectorActivity.mTvNext = (TextView) q6.a(q6.b(view, R.id.sv, "field 'mTvNext'"), R.id.sv, "field 'mTvNext'", TextView.class);
        imageSelectorActivity.mBtnBack = (AppCompatImageView) q6.a(q6.b(view, R.id.dc, "field 'mBtnBack'"), R.id.dc, "field 'mBtnBack'", AppCompatImageView.class);
        imageSelectorActivity.mSignMoreLessView = (AppCompatImageView) q6.a(q6.b(view, R.id.q8, "field 'mSignMoreLessView'"), R.id.q8, "field 'mSignMoreLessView'", AppCompatImageView.class);
        imageSelectorActivity.mBtnChooseFolder = (LinearLayout) q6.a(q6.b(view, R.id.dj, "field 'mBtnChooseFolder'"), R.id.dj, "field 'mBtnChooseFolder'", LinearLayout.class);
        imageSelectorActivity.mGridView = (GridView) q6.a(q6.b(view, R.id.i1, "field 'mGridView'"), R.id.i1, "field 'mGridView'", GridView.class);
        imageSelectorActivity.mGalleryView = (GalleryMultiSelectGroupView) q6.a(q6.b(view, R.id.hu, "field 'mGalleryView'"), R.id.hu, "field 'mGalleryView'", GalleryMultiSelectGroupView.class);
        imageSelectorActivity.mBtnSelectedHint = (TextView) q6.a(q6.b(view, R.id.ec, "field 'mBtnSelectedHint'"), R.id.ec, "field 'mBtnSelectedHint'", TextView.class);
        imageSelectorActivity.mTvSelectedCount = (TextView) q6.a(q6.b(view, R.id.sy, "field 'mTvSelectedCount'"), R.id.sy, "field 'mTvSelectedCount'", TextView.class);
        imageSelectorActivity.mBtnClear = (AppCompatImageView) q6.a(q6.b(view, R.id.dk, "field 'mBtnClear'"), R.id.dk, "field 'mBtnClear'", AppCompatImageView.class);
        imageSelectorActivity.mSelectedRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.pn, "field 'mSelectedRecyclerView'"), R.id.pn, "field 'mSelectedRecyclerView'", RecyclerView.class);
        imageSelectorActivity.mMultipleView = (LinearLayout) q6.a(q6.b(view, R.id.k2, "field 'mMultipleView'"), R.id.k2, "field 'mMultipleView'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    public void a() {
        ImageSelectorActivity imageSelectorActivity = this.b;
        if (imageSelectorActivity != null) {
            this.b = null;
            imageSelectorActivity.mBtnSelectedFolder = null;
            imageSelectorActivity.mBtnNext = null;
            imageSelectorActivity.mTvNext = null;
            imageSelectorActivity.mBtnBack = null;
            imageSelectorActivity.mSignMoreLessView = null;
            imageSelectorActivity.mBtnChooseFolder = null;
            imageSelectorActivity.mGridView = null;
            imageSelectorActivity.mGalleryView = null;
            imageSelectorActivity.mBtnSelectedHint = null;
            imageSelectorActivity.mTvSelectedCount = null;
            imageSelectorActivity.mBtnClear = null;
            imageSelectorActivity.mSelectedRecyclerView = null;
            imageSelectorActivity.mMultipleView = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
