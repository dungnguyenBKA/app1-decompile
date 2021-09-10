package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.vungle.warren.error.VungleException;

/* renamed from: u6  reason: default package */
public class u6 {

    /* renamed from: u6$a */
    class a implements View.OnTouchListener {
        final /* synthetic */ View b;

        a(View view) {
            this.b = view;
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1) {
                return false;
            }
            this.b.setVisibility(4);
            return false;
        }
    }

    /* renamed from: u6$b */
    public interface b {
    }

    public static void a(View view, View view2, View view3, b bVar) {
        if (c((Activity) view.getContext())) {
            view3.setOnTouchListener(new a(view));
        }
    }

    public static boolean b(Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) != 0;
    }

    static boolean c(Activity activity) {
        return d(b(activity), e(activity), ((ViewGroup) activity.findViewById(16908290)).getChildAt(0).getFitsSystemWindows());
    }

    public static boolean d(boolean z, boolean z2, boolean z3) {
        return z || (z2 && !z3);
    }

    @TargetApi(VungleException.NO_SPACE_TO_DOWNLOAD_ASSETS)
    public static boolean e(Activity activity) {
        return (activity.getWindow().getAttributes().flags & 67108864) != 0;
    }

    public static boolean f(View view, int i) {
        if (view.isInEditMode()) {
            return false;
        }
        String.format("refresh Height %d %d", Integer.valueOf(view.getHeight()), Integer.valueOf(i));
        if (view.getHeight() == i || Math.abs(view.getHeight() - i) == x6.a(view.getContext())) {
            return false;
        }
        int e = w6.e(view.getContext());
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, e));
        } else {
            layoutParams.height = e;
            view.requestLayout();
        }
        return true;
    }
}
