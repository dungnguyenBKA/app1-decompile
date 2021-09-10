package com.zjsoft.funnyad;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.ParticlesView;
import androidx.cardview.widget.CardView;
import com.google.ads.ADRequestList;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
import photoeditor.cutout.backgrounderaser.R;

public class a {
    private final d a = new d(this);
    ParticlesView b;
    sc0 c;
    Activity d;
    View e;
    pb0 f;
    ob0 g;
    private c h;
    private e i;
    boolean j = false;

    /* access modifiers changed from: package-private */
    /* renamed from: com.zjsoft.funnyad.a$a  reason: collision with other inner class name */
    public class C0092a implements Animator.AnimatorListener {
        C0092a() {
        }

        public void onAnimationCancel(Animator animator) {
        }

        public void onAnimationEnd(Animator animator) {
            ImageView imageView;
            View view = a.this.e;
            if (view != null && (imageView = (ImageView) view.findViewById(R.id.bg)) != null) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(1.2f, 1.0f, 1.2f, 1.0f, 1, 0.5f, 1, 0.5f);
                scaleAnimation.setDuration(2500);
                scaleAnimation.setFillAfter(true);
                scaleAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
                imageView.startAnimation(scaleAnimation);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements View.OnClickListener {
        b() {
        }

        public void onClick(View view) {
            if (a.this.i != null) {
                a.this.i.a();
            }
        }
    }

    public interface c {
        int a();

        void b(f fVar);

        void c(f fVar);

        List<nc0> d();
    }

    /* access modifiers changed from: private */
    public static class d extends Handler {
        WeakReference<a> a;

        public d(a aVar) {
            this.a = new WeakReference<>(aVar);
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            a aVar = this.a.get();
            if (aVar != null && message.what == 1) {
                a.b(aVar);
            }
        }
    }

    public interface e {
        void a();

        void b();
    }

    public interface f {
        void a(ADRequestList aDRequestList);
    }

    public a(Activity activity, c cVar) {
        this.d = activity;
        this.h = cVar;
    }

    static void b(a aVar) {
        e eVar = aVar.i;
        if (eVar != null) {
            eVar.b();
        }
        aVar.c(aVar.d);
    }

    private void g() {
        View view = this.e;
        if (view != null) {
            View findViewById = view.findViewById(R$id.close_button);
            if (this.j) {
                int identifier = this.d.getResources().getIdentifier("status_bar_height", "dimen", "android");
                int dimensionPixelSize = identifier > 0 ? this.d.getResources().getDimensionPixelSize(identifier) : 0;
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById.getLayoutParams();
                marginLayoutParams.topMargin += dimensionPixelSize;
                findViewById.setLayoutParams(marginLayoutParams);
            }
            if (findViewById != null) {
                findViewById.setOnClickListener(new b());
                findViewById.setVisibility(0);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(findViewById, "scaleX", 0.1f, 0.75f, 1.0f), ObjectAnimator.ofFloat(findViewById, "scaleY", 0.1f, 0.75f, 1.0f), ObjectAnimator.ofFloat(findViewById, "alpha", 0.0f, 1.0f, 1.0f));
                animatorSet.setDuration(200L);
                animatorSet.start();
            }
        }
    }

    public void c(Activity activity) {
        pb0 pb0 = this.f;
        if (pb0 != null) {
            pb0.g(activity);
        }
        ob0 ob0 = this.g;
        if (ob0 != null) {
            ob0.j(activity);
        }
        View view = this.e;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.e);
            }
            this.b.e();
            this.e = null;
        }
        this.i = null;
        ParticlesView particlesView = this.b;
        if (particlesView != null) {
            particlesView.e();
            this.b = null;
        }
    }

    public void d(FrameLayout frameLayout, boolean z) {
        View view = this.e;
        if (view == null || view.getParent() == null) {
            this.j = z;
            int i2 = 0;
            View inflate = LayoutInflater.from(this.d).inflate(R.layout.bu, (ViewGroup) null, false);
            this.e = inflate;
            Activity activity = this.d;
            float f2 = (float) -1;
            if (f2 >= 0.0f) {
                f2 = (float) androidx.core.app.b.v(activity, f2);
            }
            frameLayout.addView(inflate, new FrameLayout.LayoutParams((int) f2, (int) -1.0f));
            this.b = (ParticlesView) this.e.findViewById(R.id.gq);
            if (this.h.d() == null) {
                ParticlesView particlesView = this.b;
                ArrayList arrayList = new ArrayList();
                Paint paint = new Paint(1);
                Rect rect = new Rect(0, 0, androidx.core.app.b.z0(this.d), androidx.core.app.b.y0(this.d));
                pc0 pc0 = new pc0(this.d);
                this.c = new sc0(this.d, pc0);
                nc0 nc0 = new nc0(this.c, rect, paint);
                nc0.setRepeatCount(-1);
                nc0.setRepeatMode(1);
                arrayList.add(nc0);
                nc0 nc02 = new nc0(new rc0(this.d, pc0), rect, paint);
                nc02.setRepeatCount(-1);
                nc02.setRepeatMode(1);
                arrayList.add(nc02);
                particlesView.b(arrayList);
            } else {
                this.b.b(this.h.d());
            }
            this.b.d();
            this.a.sendEmptyMessageDelayed(1, (long) this.h.a());
            Activity activity2 = this.d;
            synchronized (this) {
                String m = cc0.m(activity2);
                if (!m.equals("")) {
                    try {
                        i2 = new JSONObject(m).optInt("funny_ads_type", 0);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                if (i2 == 0) {
                    if (this.f == null && this.d != null) {
                        fc0.a().b(this.d, "FunnyAds loadCardAd");
                        this.h.c(new b(this));
                    }
                } else if (this.g == null && activity2 != null) {
                    this.h.b(new c(this, activity2));
                }
            }
        }
    }

    public void e(e eVar) {
        this.i = eVar;
    }

    public boolean f(View view) {
        CardView cardView = (CardView) this.e.findViewById(R.id.lx);
        if (cardView == null) {
            return false;
        }
        try {
            this.a.removeMessages(1);
            cardView.removeAllViews();
            cardView.addView(view);
            if (!cardView.isShown()) {
                cardView.setVisibility(0);
            }
            ImageView imageView = (ImageView) this.e.findViewById(R.id.bg);
            if (imageView != null) {
                ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 1.2f, 1.0f, 1.2f, 1, 0.5f, 1, 0.5f);
                scaleAnimation.setDuration(50);
                scaleAnimation.setFillAfter(true);
                scaleAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
                imageView.startAnimation(scaleAnimation);
            }
            AnimatorSet animatorSet = new AnimatorSet();
            View view2 = (View) cardView.getParent();
            int[] iArr = new int[2];
            cardView.getLocationInWindow(iArr);
            animatorSet.play(ObjectAnimator.ofFloat(view2, "alpha", 0.0f, 1.0f)).with(ObjectAnimator.ofFloat(view2, "translationY", (float) (-(view2.getMeasuredHeight() + iArr[1])), 0.0f));
            animatorSet.setDuration(300L);
            animatorSet.setInterpolator(new x3());
            animatorSet.addListener(new C0092a());
            animatorSet.start();
            g();
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
