package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.os.Handler;
import android.os.Message;
import androidx.appcompat.widget.StarCheckView;
import com.vungle.warren.AdLoader;
import java.util.List;
import java.util.Objects;

/* renamed from: ed0  reason: default package */
public class ed0 {
    private Handler a = new a();
    private List<StarCheckView> b;
    private int c = -1;
    private boolean d = false;
    private ObjectAnimator e;

    /* renamed from: ed0$a */
    class a extends Handler {
        a() {
        }

        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                ed0.this.j(message.arg1, message.arg2, ((Boolean) message.obj).booleanValue());
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: ed0$b */
    public class b implements StarCheckView.a {
        final /* synthetic */ boolean a;
        final /* synthetic */ StarCheckView b;

        /* renamed from: ed0$b$a */
        class a extends AnimatorListenerAdapter {
            a() {
            }

            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ed0.this.e = null;
            }
        }

        b(boolean z, StarCheckView starCheckView) {
            this.a = z;
            this.b = starCheckView;
        }

        @Override // androidx.appcompat.widget.StarCheckView.a
        public void onAnimationEnd(Animator animator) {
            Objects.requireNonNull(ed0.this);
            if (this.a && !ed0.this.d) {
                ed0.this.f();
                ed0.this.e = ObjectAnimator.ofFloat(this.b, "rotation", 20.0f, -20.0f, 20.0f, -20.0f, 0.0f);
                ed0.this.e.setDuration(AdLoader.RETRY_DELAY);
                ed0.this.e.addListener(new a());
                ed0.this.e.start();
            }
        }
    }

    public ed0(List<StarCheckView> list) {
        this.b = list;
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void f() {
        List<StarCheckView> list = this.b;
        if (list != null) {
            for (StarCheckView starCheckView : list) {
                if (starCheckView != null) {
                    starCheckView.g(false, false);
                }
            }
        }
    }

    private void g(boolean z) {
        List<StarCheckView> list = this.b;
        if (list != null && list.size() > 0) {
            List<StarCheckView> list2 = this.b;
            StarCheckView starCheckView = list2.get(list2.size() - 1);
            if (starCheckView != null) {
                starCheckView.h(new b(z, starCheckView));
            }
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private void j(int i, int i2, boolean z) {
        List<StarCheckView> list;
        if (i2 < i || (list = this.b) == null || list.size() <= i || i < 0) {
            g(z);
            return;
        }
        StarCheckView starCheckView = this.b.get(i);
        if (starCheckView == null) {
            g(z);
            return;
        }
        starCheckView.g(true, true);
        Message message = new Message();
        message.what = 1;
        message.arg1 = i + 1;
        message.arg2 = i2;
        message.obj = Boolean.valueOf(z);
        this.a.sendMessageDelayed(message, 160);
    }

    public boolean h(int i) {
        if (this.c == i) {
            return false;
        }
        this.c = i;
        this.a.removeMessages(1);
        this.d = true;
        ObjectAnimator objectAnimator = this.e;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
        int i2 = 0;
        while (i2 < this.b.size()) {
            this.b.get(i2).g(i2 <= i, false);
            i2++;
        }
        return true;
    }

    public void i() {
        if (this.b != null && this.c < 0) {
            this.d = false;
            f();
            j(0, this.b.size() - 1, true);
        }
    }
}
