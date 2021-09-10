package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.ArrayList;
import photoeditor.cutout.backgrounderaser.R;

@SuppressLint({"ViewConstructor"})
class g extends FrameLayout {
    public static final /* synthetic */ int d = 0;
    private ViewGroup b;
    private boolean c = true;

    g(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.b = viewGroup;
        viewGroup.setTag(R.id.hw, this);
        new z(this.b).a(this);
    }

    private static void b(View view, ArrayList<View> arrayList) {
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            b((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0083, code lost:
        if (r9.getZ() > r10.getZ()) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a1, code lost:
        if (r1.size() == r7) goto L_0x00a6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00a4, code lost:
        r7 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(androidx.transition.i r14) {
        /*
        // Method dump skipped, instructions count: 197
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.g.a(androidx.transition.i):void");
    }

    /* access modifiers changed from: package-private */
    public void c() {
        if (this.c) {
            new z(this.b).b(this);
            new z(this.b).a(this);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    public void onViewAdded(View view) {
        if (this.c) {
            super.onViewAdded(view);
            return;
        }
        throw new IllegalStateException("This GhostViewHolder is detached!");
    }

    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.b.setTag(R.id.hw, null);
            new z(this.b).b(this);
            this.c = false;
        }
    }
}
