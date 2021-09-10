package defpackage;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.MotionEvent;
import defpackage.cp;
import java.lang.reflect.Field;

@TargetApi(8)
/* renamed from: xo  reason: default package */
public class xo extends wo {
    protected MotionEvent p = MotionEvent.obtain(0, 0, 3, 0.0f, 0.0f, 0);
    protected final cp q;

    /* access modifiers changed from: package-private */
    /* renamed from: xo$a */
    public class a implements cp.a {
        a() {
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: xo$b */
    public class b implements Runnable {
        final /* synthetic */ int b;

        b(int i) {
            this.b = i;
        }

        public void run() {
            try {
                Field declaredField = cp.class.getDeclaredField("o");
                declaredField.setAccessible(true);
                declaredField.set(xo.this.q, Integer.valueOf(this.b));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public xo(Context context) {
        super(context);
        this.q = new cp(context, new a());
    }

    public void f(int i) {
        new Thread(new b(i)).start();
    }

    @Override // defpackage.yo, defpackage.wo, defpackage.vo
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.p = MotionEvent.obtain(motionEvent);
        this.q.f(motionEvent);
        super.onTouchEvent(motionEvent);
        return true;
    }
}
