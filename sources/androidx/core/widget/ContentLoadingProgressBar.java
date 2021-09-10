package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import java.util.Objects;

public class ContentLoadingProgressBar extends ProgressBar {
    private final Runnable b = new a();
    private final Runnable c = new b();

    class a implements Runnable {
        a() {
        }

        public void run() {
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            ContentLoadingProgressBar.this.setVisibility(8);
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            Objects.requireNonNull(ContentLoadingProgressBar.this);
            ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
            System.currentTimeMillis();
            Objects.requireNonNull(contentLoadingProgressBar);
            ContentLoadingProgressBar.this.setVisibility(0);
        }
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks(this.b);
        removeCallbacks(this.c);
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.b);
        removeCallbacks(this.c);
    }
}
