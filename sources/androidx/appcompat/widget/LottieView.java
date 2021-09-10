package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.airbnb.lottie.LottieAnimationView;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class LottieView extends FrameLayout {
    public static final /* synthetic */ int c = 0;
    public LottieAnimationView b;

    /* access modifiers changed from: package-private */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            LottieView lottieView = LottieView.this;
            int i = LottieView.c;
            Objects.requireNonNull(lottieView);
        }
    }

    /* access modifiers changed from: package-private */
    public class b extends AnimatorListenerAdapter {
        b() {
        }

        public final void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            LottieView lottieView = LottieView.this;
            int i = LottieView.c;
            Objects.requireNonNull(lottieView);
        }

        public final void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
        }
    }

    public LottieView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        View.inflate(context, R.layout.ab, this);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) findViewById(R.id.bw);
        this.b = lottieAnimationView;
        lottieAnimationView.n(new b());
        lottieAnimationView.o(new a());
    }

    public LottieView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }
}
