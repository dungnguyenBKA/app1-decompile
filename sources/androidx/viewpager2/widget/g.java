package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

class g implements RecyclerView.p {
    g(ViewPager2 viewPager2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void b(View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.p
    public void d(View view) {
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (((ViewGroup.MarginLayoutParams) layoutParams).width != -1 || ((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
            throw new IllegalStateException("Pages must fill the whole ViewPager2 (use match_parent)");
        }
    }
}
