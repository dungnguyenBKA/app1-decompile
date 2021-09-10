package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCutoutShapeFragment_ViewBinding implements Unbinder {
    private ImageCutoutShapeFragment b;
    private View c;
    private View d;

    class a extends p6 {
        final /* synthetic */ ImageCutoutShapeFragment c;

        a(ImageCutoutShapeFragment_ViewBinding imageCutoutShapeFragment_ViewBinding, ImageCutoutShapeFragment imageCutoutShapeFragment) {
            this.c = imageCutoutShapeFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    class b extends p6 {
        final /* synthetic */ ImageCutoutShapeFragment c;

        b(ImageCutoutShapeFragment_ViewBinding imageCutoutShapeFragment_ViewBinding, ImageCutoutShapeFragment imageCutoutShapeFragment) {
            this.c = imageCutoutShapeFragment;
        }

        @Override // defpackage.p6
        public void a(View view) {
            this.c.onClick(view);
        }
    }

    public ImageCutoutShapeFragment_ViewBinding(ImageCutoutShapeFragment imageCutoutShapeFragment, View view) {
        this.b = imageCutoutShapeFragment;
        imageCutoutShapeFragment.mRecyclerView = (RecyclerView) q6.a(q6.b(view, R.id.pw, "field 'mRecyclerView'"), R.id.pw, "field 'mRecyclerView'", RecyclerView.class);
        imageCutoutShapeFragment.mTab = (RecyclerView) q6.a(q6.b(view, R.id.o2, "field 'mTab'"), R.id.o2, "field 'mTab'", RecyclerView.class);
        View b2 = q6.b(view, R.id.eh, "method 'onClick'");
        this.c = b2;
        b2.setOnClickListener(new a(this, imageCutoutShapeFragment));
        View b3 = q6.b(view, R.id.eg, "method 'onClick'");
        this.d = b3;
        b3.setOnClickListener(new b(this, imageCutoutShapeFragment));
    }

    @Override // butterknife.Unbinder
    public void a() {
        ImageCutoutShapeFragment imageCutoutShapeFragment = this.b;
        if (imageCutoutShapeFragment != null) {
            this.b = null;
            imageCutoutShapeFragment.mRecyclerView = null;
            imageCutoutShapeFragment.mTab = null;
            this.c.setOnClickListener(null);
            this.c = null;
            this.d.setOnClickListener(null);
            this.d = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
