package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.c;
import androidx.core.app.a;
import androidx.core.app.m;
import androidx.lifecycle.f;
import androidx.lifecycle.j;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class FragmentActivity extends ComponentActivity implements a.b, a.c {
    static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
    static final String FRAGMENTS_TAG = "android:support:fragments";
    static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
    static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
    static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
    private static final String TAG = "FragmentActivity";
    boolean mCreated;
    final j mFragmentLifecycleRegistry = new j(this);
    final d mFragments = d.b(new a());
    int mNextCandidateRequestIndex;
    f0<String> mPendingFragmentActivityResults;
    boolean mRequestedPermissionsFromFragment;
    boolean mResumed;
    boolean mStartedActivityFromFragment;
    boolean mStartedIntentSenderFromFragment;
    boolean mStopped = true;

    class a extends f<FragmentActivity> implements v, c {
        public a() {
            super(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.c
        public View a(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // androidx.fragment.app.c
        public boolean b() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.fragment.app.f
        public void f(Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.f
        public void g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, null, printWriter, strArr);
        }

        @Override // androidx.lifecycle.i
        public f getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.c
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.lifecycle.v
        public u getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        @Override // androidx.fragment.app.f
        public FragmentActivity h() {
            return FragmentActivity.this;
        }

        @Override // androidx.fragment.app.f
        public LayoutInflater i() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.f
        public int j() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // androidx.fragment.app.f
        public boolean k() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.f
        public boolean l(Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // androidx.fragment.app.f
        public boolean m(String str) {
            FragmentActivity fragmentActivity = FragmentActivity.this;
            int i = androidx.core.app.a.c;
            if (Build.VERSION.SDK_INT >= 23) {
                return fragmentActivity.shouldShowRequestPermissionRationale(str);
            }
            return false;
        }

        @Override // androidx.fragment.app.f
        public void n(Fragment fragment, Intent intent, int i, Bundle bundle) {
            FragmentActivity.this.startActivityFromFragment(fragment, intent, i, bundle);
        }

        @Override // androidx.fragment.app.f
        public void o() {
            FragmentActivity.this.supportInvalidateOptionsMenu();
        }
    }

    public FragmentActivity() {
    }

    private int allocateRequestIndex(Fragment fragment) {
        if (this.mPendingFragmentActivityResults.l() < MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS) {
            while (this.mPendingFragmentActivityResults.g(this.mNextCandidateRequestIndex) >= 0) {
                this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
            }
            int i = this.mNextCandidateRequestIndex;
            this.mPendingFragmentActivityResults.j(i, fragment.e);
            this.mNextCandidateRequestIndex = (this.mNextCandidateRequestIndex + 1) % MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS;
            return i;
        }
        throw new IllegalStateException("Too many pending Fragment activity results.");
    }

    static void checkForValidRequestCode(int i) {
        if ((i & -65536) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    private void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), f.b.CREATED));
    }

    private static boolean markState(g gVar, f.b bVar) {
        boolean z = false;
        for (Fragment fragment : gVar.f()) {
            if (fragment != null) {
                if (fragment.P.b().compareTo(f.b.STARTED) >= 0) {
                    fragment.P.k(bVar);
                    z = true;
                }
                f fVar = fragment.s;
                if ((fVar == null ? null : fVar.h()) != null) {
                    z |= markState(fragment.B(), bVar);
                }
            }
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    public final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.w(view, str, context, attributeSet);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            a4.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.u().b(str, fileDescriptor, printWriter, strArr);
    }

    public g getSupportFragmentManager() {
        return this.mFragments.u();
    }

    @Deprecated
    public a4 getSupportLoaderManager() {
        return a4.b(this);
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.v();
        int i3 = i >> 16;
        if (i3 != 0) {
            int i4 = i3 - 1;
            String e = this.mPendingFragmentActivityResults.e(i4);
            this.mPendingFragmentActivityResults.k(i4);
            if (e == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment t = this.mFragments.t(e);
            if (t == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + e);
                return;
            }
            t.e0(i & 65535, i2, intent);
            return;
        }
        int i5 = androidx.core.app.a.c;
        super.onActivityResult(i, i2, intent);
    }

    public void onAttachFragment(Fragment fragment) {
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.v();
        this.mFragments.d(configuration);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity
    public void onCreate(Bundle bundle) {
        this.mFragments.a(null);
        if (bundle != null) {
            this.mFragments.x(bundle.getParcelable(FRAGMENTS_TAG));
            if (bundle.containsKey(NEXT_CANDIDATE_REQUEST_INDEX_TAG)) {
                this.mNextCandidateRequestIndex = bundle.getInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG);
                int[] intArray = bundle.getIntArray(ALLOCATED_REQUEST_INDICIES_TAG);
                String[] stringArray = bundle.getStringArray(REQUEST_FRAGMENT_WHO_TAG);
                if (intArray == null || stringArray == null || intArray.length != stringArray.length) {
                    Log.w(TAG, "Invalid requestCode mapping in savedInstanceState.");
                } else {
                    this.mPendingFragmentActivityResults = new f0<>(intArray.length);
                    for (int i = 0; i < intArray.length; i++) {
                        this.mPendingFragmentActivityResults.j(intArray[i], stringArray[i]);
                    }
                }
            }
        }
        if (this.mPendingFragmentActivityResults == null) {
            this.mPendingFragmentActivityResults = new f0<>(10);
            this.mNextCandidateRequestIndex = 0;
        }
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.f(f.a.ON_CREATE);
        this.mFragments.f();
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            return super.onCreatePanelMenu(i, menu) | this.mFragments.g(menu, getMenuInflater());
        }
        return super.onCreatePanelMenu(i, menu);
    }

    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.h();
        this.mFragmentLifecycleRegistry.f(f.a.ON_DESTROY);
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.i();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.k(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.e(menuItem);
    }

    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.j(z);
    }

    /* access modifiers changed from: protected */
    public void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.v();
    }

    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.l(menu);
        }
        super.onPanelClosed(i, menu);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.m();
        this.mFragmentLifecycleRegistry.f(f.a.ON_PAUSE);
    }

    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.n(z);
    }

    /* access modifiers changed from: protected */
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0) {
            return onPrepareOptionsPanel(view, menu) | this.mFragments.o(menu);
        }
        return super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.core.app.a.b
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.v();
        int i2 = (i >> 16) & 65535;
        if (i2 != 0) {
            int i3 = i2 - 1;
            String e = this.mPendingFragmentActivityResults.e(i3);
            this.mPendingFragmentActivityResults.k(i3);
            if (e == null) {
                Log.w(TAG, "Activity result delivered for unknown Fragment.");
                return;
            }
            Fragment t = this.mFragments.t(e);
            if (t == null) {
                Log.w(TAG, "Activity result no fragment exists for who: " + e);
                return;
            }
            t.y0();
        }
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.v();
        this.mFragments.s();
    }

    /* access modifiers changed from: protected */
    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.f(f.a.ON_RESUME);
        this.mFragments.p();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.f(f.a.ON_STOP);
        Parcelable y = this.mFragments.y();
        if (y != null) {
            bundle.putParcelable(FRAGMENTS_TAG, y);
        }
        if (this.mPendingFragmentActivityResults.l() > 0) {
            bundle.putInt(NEXT_CANDIDATE_REQUEST_INDEX_TAG, this.mNextCandidateRequestIndex);
            int[] iArr = new int[this.mPendingFragmentActivityResults.l()];
            String[] strArr = new String[this.mPendingFragmentActivityResults.l()];
            for (int i = 0; i < this.mPendingFragmentActivityResults.l(); i++) {
                iArr[i] = this.mPendingFragmentActivityResults.i(i);
                strArr[i] = this.mPendingFragmentActivityResults.m(i);
            }
            bundle.putIntArray(ALLOCATED_REQUEST_INDICIES_TAG, iArr);
            bundle.putStringArray(REQUEST_FRAGMENT_WHO_TAG, strArr);
        }
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.c();
        }
        this.mFragments.v();
        this.mFragments.s();
        this.mFragmentLifecycleRegistry.f(f.a.ON_START);
        this.mFragments.q();
    }

    public void onStateNotSaved() {
        this.mFragments.v();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.r();
        this.mFragmentLifecycleRegistry.f(f.a.ON_STOP);
    }

    /* JADX INFO: finally extract failed */
    /* access modifiers changed from: package-private */
    public void requestPermissionsFromFragment(Fragment fragment, String[] strArr, int i) {
        if (i == -1) {
            androidx.core.app.a.e(this, strArr, i);
            return;
        }
        checkForValidRequestCode(i);
        try {
            this.mRequestedPermissionsFromFragment = true;
            androidx.core.app.a.e(this, strArr, ((allocateRequestIndex(fragment) + 1) << 16) + (i & 65535));
            this.mRequestedPermissionsFromFragment = false;
        } catch (Throwable th) {
            this.mRequestedPermissionsFromFragment = false;
            throw th;
        }
    }

    public void setEnterSharedElementCallback(m mVar) {
        int i = androidx.core.app.a.c;
        if (Build.VERSION.SDK_INT >= 21) {
            setEnterSharedElementCallback((SharedElementCallback) null);
        }
    }

    public void setExitSharedElementCallback(m mVar) {
        int i = androidx.core.app.a.c;
        if (Build.VERSION.SDK_INT >= 21) {
            setExitSharedElementCallback((SharedElementCallback) null);
        }
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        if (!this.mStartedActivityFromFragment && i != -1) {
            checkForValidRequestCode(i);
        }
        super.startActivityForResult(intent, i);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, null);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) {
        if (!this.mStartedIntentSenderFromFragment && i != -1) {
            checkForValidRequestCode(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        this.mStartedIntentSenderFromFragment = true;
        if (i == -1) {
            try {
                int i5 = androidx.core.app.a.c;
                startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
            } finally {
                this.mStartedIntentSenderFromFragment = false;
            }
        } else {
            checkForValidRequestCode(i);
            int allocateRequestIndex = ((allocateRequestIndex(fragment) + 1) << 16) + (i & 65535);
            int i6 = androidx.core.app.a.c;
            startIntentSenderForResult(intentSender, allocateRequestIndex, intent, i2, i3, i4, bundle);
            this.mStartedIntentSenderFromFragment = false;
        }
    }

    public void supportFinishAfterTransition() {
        int i = androidx.core.app.a.c;
        if (Build.VERSION.SDK_INT >= 21) {
            finishAfterTransition();
        } else {
            finish();
        }
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        int i = androidx.core.app.a.c;
        if (Build.VERSION.SDK_INT >= 21) {
            postponeEnterTransition();
        }
    }

    public void supportStartPostponedEnterTransition() {
        int i = androidx.core.app.a.c;
        if (Build.VERSION.SDK_INT >= 21) {
            startPostponedEnterTransition();
        }
    }

    @Override // androidx.core.app.a.c
    public final void validateRequestPermissionsRequestCode(int i) {
        if (!this.mRequestedPermissionsFromFragment && i != -1) {
            checkForValidRequestCode(i);
        }
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        this.mStartedActivityFromFragment = true;
        if (i == -1) {
            try {
                int i2 = androidx.core.app.a.c;
                startActivityForResult(intent, -1, bundle);
            } finally {
                this.mStartedActivityFromFragment = false;
            }
        } else {
            checkForValidRequestCode(i);
            int allocateRequestIndex = ((allocateRequestIndex(fragment) + 1) << 16) + (i & 65535);
            int i3 = androidx.core.app.a.c;
            startActivityForResult(intent, allocateRequestIndex, bundle);
            this.mStartedActivityFromFragment = false;
        }
    }

    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (!this.mStartedActivityFromFragment && i != -1) {
            checkForValidRequestCode(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        if (!this.mStartedIntentSenderFromFragment && i != -1) {
            checkForValidRequestCode(i);
        }
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    public FragmentActivity(int i) {
        super(i);
    }
}
