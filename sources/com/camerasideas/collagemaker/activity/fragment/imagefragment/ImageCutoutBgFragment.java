package com.camerasideas.collagemaker.activity.fragment.imagefragment;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.OnClick;
import com.camerasideas.collagemaker.activity.CutoutResultActivity;
import com.camerasideas.collagemaker.activity.ImageCropActivity;
import com.camerasideas.collagemaker.activity.adapter.f;
import com.camerasideas.collagemaker.activity.adapter.h;
import com.camerasideas.collagemaker.activity.adapter.k;
import com.camerasideas.collagemaker.activity.adapter.p;
import com.camerasideas.collagemaker.activity.fragment.commonfragment.CustomRatioFragment;
import com.camerasideas.collagemaker.filter.ISCropFilter;
import com.camerasideas.collagemaker.message.UpdateCutoutBGEvent;
import com.camerasideas.collagemaker.photoproc.editorview.CutoutEditorView;
import com.camerasideas.collagemaker.photoproc.graphicsitems.g;
import com.camerasideas.collagemaker.photoproc.graphicsitems.i;
import com.camerasideas.collagemaker.photoproc.graphicsitems.j;
import defpackage.dm;
import defpackage.yp;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class ImageCutoutBgFragment extends h0<Object, no> implements Object, p.b, CustomRatioFragment.b, yp.e, g.a, g.b, View.OnClickListener, yp.f, SharedPreferences.OnSharedPreferenceChangeListener {
    public static final /* synthetic */ int L0 = 0;
    private ISCropFilter A0;
    private List<in> B0 = new ArrayList();
    private int C0 = 0;
    private int D0 = -1;
    private boolean E0;
    private String F0;
    private boolean G0;
    private boolean H0;
    private dm.d I0 = new a();
    private d J0 = new b();
    private Runnable K0 = new c();
    private List<View> e0 = new ArrayList();
    private View f0;
    private CutoutEditorView g0;
    private View h0;
    private AppCompatImageView i0;
    private h j0;
    private LinearLayoutManager k0;
    private p l0;
    private LinearLayoutManager m0;
    @BindView
    View mBackgroundLayout;
    @BindView
    TextView mBtnBackground;
    @BindView
    ImageView mBtnBackgroundCancel;
    @BindView
    TextView mBtnCanvas;
    @BindView
    ImageView mBtnCanvasCancel;
    @BindView
    TextView mBtnText;
    @BindView
    View mCanvasLayout;
    @BindView
    LinearLayout mCloudBgLayout;
    @BindView
    View mMenuLayout;
    @BindView
    RecyclerView mRatioRecyclerView;
    @BindView
    RecyclerView mRecyclerView;
    @BindView
    NestedScrollView mScrollView;
    @BindView
    View mTextTagNew;
    private int n0;
    private UpdateCutoutBGEvent o0;
    private String p0;
    private Uri q0;
    private int r0;
    private int s0 = 0;
    private int t0;
    private String u0;
    private List<String> v0 = Collections.synchronizedList(new ArrayList());
    private boolean w0 = false;
    private float x0;
    private String y0;
    private int z0;

    class a implements dm.d {
        a() {
        }

        @Override // defpackage.dm.d
        public void l(RecyclerView recyclerView, RecyclerView.b0 b0Var, int i, View view) {
            if (i != -1 && i != 1) {
                if ((i != ImageCutoutBgFragment.this.t0 || i == 2 || i == 3) && ImageCutoutBgFragment.this.j0 != null) {
                    if (ImageCutoutBgFragment.this.g0 != null) {
                        ImageCutoutBgFragment.this.g0.w();
                        ImageCutoutBgFragment.this.g0.invalidate();
                    }
                    if (ImageCutoutBgFragment.this.j0.d(i) == 4) {
                        ImageCutoutBgFragment.this.g0.A0(new a(this, i));
                        return;
                    }
                    hn z = ImageCutoutBgFragment.this.j0.z(i);
                    if (z != null) {
                        if (!z.g() || androidx.core.app.b.d0(((tm) ImageCutoutBgFragment.this).U)) {
                            ImageCutoutBgFragment.this.l2(i, z);
                        } else {
                            ImageCutoutBgFragment.this.v1("ProBG");
                        }
                    }
                }
            }
        }
    }

    class b implements d {
        b() {
        }
    }

    class c implements Runnable {
        c() {
        }

        public void run() {
            try {
                ImageCutoutBgFragment imageCutoutBgFragment = ImageCutoutBgFragment.this;
                NestedScrollView nestedScrollView = imageCutoutBgFragment.mScrollView;
                if (nestedScrollView != null) {
                    nestedScrollView.scrollTo(0, imageCutoutBgFragment.C0 == 0 ? 0 : (ImageCutoutBgFragment.this.C0 * ImageCutoutBgFragment.this.n0) + c2.b(((tm) ImageCutoutBgFragment.this).U, 60.0f));
                    if (ImageCutoutBgFragment.this.D0 > -1) {
                        ImageCutoutBgFragment imageCutoutBgFragment2 = ImageCutoutBgFragment.this;
                        imageCutoutBgFragment2.h2(imageCutoutBgFragment2.C0, true);
                    }
                    if (ImageCutoutBgFragment.this.t0 > 0 && ImageCutoutBgFragment.this.k0 != null) {
                        ImageCutoutBgFragment.this.k0.R1(ImageCutoutBgFragment.this.t0, c2.h(((tm) ImageCutoutBgFragment.this).U) / 2);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public interface d {
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void W1(String str, int i, boolean z) {
        Intent intent = new Intent(this.W, ImageCropActivity.class);
        intent.putExtra("ORG_FILE_PATH", str);
        intent.putExtra("CROP_RATIO", this.x0);
        intent.putExtra("CROP_ORIGINAL_RATIO", this.g0.F());
        intent.putExtra("CROP_RATIO_NAME", this.y0);
        intent.putExtra("CROP_ENCRYPTED", z);
        k1(intent, i);
    }

    private void Z1() {
        this.B0.clear();
        ArrayList arrayList = new ArrayList(yp.F().G());
        if (arrayList.size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                gq gqVar = (gq) it.next();
                if (gqVar.b(this.U)) {
                    jn jnVar = new jn();
                    jnVar.j(gqVar.b);
                    jnVar.m(gqVar.i);
                    jnVar.o(gqVar.h);
                    jnVar.q(gqVar);
                    File[] listFiles = new File(dq.b(gqVar.h)).listFiles(l.a);
                    if (listFiles != null && listFiles.length > 0) {
                        for (File file : listFiles) {
                            String absolutePath = file.getAbsolutePath();
                            if (file.getName().contains("a") || file.getName().contains("bg")) {
                                jnVar.k(absolutePath);
                            } else if (file.getName().contains("b")) {
                                jnVar.n(absolutePath);
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(gqVar.g())) {
                        if (!arrayList2.contains(gqVar.g())) {
                            arrayList2.add(gqVar.g());
                            in inVar = new in();
                            inVar.c(gqVar.g());
                            inVar.d(new ArrayList());
                            inVar.b().add(jnVar);
                            this.B0.add(inVar);
                        } else {
                            for (in inVar2 : this.B0) {
                                if (gqVar.g().equalsIgnoreCase(inVar2.a())) {
                                    inVar2.b().add(jnVar);
                                }
                            }
                        }
                    }
                }
            }
        } else {
            yp.F().K();
        }
        if (this.B0.size() > 0) {
            this.mCloudBgLayout.removeAllViews();
            for (int i = 0; i < this.B0.size(); i++) {
                LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(this.U).inflate(R.layout.c6, (ViewGroup) null);
                RecyclerView recyclerView = (RecyclerView) linearLayout.findViewById(R.id.jf);
                in inVar3 = this.B0.get(i);
                ((TextView) linearLayout.findViewById(R.id.f2)).setText(inVar3.a());
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(0, false);
                f fVar = new f(this.U, inVar3);
                fVar.z(this.p0);
                recyclerView.setFocusableInTouchMode(false);
                recyclerView.requestFocus();
                recyclerView.setLayoutManager(linearLayoutManager);
                recyclerView.setAdapter(fVar);
                dm.d(recyclerView).e(new b(this, i));
                this.mCloudBgLayout.addView(linearLayout);
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void h2(int i, boolean z) {
        LinearLayout linearLayout;
        if (this.mCloudBgLayout.getChildCount() > 0 && (linearLayout = (LinearLayout) this.mCloudBgLayout.getChildAt(i)) != null) {
            RecyclerView recyclerView = (RecyclerView) linearLayout.findViewById(R.id.jf);
            if (recyclerView.getAdapter() instanceof f) {
                ((f) recyclerView.getAdapter()).z(this.p0);
                if (i == this.C0 && (recyclerView.getLayoutManager() instanceof LinearLayoutManager) && z) {
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
                    int t1 = linearLayoutManager.t1();
                    int y1 = linearLayoutManager.y1();
                    int i2 = this.D0;
                    if (i2 <= t1 || i2 >= y1) {
                        linearLayoutManager.R1(i2, c2.h(this.U) / 2);
                    }
                }
            }
        }
    }

    private void k2(int i) {
        CutoutEditorView cutoutEditorView;
        if (this.j0 != null && (cutoutEditorView = this.g0) != null) {
            if (i == 0) {
                n2(null, null);
                this.p0 = null;
                this.q0 = null;
                this.A0 = null;
                this.r0 = 0;
                this.t0 = 0;
                this.j0.C(0);
                this.j0.B(h.m);
                r2("");
            } else if (i == 1) {
                this.t0 = 2;
                this.p0 = null;
                this.r0 = 0;
                this.q0 = cutoutEditorView.B();
                this.A0 = this.g0.A();
                this.j0.C(2);
                this.j0.B(h.m);
                r2("");
                n2(this.g0.B(), this.A0);
                this.s0 = 1;
            } else if (i == 2) {
                o2(cutoutEditorView.z(), true);
                this.t0 = 3;
                this.j0.B(this.g0.z());
                this.r0 = this.g0.z();
                this.p0 = null;
                this.q0 = null;
                this.A0 = null;
                r2("");
            } else if (i == 3) {
                int z = cutoutEditorView.z();
                this.r0 = z;
                o2(z, false);
                this.p0 = null;
                this.q0 = null;
                this.A0 = null;
                int A = this.j0.A(this.g0.z());
                this.t0 = A;
                this.j0.C(A);
                this.j0.B(h.m);
                r2("");
            } else if (i == 4) {
                this.p0 = cutoutEditorView.J();
                this.q0 = null;
                this.r0 = 0;
                this.A0 = this.g0.A();
                this.j0.B(h.m);
                r2(this.p0);
                this.t0 = -1;
                this.j0.C(-1);
                jn X1 = X1(this.p0);
                if (X1 != null) {
                    X1.l(this.A0);
                    m2(X1);
                }
                this.mCloudBgLayout.postDelayed(this.K0, 100);
            } else if (i == 5) {
                int z2 = cutoutEditorView.z();
                this.r0 = z2;
                p2(z2);
                this.p0 = null;
                this.q0 = null;
                this.A0 = null;
                int A2 = this.j0.A(this.g0.z());
                this.t0 = A2;
                this.j0.C(A2);
                this.j0.B(h.m);
                r2("");
            }
        }
    }

    /* access modifiers changed from: private */
    public void r2(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (int i = 0; i < this.B0.size(); i++) {
                in inVar = this.B0.get(i);
                for (int i2 = 0; i2 < inVar.b().size(); i2++) {
                    if (TextUtils.equals(str, inVar.b().get(i2).e())) {
                        h2(this.C0, false);
                        this.C0 = i;
                        this.D0 = i2;
                        h2(i, true);
                        return;
                    }
                }
            }
            return;
        }
        h2(this.C0, false);
        this.C0 = 0;
        this.D0 = -1;
        h2(0, true);
    }

    private void s2(View view) {
        for (View view2 : this.e0) {
            uq.t(view2, view2.getId() == view.getId());
            if (view.getId() == this.mMenuLayout.getId()) {
                uq.t(this.mMenuLayout, true);
                uq.t(this.f0, true);
                uq.t(this.h0, true);
            } else {
                uq.t(this.mMenuLayout, false);
                uq.t(this.f0, false);
                uq.t(this.h0, false);
            }
        }
        if (view.getId() == this.mBackgroundLayout.getId()) {
            this.mCloudBgLayout.postDelayed(this.K0, 100);
        }
        CutoutEditorView cutoutEditorView = this.g0;
        if (cutoutEditorView != null) {
            cutoutEditorView.post(new i(this));
        }
    }

    @Override // com.camerasideas.collagemaker.activity.fragment.imagefragment.h0, defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void D0(View view, Bundle bundle) {
        UpdateCutoutBGEvent updateCutoutBGEvent;
        super.D0(view, bundle);
        if (bundle != null) {
            this.w0 = true;
            androidx.core.app.b.t0(this.W, ImageCutoutBgFragment.class);
            return;
        }
        uq.v(this.mBtnCanvas);
        uq.v(this.mBtnBackground);
        uq.v(this.mBtnText);
        uq.t(this.mTextTagNew, com.camerasideas.collagemaker.appdata.f.g(this.U).getBoolean("EnableShowTextTagNew", false));
        O().getDimensionPixelSize(R.dimen.p_);
        c2.d(this.U, 115.0f);
        O().getDimensionPixelSize(R.dimen.o4);
        this.f0 = this.W.findViewById(R.id.fy);
        this.g0 = (CutoutEditorView) this.W.findViewById(R.id.iz);
        this.h0 = this.W.findViewById(R.id.jz);
        this.i0 = (AppCompatImageView) this.W.findViewById(R.id.dr);
        this.i0.setOnClickListener(this);
        ((AppCompatImageView) this.W.findViewById(R.id.f7do)).setOnClickListener(this);
        this.e0.add(this.mMenuLayout);
        this.e0.add(this.mCanvasLayout);
        this.e0.add(this.mBackgroundLayout);
        uq.t(this.d0, false);
        uq.t(this.f0, true);
        s2(this.mMenuLayout);
        if (A() != null) {
            this.o0 = (UpdateCutoutBGEvent) A().getParcelable("mEventArgument");
            this.F0 = A().getString("CutoutEditMode");
            this.G0 = A().getBoolean("FromShape");
            int i = A().getInt("CutoutStickerItemCount");
            if (i > 1) {
                for (int i2 = 1; i2 < i; i2++) {
                    com.camerasideas.collagemaker.photoproc.graphicsitems.h j = i.k().j();
                    if (j != null) {
                        this.g0.t(j);
                    }
                }
                w1();
            }
        }
        this.H0 = this.g0.N();
        h hVar = new h(this.U, this.H0);
        this.j0 = hVar;
        this.mRecyclerView.setAdapter(hVar);
        this.mRecyclerView.addItemDecoration(new k(c2.b(this.U, 7.5f), true));
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(0, false);
        this.k0 = linearLayoutManager;
        this.mRecyclerView.setLayoutManager(linearLayoutManager);
        dm.d(this.mRecyclerView).e(this.I0);
        Z1();
        this.n0 = this.U.getResources().getDimensionPixelSize(R.dimen.pk) + this.U.getResources().getDimensionPixelSize(R.dimen.on);
        CutoutEditorView cutoutEditorView = this.g0;
        Objects.requireNonNull(cutoutEditorView);
        ml.h(new com.camerasideas.collagemaker.photoproc.editorview.b(cutoutEditorView));
        if (this.g0.C() != this.g0.F()) {
            CutoutEditorView cutoutEditorView2 = this.g0;
            cutoutEditorView2.s(cutoutEditorView2.C(), 1.0f, true, this.j0 == null || this.o0 == null);
            this.x0 = this.g0.C();
        } else {
            this.x0 = this.g0.F();
        }
        this.y0 = this.g0.I();
        if (!(this.j0 == null || (updateCutoutBGEvent = this.o0) == null)) {
            int a2 = updateCutoutBGEvent.a();
            this.s0 = a2;
            this.z0 = a2;
            k2(a2);
        }
        LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(0, false);
        this.m0 = linearLayoutManager2;
        this.mRatioRecyclerView.setLayoutManager(linearLayoutManager2);
        this.mRatioRecyclerView.addItemDecoration(new k(c2.b(this.U, 15.0f)));
        p pVar = new p(this.U, this.y0, false);
        this.l0 = pVar;
        this.mRatioRecyclerView.setAdapter(pVar);
        this.l0.C(this);
        yp.F().x(this);
        yp.F().y(this);
        androidx.core.app.b.r0(this);
        com.camerasideas.collagemaker.network.b.a().c(this);
        if (!androidx.core.app.b.f0(this.U)) {
            mr.d(T(R.string.e_));
        }
    }

    public jn X1(String str) {
        jn jnVar = null;
        if (str == null) {
            return null;
        }
        for (in inVar : this.B0) {
            int i = 0;
            while (true) {
                if (i >= inVar.b().size()) {
                    break;
                } else if (inVar.b().get(i).f().j.endsWith(str)) {
                    jnVar = inVar.b().get(i);
                    break;
                } else {
                    i++;
                }
            }
        }
        return jnVar;
    }

    public int Y1(String str) {
        for (int i = 0; i < this.B0.size(); i++) {
            for (jn jnVar : this.B0.get(i).b()) {
                if (TextUtils.equals(str, jnVar.e())) {
                    return i;
                }
            }
        }
        return -1;
    }

    public void a2(int i, RecyclerView recyclerView, RecyclerView.b0 b0Var, int i2, View view) {
        d dVar = this.J0;
        if (dVar != null) {
            in inVar = this.B0.get(i);
            b bVar = (b) dVar;
            if (!uq.f() && i != -1 && i2 != -1 && i2 < inVar.b().size()) {
                jn jnVar = inVar.b().get(i2);
                if (!jnVar.h() || androidx.core.app.b.d0(ImageCutoutBgFragment.this.U)) {
                    if (ImageCutoutBgFragment.this.g0 != null) {
                        ImageCutoutBgFragment.this.g0.w();
                        ImageCutoutBgFragment.this.g0.invalidate();
                    }
                    if (ImageCutoutBgFragment.this.j0 != null) {
                        ImageCutoutBgFragment.this.j0.B(h.m);
                    }
                    if (!yp.S(jnVar.f())) {
                        ImageCutoutBgFragment.this.u0 = jnVar.e();
                        ImageCutoutBgFragment.this.v0.add(ImageCutoutBgFragment.this.u0);
                        yp.F().z(jnVar.f());
                    } else if (!bm.e(jnVar.a())) {
                    } else {
                        if (!jnVar.i() || jnVar.f() == null || !jnVar.f().f()) {
                            ImageCutoutBgFragment.this.s0 = 4;
                            ImageCutoutBgFragment.this.p0 = jnVar.e();
                            ImageCutoutBgFragment.this.r0 = 0;
                            ImageCutoutBgFragment.this.A0 = null;
                            ImageCutoutBgFragment.this.q0 = null;
                            ImageCutoutBgFragment.this.q2(i, i2);
                            ImageCutoutBgFragment.this.t0 = -1;
                            ImageCutoutBgFragment.this.j0.C(-1);
                            ImageCutoutBgFragment.this.m2(jnVar);
                            return;
                        }
                        ImageCutoutBgFragment.this.W1(jnVar.a(), 15, jnVar.g());
                    }
                } else {
                    ImageCutoutBgFragment.this.v1("ProBG");
                }
            }
        }
    }

    public void b2() {
        this.g0.s(this.x0, 1.0f, false, true);
    }

    public void c2() {
        this.g0.s(this.x0, 1.0f, false, true);
    }

    public void d2() {
        this.g0.s(this.x0, 1.0f, false, true);
    }

    @Override // com.camerasideas.collagemaker.activity.fragment.commonfragment.CustomRatioFragment.b
    public void e(float f, float f2) {
        this.g0.u0(T(R.string.bg));
        this.g0.s(f, f2, true, true);
        this.l0.D(T(R.string.bg));
    }

    @Override // androidx.fragment.app.Fragment
    public void e0(int i, int i2, Intent intent) {
        CutoutEditorView cutoutEditorView;
        CutoutEditorView cutoutEditorView2;
        if (i == 5 && intent != null) {
            em.h("TesterLog-Background", "选图做自定义背景");
            Uri data = intent.getData();
            if (!(data == null || this.j0 == null)) {
                try {
                    this.U.grantUriPermission("photoeditor.cutout.backgrounderaser", data, 1);
                } catch (Exception e) {
                    e.printStackTrace();
                    data = cm.c(data);
                }
                if (data != null) {
                    this.q0 = data;
                    hn z = this.j0.z(2);
                    if (z != null) {
                        z.h(this.q0);
                    }
                    W1(this.q0.toString(), 14, false);
                    return;
                }
            }
            mr.d(T(R.string.ep));
            if (this.j0 == null || this.g0 == null) {
                androidx.core.app.b.t0(this.W, ImageCutoutBgFragment.class);
            }
        } else if (i == 14 && intent != null) {
            ISCropFilter iSCropFilter = (ISCropFilter) intent.getParcelableExtra("CROP_FILTER");
            if (!(this.g0 == null || iSCropFilter == null)) {
                float q = iSCropFilter.q();
                this.x0 = q;
                this.g0.s(q, 1.0f, true, false);
                hn z2 = this.j0.z(2);
                z2.i(iSCropFilter);
                this.t0 = 2;
                this.p0 = null;
                this.r0 = 0;
                this.q0 = z2.a();
                this.A0 = iSCropFilter;
                this.j0.B(h.m);
                this.j0.C(2);
                r2("");
                n2(z2.a(), iSCropFilter);
                this.s0 = 1;
                this.C0 = 0;
                this.D0 = -1;
            }
            String stringExtra = intent.getStringExtra("CROP_RATIO_NAME");
            if (!(TextUtils.isEmpty(stringExtra) || (cutoutEditorView2 = this.g0) == null || this.l0 == null)) {
                this.y0 = stringExtra;
                cutoutEditorView2.u0(stringExtra);
                this.l0.D(this.y0);
            }
            if (this.g0 == null) {
                androidx.core.app.b.t0(this.W, ImageCutoutBgFragment.class);
            }
        } else if (i == 15 && intent != null) {
            ISCropFilter iSCropFilter2 = (ISCropFilter) intent.getParcelableExtra("CROP_FILTER");
            if (!(this.g0 == null || iSCropFilter2 == null)) {
                float q2 = iSCropFilter2.q();
                this.x0 = q2;
                this.g0.s(q2, 1.0f, true, false);
                this.A0 = iSCropFilter2;
                jn X1 = X1(this.p0);
                if (X1 != null) {
                    X1.l(iSCropFilter2);
                    m2(X1);
                }
            }
            String stringExtra2 = intent.getStringExtra("CROP_RATIO_NAME");
            if (!(TextUtils.isEmpty(stringExtra2) || (cutoutEditorView = this.g0) == null || this.l0 == null)) {
                this.y0 = stringExtra2;
                cutoutEditorView.u0(stringExtra2);
                this.l0.D(this.y0);
            }
            if (this.g0 == null) {
                androidx.core.app.b.t0(this.W, ImageCutoutBgFragment.class);
            }
        }
    }

    public void e2() {
        this.g0.s(this.x0, 1.0f, false, true);
    }

    @Override // com.camerasideas.collagemaker.activity.adapter.p.b
    public void f(String str, int i, int i2) {
        this.g0.u0(str);
        if (i == 0 && i2 == -1) {
            CustomRatioFragment customRatioFragment = (CustomRatioFragment) ((sm) Fragment.Y(this.U, CustomRatioFragment.class.getName(), null));
            customRatioFragment.x1(this.W.getSupportFragmentManager());
            customRatioFragment.B1(this);
        } else if (i == -1 && i2 == 0) {
            this.g0.s((float) androidx.core.app.b.V(this.U), (float) (yl.a(this.U) + com.camerasideas.collagemaker.appdata.f.c(this.U) + androidx.core.app.b.U(this.U)), true, true);
        } else if (i == -1 && i2 == -1) {
            this.g0.s(0.0f, 0.0f, true, true);
        } else {
            this.g0.s((float) i, (float) i2, true, true);
        }
    }

    public /* synthetic */ void f2(Uri uri, ISCropFilter iSCropFilter, ud0 ud0) {
        if (uri != null) {
            try {
                this.U.grantUriPermission("photoeditor.cutout.backgrounderaser", uri, 1);
            } catch (Exception e) {
                e.printStackTrace();
                uri = cm.c(uri);
            }
        } else {
            uri = null;
        }
        ud0.c(Boolean.valueOf(this.g0.j0(uri, iSCropFilter)));
        ud0.a();
    }

    public /* synthetic */ void g2() {
        this.g0.w();
        this.g0.invalidate();
    }

    public void h() {
        if (Z()) {
            yp.F().K();
        }
    }

    public void i2() {
        if (uq.g(this.mCanvasLayout)) {
            onClick(this.mBtnCanvasCancel);
        } else if (uq.g(this.mBackgroundLayout)) {
            onClick(this.mBtnBackgroundCancel);
        } else {
            UpdateCutoutBGEvent updateCutoutBGEvent = new UpdateCutoutBGEvent();
            updateCutoutBGEvent.c(this.s0);
            updateCutoutBGEvent.d(this.G0);
            am.a().b(updateCutoutBGEvent);
            uq.s(this.d0, this.G0 ? 4 : 0);
            uq.t(this.f0, false);
            androidx.core.app.b.t0(this.W, ImageCutoutBgFragment.class);
        }
    }

    @Override // defpackage.yp.e
    public void j(String str) {
        if (this.v0.contains(str)) {
            h2(Y1(str), false);
        }
    }

    public void j2(int i, String str, boolean z) {
        am.a().b(new com.camerasideas.collagemaker.message.c(i, str, z));
    }

    public void k() {
    }

    /* access modifiers changed from: protected */
    public void l2(int i, hn hnVar) {
        int i2;
        int i3;
        if (i != 2) {
            if (!TextUtils.isEmpty(hnVar.b())) {
                try {
                    i2 = Color.parseColor(hnVar.b());
                } catch (Exception e) {
                    e.printStackTrace();
                    i2 = 0;
                }
                this.r0 = i2;
                try {
                    i3 = Color.parseColor(hnVar.b());
                } catch (Exception e2) {
                    e2.printStackTrace();
                    i3 = 0;
                }
                o2(i3, false);
                this.s0 = 3;
            } else if (hnVar.e() == 0 || hnVar.f() != 5) {
                n2(null, null);
                this.s0 = 0;
                this.r0 = 0;
            } else {
                this.s0 = 5;
                this.r0 = hnVar.e();
                p2(hnVar.e());
            }
            this.j0.B(h.m);
            this.p0 = null;
            this.q0 = null;
            this.A0 = null;
            this.t0 = i;
            this.j0.C(i);
            r2("");
            this.C0 = 0;
            this.D0 = -1;
        } else if (!Environment.getExternalStorageState().equals("mounted")) {
            mr.d(T(R.string.h6));
            em.h("TesterLog-Blur BG", "点击选取自定义背景时SD未挂载");
        } else if (!rq.b(this.W)) {
            em.h("TesterLog-Blur BG", "点击选取自定义背景时校验路径失败");
        } else {
            Intent intent = new Intent("android.intent.action.PICK");
            intent.setFlags(536870912);
            intent.setType("image/*");
            if (intent.resolveActivity(this.W.getPackageManager()) != null) {
                k1(intent, 5);
                return;
            }
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            intent2.setType("image/*");
            intent2.setFlags(536870912);
            if (intent2.resolveActivity(this.W.getPackageManager()) != null) {
                k1(intent2, 5);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.tm
    public int m1() {
        return R.layout.bb;
    }

    public void m2(jn jnVar) {
        CutoutEditorView cutoutEditorView;
        if (jnVar != null && (cutoutEditorView = this.g0) != null) {
            cutoutEditorView.l0(jnVar);
        }
    }

    @Override // defpackage.yp.e
    public void n(String str) {
        jn jnVar;
        jn jnVar2;
        File[] listFiles;
        if (this.v0.contains(str)) {
            this.v0.remove(str);
            if (str != null && str.startsWith("cutout_")) {
                int Y1 = Y1(str);
                in inVar = this.B0.get(Y1);
                int i = 0;
                int i2 = 0;
                while (true) {
                    jnVar = null;
                    if (i2 >= inVar.b().size()) {
                        jnVar2 = null;
                        break;
                    } else if (TextUtils.equals(str, inVar.b().get(i2).e())) {
                        jnVar2 = inVar.b().get(i2);
                        break;
                    } else {
                        i2++;
                    }
                }
                if (!(jnVar2 == null || (listFiles = new File(dq.b(str)).listFiles(h.a)) == null || listFiles.length <= 0)) {
                    for (File file : listFiles) {
                        String absolutePath = file.getAbsolutePath();
                        if (file.getName().contains("a") || file.getName().contains("bg")) {
                            jnVar2.k(absolutePath);
                        } else if (file.getName().contains("b")) {
                            jnVar2.n(absolutePath);
                        }
                    }
                }
                if (!str.equals(this.u0) || !this.E0 || !uq.g(this.mBackgroundLayout)) {
                    h2(Y1, false);
                    return;
                }
                this.s0 = 4;
                this.p0 = str;
                this.r0 = 0;
                this.A0 = null;
                this.q0 = null;
                r2(str);
                this.t0 = -1;
                this.j0.C(-1);
                in inVar2 = this.B0.get(Y1);
                while (true) {
                    if (i >= inVar2.b().size()) {
                        break;
                    } else if (TextUtils.equals(str, inVar2.b().get(i).e())) {
                        jnVar = inVar2.b().get(i);
                        break;
                    } else {
                        i++;
                    }
                }
                if (jnVar != null) {
                    m2(jnVar);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // defpackage.vm
    public yn n1() {
        return new no();
    }

    public void n2(Uri uri, ISCropFilter iSCropFilter) {
        em.h("ImageCutoutBgFragment", "选取照片做Cutout背景: " + uri);
        u1();
        new ve0(new j(this, uri, iSCropFilter)).e(nf0.b()).a(yd0.a()).b(g.a, new e(this), new m(this), oe0.a());
    }

    @Override // com.camerasideas.collagemaker.activity.fragment.imagefragment.h0, defpackage.vm, androidx.fragment.app.Fragment, defpackage.tm
    public void o0() {
        super.o0();
        if (!this.w0) {
            LinearLayout linearLayout = this.mCloudBgLayout;
            if (linearLayout != null) {
                linearLayout.removeCallbacks(this.K0);
            }
            s1();
            yp.F().T(this);
            yp.F().U(this);
            androidx.core.app.b.M0(this);
        }
    }

    public void o2(int i, boolean z) {
        CutoutEditorView cutoutEditorView = this.g0;
        if (cutoutEditorView != null) {
            cutoutEditorView.i0(i, z);
        }
    }

    @OnClick
    public void onClick(View view) {
        jn X1;
        p pVar;
        int i = 4;
        String str = "";
        switch (view.getId()) {
            case R.id.cl /*{ENCODED_INT: 2131230842}*/:
                this.z0 = this.s0;
                s2(this.mMenuLayout);
                this.g0.d0(this.r0);
                this.g0.f0(this.q0);
                this.g0.v0(this.p0);
                this.g0.e0(this.A0);
                return;
            case R.id.cm /*{ENCODED_INT: 2131230843}*/:
                int i2 = this.z0;
                if (i2 != this.s0) {
                    this.s0 = i2;
                    k2(i2);
                } else if (i2 == 3) {
                    if (this.g0.z() != this.r0) {
                        int z = this.g0.z();
                        this.r0 = z;
                        o2(z, false);
                        this.p0 = null;
                        this.q0 = null;
                        this.A0 = null;
                        int A = this.j0.A(this.r0);
                        this.t0 = A;
                        this.j0.C(A);
                        this.j0.B(h.m);
                        r2(str);
                    }
                } else if (i2 == 5) {
                    if (this.g0.z() != this.r0) {
                        int z2 = this.g0.z();
                        this.r0 = z2;
                        p2(z2);
                        this.p0 = null;
                        this.q0 = null;
                        this.A0 = null;
                        int A2 = this.j0.A(this.r0);
                        this.t0 = A2;
                        this.j0.C(A2);
                        this.j0.B(h.m);
                        r2(str);
                    }
                } else if (i2 == 2) {
                    if (this.g0.z() != this.r0) {
                        int z3 = this.g0.z();
                        this.r0 = z3;
                        o2(z3, true);
                        this.t0 = 3;
                        this.j0.B(this.r0);
                        r2(str);
                        this.p0 = null;
                        this.q0 = null;
                        this.A0 = null;
                    }
                } else if (i2 == 1) {
                    hn z4 = this.j0.z(2);
                    if (!(z4.a() == null || this.g0.B() == null)) {
                        if (TextUtils.equals(z4.a().toString(), this.g0.B().toString()) && z4.c() != this.g0.A()) {
                            this.t0 = 2;
                            this.p0 = null;
                            this.r0 = 0;
                            this.q0 = this.g0.B();
                            ISCropFilter A3 = this.g0.A();
                            this.A0 = A3;
                            z4.i(A3);
                            this.j0.B(h.m);
                            this.j0.C(2);
                            r2(str);
                            n2(z4.a(), z4.c());
                            this.s0 = 1;
                            this.C0 = 0;
                            this.D0 = -1;
                        } else if (!TextUtils.equals(z4.a().toString(), this.g0.B().toString())) {
                            this.t0 = 2;
                            this.p0 = null;
                            this.r0 = 0;
                            Uri B = this.g0.B();
                            this.q0 = B;
                            z4.h(B);
                            ISCropFilter A4 = this.g0.A();
                            this.A0 = A4;
                            z4.i(A4);
                            this.j0.B(h.m);
                            this.j0.C(2);
                            r2(str);
                            n2(z4.a(), z4.c());
                            this.s0 = 1;
                            this.C0 = 0;
                            this.D0 = -1;
                        }
                    }
                } else if (i2 == 4 && !TextUtils.equals(this.g0.J(), this.p0)) {
                    this.p0 = this.g0.J();
                    this.r0 = 0;
                    this.q0 = null;
                    this.A0 = this.g0.A();
                    jn X12 = X1(this.p0);
                    r2(this.p0);
                    this.g0.l0(X12);
                } else if (this.z0 == 4 && TextUtils.equals(this.g0.J(), this.p0) && (X1 = X1(this.g0.J())) != null && X1.b() != this.g0.A()) {
                    X1.l(this.g0.A());
                    this.p0 = this.g0.J();
                    this.r0 = 0;
                    this.q0 = null;
                    this.A0 = this.g0.A();
                    r2(this.p0);
                    this.g0.l0(X1);
                }
                s2(this.mMenuLayout);
                return;
            case R.id.dd /*{ENCODED_INT: 2131230871}*/:
                uq.n(this.U, "EditClick", "Background");
                s2(this.mBackgroundLayout);
                CutoutEditorView cutoutEditorView = this.g0;
                if (cutoutEditorView != null) {
                    cutoutEditorView.post(new c(this));
                    return;
                }
                return;
            case R.id.dh /*{ENCODED_INT: 2131230875}*/:
                uq.n(this.U, "EditClick", "Canvas");
                s2(this.mCanvasLayout);
                LinearLayoutManager linearLayoutManager = this.m0;
                if (!(linearLayoutManager == null || (pVar = this.l0) == null)) {
                    linearLayoutManager.R1(pVar.z(), c2.h(this.U) / 2);
                }
                CutoutEditorView cutoutEditorView2 = this.g0;
                if (cutoutEditorView2 != null) {
                    cutoutEditorView2.post(new d(this));
                    return;
                }
                return;
            case R.id.f7do /*{ENCODED_INT: 2131230882}*/:
                UpdateCutoutBGEvent updateCutoutBGEvent = new UpdateCutoutBGEvent();
                updateCutoutBGEvent.c(this.s0);
                updateCutoutBGEvent.d(this.G0);
                am.a().b(updateCutoutBGEvent);
                View view2 = this.d0;
                if (!this.G0) {
                    i = 0;
                }
                uq.s(view2, i);
                uq.t(this.f0, false);
                androidx.core.app.b.t0(this.W, ImageCutoutBgFragment.class);
                return;
            case R.id.dr /*{ENCODED_INT: 2131230885}*/:
                if (Z()) {
                    Intent intent = new Intent();
                    intent.setClass(this.W, CutoutResultActivity.class);
                    j1(intent);
                }
                g e = g.e(this.W);
                boolean V = this.g0.V();
                e.h(this.g0);
                if (TextUtils.isEmpty(this.p0)) {
                    int i3 = this.s0;
                    if (i3 == 0) {
                        V = true;
                        str = "Transparent";
                    } else if (i3 == 1) {
                        str = "Custom";
                    } else if (i3 == 2) {
                        str = "Palette";
                    } else if (i3 == 3) {
                        str = "Color";
                    } else if (i3 == 4 && !TextUtils.isEmpty(this.g0.J())) {
                        str = this.g0.J();
                    }
                } else {
                    str = this.p0;
                }
                e.g(this, this, V);
                if (!TextUtils.isEmpty(this.F0)) {
                    uq.n(this.U, "SaveFeature_Edit", this.F0);
                }
                if (this.g0.K() == null || this.g0.K().d() == null) {
                    if (this.g0.R()) {
                        uq.n(this.U, "SaveFeature_Edit", "Eraser");
                    }
                    if (this.g0.S()) {
                        uq.n(this.U, "SaveFeature_Edit", "Magic");
                    }
                    if (this.g0.T()) {
                        uq.n(this.U, "SaveFeature_Edit", "Smooth");
                    }
                } else {
                    uq.n(this.U, "SaveFeature_Shape", this.g0.K().d());
                }
                if (!"Transparent".equals(str)) {
                    uq.n(this.U, "SaveFeature_Edit", "Background");
                }
                if (!"Original".equals(this.g0.y())) {
                    uq.n(this.U, "SaveFeature_Edit", "Canvas");
                }
                if (!(this.g0.D() == null || this.g0.D().b() == null || !this.g0.D().b().r())) {
                    uq.n(this.U, "SaveFeature_Edit", "BGCrop");
                }
                if (i.k().n()) {
                    uq.n(this.U, "SaveFeature_Edit", "Text");
                }
                if ("Color".equals(str)) {
                    int z5 = this.g0.z();
                    String[] strArr = com.camerasideas.collagemaker.appdata.b.g;
                    if (z5 == Color.parseColor(strArr[0])) {
                        uq.n(this.U, "SaveFeature_Bg", "White");
                    } else if (this.g0.z() == Color.parseColor(strArr[1])) {
                        uq.n(this.U, "SaveFeature_Bg", "Black");
                    } else if (this.g0.z() == Color.parseColor(strArr[2])) {
                        uq.n(this.U, "SaveFeature_Bg", "Green");
                    } else if (this.g0.z() == Color.parseColor(strArr[3])) {
                        uq.n(this.U, "SaveFeature_Bg", "Red");
                    } else if (this.g0.z() == Color.parseColor(strArr[4])) {
                        uq.n(this.U, "SaveFeature_Bg", "Blue");
                    } else {
                        uq.n(this.U, "SaveFeature_Bg", "Color");
                    }
                } else {
                    uq.n(this.U, "SaveFeature_Bg", str);
                }
                for (com.camerasideas.collagemaker.photoproc.graphicsitems.b bVar : i.k().l()) {
                    if (bVar instanceof j) {
                        j jVar = (j) bVar;
                        uq.n(this.U, "SaveFeature_Font", jVar.G());
                        if (jVar.H() != null) {
                            if (jVar.H().z() != 0) {
                                uq.n(this.U, "SaveFeature_Text_Color", c2.m(this.U, jVar.H().z()));
                            } else {
                                uq.n(this.U, "SaveFeature_Text_Color", androidx.core.app.b.b0(jVar.H().y()));
                            }
                            if (jVar.H().j() != 0) {
                                uq.n(this.U, "SaveFeature_Text_Outline", c2.m(this.U, jVar.H().j()));
                            } else {
                                uq.n(this.U, "SaveFeature_Text_Outline", androidx.core.app.b.b0(jVar.H().i()));
                            }
                            if (jVar.H().h() != 0) {
                                uq.n(this.U, "SaveFeature_Text_Background", c2.m(this.U, jVar.H().h()));
                            } else {
                                uq.n(this.U, "SaveFeature_Text_Background", androidx.core.app.b.b0(jVar.H().g()));
                            }
                            if (jVar.H().t() != 0) {
                                uq.n(this.U, "SaveFeature_Text_Background", c2.m(this.U, jVar.H().t()));
                            } else {
                                uq.n(this.U, "SaveFeature_Text_Background", androidx.core.app.b.b0(jVar.H().r()));
                            }
                            uq.n(this.U, "SaveFeature_Text", jVar.F());
                            if (jVar.H().B()) {
                                uq.n(this.U, "SaveFeature_Text", "Bold");
                            }
                            if (jVar.H().C()) {
                                uq.n(this.U, "SaveFeature_Text", "Italic");
                            }
                            if (jVar.H().D()) {
                                uq.n(this.U, "SaveFeature_Text", "UnderLine");
                            }
                        }
                    }
                }
                uq.n(this.U, "SaveFeature_Canvas", this.g0.y());
                return;
            case R.id.el /*{ENCODED_INT: 2131230916}*/:
                uq.n(this.U, "EditClick", "Text");
                if (uq.g(this.mTextTagNew)) {
                    uq.t(this.mTextTagNew, false);
                    ic.s(this.U, "EnableShowTextTagNew", false);
                }
                i.k().d();
                Bundle bundle = new Bundle();
                bundle.putInt("LayoutWidth", this.g0.getWidth());
                bundle.putInt("LayoutHeight", this.g0.getHeight());
                androidx.core.app.b.s(this.W, ImageTextFragment.class, bundle, R.id.hl, true, true);
                return;
            case R.id.ey /*{ENCODED_INT: 2131230929}*/:
                this.y0 = this.g0.I();
                this.x0 = this.g0.C();
                s2(this.mMenuLayout);
                CutoutEditorView cutoutEditorView3 = this.g0;
                if (cutoutEditorView3 != null) {
                    cutoutEditorView3.post(new f(this));
                    return;
                }
                return;
            case R.id.f0 /*{ENCODED_INT: 2131230931}*/:
                this.g0.u0(this.y0);
                this.l0.D(this.y0);
                CutoutEditorView cutoutEditorView4 = this.g0;
                if (cutoutEditorView4 != null) {
                    cutoutEditorView4.post(new k(this));
                }
                s2(this.mMenuLayout);
                return;
            default:
                return;
        }
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (TextUtils.equals(str, "SubscribePro")) {
            Z1();
        }
    }

    public void p2(int i) {
        CutoutEditorView cutoutEditorView = this.g0;
        if (cutoutEditorView != null) {
            cutoutEditorView.r0(i);
        }
    }

    @Override // defpackage.yp.e
    public void q(String str) {
        if (this.v0.contains(str)) {
            h2(Y1(str), false);
            this.v0.remove(str);
        }
    }

    public void q2(int i, int i2) {
        h2(this.C0, false);
        this.D0 = i2;
        this.C0 = i;
        h2(i, true);
    }

    @Override // defpackage.yp.f
    public void s(int i, boolean z) {
        if (i == -1) {
            mr.d(T(R.string.ea));
        } else if (i == 1 && z) {
            Z1();
        }
    }

    @Override // defpackage.yp.e
    public void u(String str, int i) {
        if (this.v0.contains(str)) {
            h2(Y1(str), false);
        }
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment
    public void v0() {
        this.E0 = false;
        super.v0();
    }

    @Override // defpackage.vm, androidx.fragment.app.Fragment
    public void z0() {
        this.E0 = true;
        super.z0();
    }
}
