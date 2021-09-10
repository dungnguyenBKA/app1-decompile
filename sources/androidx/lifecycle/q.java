package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.f;

public class q extends Fragment {
    private void a(f.a aVar) {
        Activity activity = getActivity();
        if (activity instanceof k) {
            ((k) activity).getLifecycle().f(aVar);
        } else if (activity instanceof i) {
            f lifecycle = ((i) activity).getLifecycle();
            if (lifecycle instanceof j) {
                ((j) lifecycle).f(aVar);
            }
        }
    }

    public static void b(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new q(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        a(f.a.ON_CREATE);
    }

    public void onDestroy() {
        super.onDestroy();
        a(f.a.ON_DESTROY);
    }

    public void onPause() {
        super.onPause();
        a(f.a.ON_PAUSE);
    }

    public void onResume() {
        super.onResume();
        a(f.a.ON_RESUME);
    }

    public void onStart() {
        super.onStart();
        a(f.a.ON_START);
    }

    public void onStop() {
        super.onStop();
        a(f.a.ON_STOP);
    }
}
