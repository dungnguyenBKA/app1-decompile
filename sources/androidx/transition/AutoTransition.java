package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;

public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        W();
    }

    private void W() {
        V(1);
        Q(new Fade(2));
        Q(new ChangeBounds());
        Q(new Fade(1));
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        W();
    }
}
