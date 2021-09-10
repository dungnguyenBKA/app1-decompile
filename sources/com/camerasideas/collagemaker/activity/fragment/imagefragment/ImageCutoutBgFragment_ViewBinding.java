package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCutoutBgFragment_ViewBinding implements Unbinder {
    private ImageCutoutBgFragment b;
    private View c;
    private View d;
    private View e;
    private View f;
    private View g;
    private View h;
    private View i;

    class a extends p6 {
        final /* synthetic */ ImageCutoutBgFragment c;

        a(ImageCutoutBgFragment_ViewBinding imageCutoutBgFragment_ViewBinding, ImageCutoutBgFragment imageCutoutBgFragment) {
            this.c = imageCutoutBgFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ ImageCutoutBgFragment c;

        b(ImageCutoutBgFragment_ViewBinding imageCutoutBgFragment_ViewBinding, ImageCutoutBgFragment imageCutoutBgFragment) {
            this.c = imageCutoutBgFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class c extends p6 {
        final /* synthetic */ ImageCutoutBgFragment c;

        c(ImageCutoutBgFragment_ViewBinding imageCutoutBgFragment_ViewBinding, ImageCutoutBgFragment imageCutoutBgFragment) {
            this.c = imageCutoutBgFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class d extends p6 {
        final /* synthetic */ ImageCutoutBgFragment c;

        d(ImageCutoutBgFragment_ViewBinding imageCutoutBgFragment_ViewBinding, ImageCutoutBgFragment imageCutoutBgFragment) {
            this.c = imageCutoutBgFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class e extends p6 {
        final /* synthetic */ ImageCutoutBgFragment c;

        e(ImageCutoutBgFragment_ViewBinding imageCutoutBgFragment_ViewBinding, ImageCutoutBgFragment imageCutoutBgFragment) {
            this.c = imageCutoutBgFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class f extends p6 {
        final /* synthetic */ ImageCutoutBgFragment c;

        f(ImageCutoutBgFragment_ViewBinding imageCutoutBgFragment_ViewBinding, ImageCutoutBgFragment imageCutoutBgFragment) {
            this.c = imageCutoutBgFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class g extends p6 {
        final /* synthetic */ ImageCutoutBgFragment c;

        g(ImageCutoutBgFragment_ViewBinding imageCutoutBgFragment_ViewBinding, ImageCutoutBgFragment imageCutoutBgFragment) {
            this.c = imageCutoutBgFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public ImageCutoutBgFragment_ViewBinding(ImageCutoutBgFragment imageCutoutBgFragment, View view) {
        this.b = imageCutoutBgFragment;
        imageCutoutBgFragment.mRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.o1, "field 'mRecyclerView'"), R.id.o1, "field 'mRecyclerView'", RecyclerView.class);
        imageCutoutBgFragment.mCloudBgLayout = (LinearLayout) q6.a(q6.b(view, R.id.h3, "field 'mCloudBgLayout'"), R.id.h3, "field 'mCloudBgLayout'", LinearLayout.class);
        imageCutoutBgFragment.mRatioRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.ns, "field 'mRatioRecyclerView'"), R.id.ns, "field 'mRatioRecyclerView'", RecyclerView.class);
        imageCutoutBgFragment.mMenuLayout = q6.b(view, R.id.ez, "field 'mMenuLayout'");
        imageCutoutBgFragment.mBackgroundLayout = q6.b(view, R.id.f21cn, "field 'mBackgroundLayout'");
        imageCutoutBgFragment.mCanvasLayout = q6.b(view, R.id.f1, "field 'mCanvasLayout'");
        imageCutoutBgFragment.mScrollView = (NestedScrollView) q6.a(q6.b(view, R.id.ox, "field 'mScrollView'"), R.id.ox, "field 'mScrollView'", NestedScrollView.class);
        View b2 = q6.b(view, R.id.f0, "field 'mBtnCanvasCancel' and method 'onClick'");
        imageCutoutBgFragment.mBtnCanvasCancel = (ImageView) q6.a(b2, R.id.f0, "field 'mBtnCanvasCancel'", ImageView.class);
        this.c = b2;
        b2.setOnClickListener(new a(this, imageCutoutBgFragment));
        View b3 = q6.b(view, R.id.cm, "field 'mBtnBackgroundCancel' and method 'onClick'");
        imageCutoutBgFragment.mBtnBackgroundCancel = (ImageView) q6.a(b3, R.id.cm, "field 'mBtnBackgroundCancel'", ImageView.class);
        this.d = b3;
        b3.setOnClickListener(new b(this, imageCutoutBgFragment));
        imageCutoutBgFragment.mTextTagNew = q6.b(view, R.id.s5, "field 'mTextTagNew'");
        View b4 = q6.b(view, R.id.dh, "field 'mBtnCanvas' and method 'onClick'");
        imageCutoutBgFragment.mBtnCanvas = (TextView) q6.a(b4, R.id.dh, "field 'mBtnCanvas'", TextView.class);
        this.e = b4;
        b4.setOnClickListener(new c(this, imageCutoutBgFragment));
        View b5 = q6.b(view, R.id.dd, "field 'mBtnBackground' and method 'onClick'");
        imageCutoutBgFragment.mBtnBackground = (TextView) q6.a(b5, R.id.dd, "field 'mBtnBackground'", TextView.class);
        this.f = b5;
        b5.setOnClickListener(new d(this, imageCutoutBgFragment));
        View b6 = q6.b(view, R.id.el, "field 'mBtnText' and method 'onClick'");
        imageCutoutBgFragment.mBtnText = (TextView) q6.a(b6, R.id.el, "field 'mBtnText'", TextView.class);
        this.g = b6;
        b6.setOnClickListener(new e(this, imageCutoutBgFragment));
        View b7 = q6.b(view, R.id.ey, "method 'onClick'");
        this.h = b7;
        b7.setOnClickListener(new f(this, imageCutoutBgFragment));
        View b8 = q6.b(view, R.id.cl, "method 'onClick'");
        this.i = b8;
        b8.setOnClickListener(new g(this, imageCutoutBgFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        ImageCutoutBgFragment imageCutoutBgFragment = this.b;
        if (imageCutoutBgFragment != null) {
            this.b = null;
            imageCutoutBgFragment.mRecyclerView = null;
            imageCutoutBgFragment.mCloudBgLayout = null;
            imageCutoutBgFragment.mRatioRecyclerView = null;
            imageCutoutBgFragment.mMenuLayout = null;
            imageCutoutBgFragment.mBackgroundLayout = null;
            imageCutoutBgFragment.mCanvasLayout = null;
            imageCutoutBgFragment.mScrollView = null;
            imageCutoutBgFragment.mBtnCanvasCancel = null;
            imageCutoutBgFragment.mBtnBackgroundCancel = null;
            imageCutoutBgFragment.mTextTagNew = null;
            imageCutoutBgFragment.mBtnCanvas = null;
            imageCutoutBgFragment.mBtnBackground = null;
            imageCutoutBgFragment.mBtnText = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            this.e.setOnClickListener(null);
            this.e = null;
            this.f.setOnClickListener(null);
            this.f = null;
            this.g.setOnClickListener(null);
            this.g = null;
            this.h.setOnClickListener(null);
            this.h = null;
            this.i.setOnClickListener(null);
            this.i = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
