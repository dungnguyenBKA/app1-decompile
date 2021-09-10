package inshot.collage.adconfig;

import android.app.Activity;
import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.ads.ADRequestList;
import com.zjsoft.funnyad.a;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public final class k {
    private com.zjsoft.funnyad.a a;
    private List<nc0> b;
    private boolean c;
    private final Activity d;

    public static final class a implements tb0 {
        final /* synthetic */ k a;

        /* JADX WARN: Incorrect args count in method signature: ()V */
        a(k kVar) {
            this.a = kVar;
        }

        @Override // defpackage.tb0
        public void a(Context context, View view) {
            gg0.e(context, "context");
            if (!(this.a.a == null || view == null)) {
                View findViewById = view.findViewById(R.id.bi);
                if (findViewById != null) {
                    int c = p.c(context) - p.a(context, 16.0f);
                    ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                    layoutParams.width = c;
                    layoutParams.height = (c * 627) / 1200;
                    findViewById.setLayoutParams(layoutParams);
                }
                k kVar = this.a;
                com.zjsoft.funnyad.a aVar = kVar.a;
                kVar.c = aVar != null ? aVar.f(view) : false;
            }
            if (!this.a.c) {
                p.e(context, "AD", "情趣广告展示失败");
            }
        }

        @Override // defpackage.sb0
        public void b(Context context) {
            gg0.e(context, "context");
        }

        @Override // defpackage.sb0
        public void c(Context context, kb0 kb0) {
            gg0.e(context, "context");
            gg0.e(kb0, "message");
            Log.e("HomeLightHouseAds", "onAdLoadFailed");
            p.e(context, "AD", "情趣广告加载失败");
            this.a.d.finish();
        }
    }

    public static final class b implements a.c {
        final /* synthetic */ k a;
        final /* synthetic */ ADRequestList b;

        b(k kVar, ADRequestList aDRequestList) {
            this.a = kVar;
            this.b = aDRequestList;
        }

        @Override // com.zjsoft.funnyad.a.c
        public int a() {
            return 60000;
        }

        @Override // com.zjsoft.funnyad.a.c
        public void b(a.f fVar) {
            gg0.e(fVar, "requestListener");
        }

        @Override // com.zjsoft.funnyad.a.c
        public void c(a.f fVar) {
            Activity activity = this.a.d;
            ADRequestList aDRequestList = this.b;
            gg0.e(activity, "context");
            gg0.e(aDRequestList, "requestList");
            fVar.a(aDRequestList);
        }

        @Override // com.zjsoft.funnyad.a.c
        public List<nc0> d() {
            return k.a(this.a);
        }
    }

    public static final class c implements a.e {
        final /* synthetic */ k a;

        /* JADX WARN: Incorrect args count in method signature: ()V */
        c(k kVar) {
            this.a = kVar;
        }

        @Override // com.zjsoft.funnyad.a.e
        public void a() {
            Activity activity = this.a.d;
            StringBuilder q = ic.q("关闭情趣广告：");
            q.append(this.a.c ? "已展示" : "未展示");
            p.e(activity, "AD", q.toString());
            this.a.d.finish();
        }

        @Override // com.zjsoft.funnyad.a.e
        public void b() {
            p.e(this.a.d, "AD", "情趣广告加载超时");
            this.a.d.finish();
        }
    }

    public k(Activity activity) {
        gg0.e(activity, "context");
        this.d = activity;
    }

    public static final List a(k kVar) {
        List<nc0> list = kVar.b;
        if (list != null) {
            gg0.c(list);
            if (!list.isEmpty()) {
                List<nc0> list2 = kVar.b;
                gg0.c(list2);
                return list2;
            }
        }
        kVar.b = new ArrayList();
        Paint paint = new Paint(1);
        Rect rect = new Rect(0, 0, androidx.core.app.b.z0(kVar.d), androidx.core.app.b.y0(kVar.d));
        pc0 pc0 = new pc0(kVar.d);
        nc0 nc0 = new nc0(new sc0(kVar.d, pc0), rect, paint);
        nc0.setRepeatCount(-1);
        nc0.setRepeatMode(1);
        List<nc0> list3 = kVar.b;
        if (list3 != null) {
            list3.add(nc0);
        }
        nc0 nc02 = new nc0(new rc0(kVar.d, pc0), rect, paint);
        nc02.setRepeatCount(-1);
        nc02.setRepeatMode(1);
        List<nc0> list4 = kVar.b;
        if (list4 != null) {
            list4.add(nc02);
        }
        List<nc0> list5 = kVar.b;
        gg0.c(list5);
        return list5;
    }

    public final boolean f() {
        try {
            List<nc0> list = this.b;
            if (list != null) {
                for (nc0 nc0 : list) {
                    nc0.cancel();
                    nc0.a();
                    nc0.b();
                }
            }
            this.b = null;
            com.zjsoft.funnyad.a aVar = this.a;
            if (aVar != null) {
                aVar.c(this.d);
            }
            this.a = null;
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final boolean g() {
        return this.c;
    }

    public final void h(FrameLayout frameLayout) {
        if (this.a == null) {
            ADRequestList aDRequestList = new ADRequestList();
            aDRequestList.setADListener(new a(this));
            this.a = new com.zjsoft.funnyad.a(this.d, new b(this, aDRequestList));
        }
        com.zjsoft.funnyad.a aVar = this.a;
        gg0.c(aVar);
        aVar.e(new c(this));
        com.zjsoft.funnyad.a aVar2 = this.a;
        gg0.c(aVar2);
        aVar2.d(frameLayout, false);
    }
}
