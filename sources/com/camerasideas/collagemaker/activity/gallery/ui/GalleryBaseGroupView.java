package com.camerasideas.collagemaker.activity.gallery.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.LinearLayout;
import androidx.core.app.b;
import com.camerasideas.collagemaker.activity.ImageSelectorActivity;
import com.camerasideas.collagemaker.appdata.MediaFileInfo;
import defpackage.ql;
import defpackage.wm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import photoeditor.cutout.backgrounderaser.R;

public abstract class GalleryBaseGroupView extends LinearLayout implements b, AdapterView.OnItemClickListener, AbsListView.OnScrollListener, View.OnClickListener, wm.d {
    protected int b;
    protected GridView c;
    protected MediaFileInfo d = null;
    protected boolean e = false;
    protected xm f;
    protected MediaFoldersView g;
    protected cn h;
    protected TreeMap<String, List<MediaFileInfo>> i;
    protected Map<String, List<MediaFileInfo>> j = new HashMap();
    protected ArrayList<MediaFileInfo> k = new ArrayList<>();
    protected rm l;
    private Animation m;
    private Animation n;

    public GalleryBaseGroupView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        g(context);
    }

    @Override // com.camerasideas.collagemaker.activity.gallery.ui.b
    public void a(String str) {
        String f2 = this.f.f();
        if (f2 != null) {
            this.j.put(f2, this.f.h());
        }
        q(str, this.i.get(str));
    }

    @Override // defpackage.wm.d
    public void b(TreeMap<String, List<MediaFileInfo>> treeMap) {
    }

    @Override // defpackage.wm.d
    public void c(int i2) {
    }

    @Override // defpackage.wm.d
    public void d() {
    }

    public cn e() {
        return this.h;
    }

    public void f() {
        if (i()) {
            uq.s(this.g, 8);
            MediaFoldersView mediaFoldersView = this.g;
            Animation animation = this.n;
            if (!(mediaFoldersView == null || animation == null)) {
                mediaFoldersView.startAnimation(animation);
            }
            rm rmVar = this.l;
            if (rmVar != null) {
                ((ImageSelectorActivity) rmVar).t(false);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void g(Context context) {
        l();
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(this.b, this);
        b.Z(context);
        getResources().getDimensionPixelSize(R.dimen.r5);
        boolean z = ql.a.h;
        this.h = new cn(getContext());
        try {
            this.m = AnimationUtils.loadAnimation(context, R.anim.a8);
            this.n = AnimationUtils.loadAnimation(context, R.anim.aa);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        j(inflate);
    }

    public void h(MediaFileInfo mediaFileInfo) {
        this.d = mediaFileInfo;
    }

    public boolean i() {
        return uq.g(this.g);
    }

    /* access modifiers changed from: protected */
    public abstract void j(View view);

    public void k() {
        if (en.g()) {
            b(en.e());
        }
        en.a(this).h(this);
        en.a(this).i("image/*");
        this.f.notifyDataSetChanged();
        this.h.d(false);
    }

    /* access modifiers changed from: protected */
    public abstract void l();

    public void m(boolean z) {
        this.e = z;
    }

    public void n(int i2) {
        xm xmVar = this.f;
        if (xmVar != null) {
            xmVar.j(i2);
        }
    }

    public void o(rm rmVar) {
        this.l = rmVar;
    }

    public void onScroll(AbsListView absListView, int i2, int i3, int i4) {
    }

    public void onScrollStateChanged(AbsListView absListView, int i2) {
        if (i2 == 1) {
            f();
        }
    }

    public void p() {
        if (!i()) {
            uq.s(this.g, 0);
            MediaFoldersView mediaFoldersView = this.g;
            Animation animation = this.m;
            if (!(mediaFoldersView == null || animation == null)) {
                mediaFoldersView.startAnimation(animation);
            }
            this.g.g(this.j.keySet());
            rm rmVar = this.l;
            if (rmVar != null) {
                ((ImageSelectorActivity) rmVar).t(true);
                return;
            }
            return;
        }
        f();
    }

    /* access modifiers changed from: protected */
    public void q(String str, List<MediaFileInfo> list) {
    }

    public GalleryBaseGroupView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        g(context);
    }
}
