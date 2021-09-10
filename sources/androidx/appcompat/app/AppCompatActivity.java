package androidx.appcompat.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.o0;
import androidx.core.app.a;
import androidx.core.app.b;
import androidx.core.app.n;
import androidx.fragment.app.FragmentActivity;
import defpackage.k;

public class AppCompatActivity extends FragmentActivity implements h, n.a {
    private i mDelegate;
    private Resources mResources;

    public AppCompatActivity() {
    }

    private boolean performMenuItemShortcut(int i, KeyEvent keyEvent) {
        Window window;
        return Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent);
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().c(view, layoutParams);
    }

    /* access modifiers changed from: protected */
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        getDelegate().d(context);
    }

    public void closeOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (supportActionBar == null || !supportActionBar.a()) {
            super.closeOptionsMenu();
        }
    }

    @Override // androidx.core.app.ComponentActivity
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar supportActionBar = getSupportActionBar();
        if (keyCode != 82 || supportActionBar == null || !supportActionBar.j(keyEvent)) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) getDelegate().e(i);
    }

    public i getDelegate() {
        if (this.mDelegate == null) {
            int i = i.d;
            this.mDelegate = new AppCompatDelegateImpl(this, this);
        }
        return this.mDelegate;
    }

    public a getDrawerToggleDelegate() {
        return getDelegate().f();
    }

    public MenuInflater getMenuInflater() {
        return getDelegate().h();
    }

    public Resources getResources() {
        if (this.mResources == null && o0.b()) {
            this.mResources = new o0(this, super.getResources());
        }
        Resources resources = this.mResources;
        return resources == null ? super.getResources() : resources;
    }

    public ActionBar getSupportActionBar() {
        return getDelegate().i();
    }

    @Override // androidx.core.app.n.a
    public Intent getSupportParentActivityIntent() {
        return b.P(this);
    }

    public void invalidateOptionsMenu() {
        getDelegate().k();
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        getDelegate().n(configuration);
    }

    public void onContentChanged() {
        onSupportContentChanged();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.fragment.app.FragmentActivity
    public void onCreate(Bundle bundle) {
        i delegate = getDelegate();
        delegate.j();
        delegate.o(bundle);
        super.onCreate(bundle);
    }

    public void onCreateSupportNavigateUpTaskStack(n nVar) {
        nVar.a(this);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().p();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (performMenuItemShortcut(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.d() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    /* access modifiers changed from: protected */
    public void onNightModeChanged(int i) {
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    /* access modifiers changed from: protected */
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().q(bundle);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onPostResume() {
        super.onPostResume();
        getDelegate().r();
    }

    public void onPrepareSupportNavigateUpTaskStack(n nVar) {
    }

    /* access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, androidx.fragment.app.FragmentActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        getDelegate().s(bundle);
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onStart() {
        super.onStart();
        getDelegate().t();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity
    public void onStop() {
        super.onStop();
        getDelegate().u();
    }

    @Override // androidx.appcompat.app.h
    public void onSupportActionModeFinished(k kVar) {
    }

    @Override // androidx.appcompat.app.h
    public void onSupportActionModeStarted(k kVar) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (supportShouldUpRecreateTask(supportParentActivityIntent)) {
            n b = n.b(this);
            onCreateSupportNavigateUpTaskStack(b);
            onPrepareSupportNavigateUpTaskStack(b);
            b.c();
            try {
                int i = a.c;
                finishAffinity();
                return true;
            } catch (IllegalStateException unused) {
                finish();
                return true;
            }
        } else {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
    }

    /* access modifiers changed from: protected */
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().C(charSequence);
    }

    @Override // androidx.appcompat.app.h
    public k onWindowStartingSupportActionMode(k.a aVar) {
        return null;
    }

    public void openOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (!getWindow().hasFeature(0)) {
            return;
        }
        if (supportActionBar == null || !supportActionBar.k()) {
            super.openOptionsMenu();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        getDelegate().x(i);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().A(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.view.ContextThemeWrapper, android.app.Activity
    public void setTheme(int i) {
        super.setTheme(i);
        getDelegate().B(i);
    }

    public k startSupportActionMode(k.a aVar) {
        return getDelegate().D(aVar);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        getDelegate().k();
    }

    public void supportNavigateUpTo(Intent intent) {
        navigateUpTo(intent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().w(i);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return shouldUpRecreateTask(intent);
    }

    public AppCompatActivity(int i) {
        super(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        getDelegate().y(view);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().z(view, layoutParams);
    }
}
