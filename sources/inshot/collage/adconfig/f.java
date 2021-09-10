package inshot.collage.adconfig;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.StatFs;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.google.ads.ADRequestList;
import java.io.File;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

@SuppressLint({"StaticFieldLeak"})
public final class f {
    private static mb0 a;
    private static ViewGroup b;
    private static boolean c;
    private static long d;
    private static View e;
    private static final long f;
    private static final long g;
    private static boolean h;
    private static final int i;
    private static final a j = new a(Looper.getMainLooper());
    public static final f k = new f();

    public static final class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            gg0.e(message, "msg");
            super.handleMessage(message);
            if (message.what == 0) {
                f fVar = f.k;
                mb0 mb0 = f.a;
                if (mb0 != null) {
                    mb0.j(a.d());
                }
                f.a = null;
                f.e(fVar, f.b);
            }
        }
    }

    static {
        Context context = a.a;
        if (context != null) {
            f = (long) cc0.h(context, "AD_bannerRefreshInterval", 45000);
            Context context2 = a.a;
            if (context2 != null) {
                g = (long) cc0.h(context2, "AD_bannerFailRefreshInterval", 10000);
                Context context3 = a.a;
                if (context3 != null) {
                    gg0.e(context3, "context");
                    Resources resources = context3.getResources();
                    gg0.d(resources, ADRequestList.ORDER_R);
                    i = (int) TypedValue.applyDimension(1, 80.0f, resources.getDisplayMetrics());
                    return;
                }
                gg0.j("context");
                throw null;
            }
            gg0.j("context");
            throw null;
        }
        gg0.j("context");
        throw null;
    }

    private f() {
    }

    public static final void e(f fVar, ViewGroup viewGroup) {
        b = viewGroup;
        if (!a.b()) {
            a = null;
            return;
        }
        boolean z = true;
        try {
            Context context = a.a;
            if (context != null) {
                int h2 = cc0.h(context, "AD_AvailableSpace", 50);
                File externalStorageDirectory = Environment.getExternalStorageDirectory();
                gg0.d(externalStorageDirectory, "Environment.getExternalStorageDirectory()");
                StatFs statFs = new StatFs(externalStorageDirectory.getAbsolutePath());
                if (statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong() < ((long) (h2 * 1024 * 1024))) {
                    z = false;
                }
                if (z) {
                    if (a != null) {
                        fVar.m(e, false);
                    } else if (viewGroup != null && a.d() != null && !h) {
                        ADRequestList aDRequestList = new ADRequestList();
                        aDRequestList.setADListener(new g());
                        Activity d2 = a.d();
                        Activity d3 = a.d();
                        gg0.c(d3);
                        e.a(d3, aDRequestList);
                        a = new mb0(d2, aDRequestList);
                    }
                }
            } else {
                gg0.j("context");
                throw null;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public final void m(View view, boolean z) {
        mb0 mb0;
        o.a("BannerAd", "showAd");
        ViewGroup viewGroup = b;
        if (viewGroup != null && view != null) {
            Context context = view.getContext();
            view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
            int i2 = new int[]{view.getMeasuredWidth(), view.getMeasuredHeight()}[1];
            gg0.d(context, "context");
            int a2 = p.a(context, 4.0f) + i2;
            if (a2 > i) {
                p.e(a.c(), "AD", "bannerHeight > dp80");
                try {
                    viewGroup.removeAllViews();
                    Activity d2 = a.d();
                    if (!(d2 == null || (mb0 = a) == null)) {
                        mb0.j(d2);
                    }
                    a aVar = j;
                    aVar.removeMessages(0);
                    aVar.sendEmptyMessage(0);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else {
                boolean z2 = view.findViewById(R.id.c4) instanceof ImageView;
                if (!z2 && d.b(context) < a2) {
                    d.f(context, a2);
                }
                if (view.getParent() != null) {
                    ViewParent parent = view.getParent();
                    Objects.requireNonNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) parent).removeView(view);
                }
                viewGroup.removeAllViewsInLayout();
                viewGroup.addView(view);
                viewGroup.setTranslationY((float) (-p.a(context, 50.0f)));
                viewGroup.animate().translationY(0.0f).setDuration(800).start();
                if (z) {
                    if (!z2) {
                        Context context2 = a.a;
                        if (context2 == null) {
                            gg0.j("context");
                            throw null;
                        } else if (!cc0.g(context2, "enableRefreshBanner", true)) {
                            return;
                        }
                    }
                    a aVar2 = j;
                    aVar2.removeMessages(0);
                    aVar2.sendEmptyMessageDelayed(0, f);
                    d = System.currentTimeMillis();
                }
            }
        }
    }

    public final void j() {
        j.removeMessages(0);
        mb0 mb0 = a;
        if (mb0 != null) {
            mb0.j(a.d());
        }
        a = null;
        ViewGroup viewGroup = b;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        b = null;
        e = null;
        c = false;
    }

    public final void k() {
        o.a("BannerAd", "onPause");
        h = true;
        mb0 mb0 = a;
        if (mb0 != null) {
            mb0.m();
        }
        j.removeMessages(0);
        try {
            ViewGroup viewGroup = b;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
            }
            b = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void l(ViewGroup viewGroup) {
        o.a("BannerAd", "onResume");
        h = false;
        b = viewGroup;
        if (a != null) {
            m(e, false);
            mb0 mb0 = a;
            if (mb0 != null) {
                mb0.n();
            }
        }
        if (b == null) {
            return;
        }
        if (!c) {
            a aVar = j;
            aVar.removeMessages(0);
            aVar.sendEmptyMessage(0);
        } else if (d != 0 && a != null) {
            a aVar2 = j;
            aVar2.removeMessages(0);
            long max = Math.max(0L, f - (System.currentTimeMillis() - d));
            o.a("BannerAd", "sendEmptyMessageDelayed time = " + max);
            aVar2.sendEmptyMessageDelayed(0, max);
        }
    }
}
