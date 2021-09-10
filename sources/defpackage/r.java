package defpackage;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* renamed from: r  reason: default package */
public class r implements Window.Callback {
    final Window.Callback b;

    public r(Window.Callback callback) {
        if (callback != null) {
            this.b = callback;
            return;
        }
        throw new IllegalArgumentException("Window callback may not be null");
    }

    public final Window.Callback a() {
        return this.b;
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.b.dispatchGenericMotionEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.b.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.b.dispatchKeyShortcutEvent(keyEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.b.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.b.dispatchTouchEvent(motionEvent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.b.dispatchTrackballEvent(motionEvent);
    }

    public void onActionModeFinished(ActionMode actionMode) {
        this.b.onActionModeFinished(actionMode);
    }

    public void onActionModeStarted(ActionMode actionMode) {
        this.b.onActionModeStarted(actionMode);
    }

    public void onAttachedToWindow() {
        this.b.onAttachedToWindow();
    }

    public void onContentChanged() {
        this.b.onContentChanged();
    }

    public boolean onCreatePanelMenu(int i, Menu menu) {
        return this.b.onCreatePanelMenu(i, menu);
    }

    public View onCreatePanelView(int i) {
        return this.b.onCreatePanelView(i);
    }

    public void onDetachedFromWindow() {
        this.b.onDetachedFromWindow();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.b.onMenuItemSelected(i, menuItem);
    }

    public boolean onMenuOpened(int i, Menu menu) {
        return this.b.onMenuOpened(i, menu);
    }

    public void onPanelClosed(int i, Menu menu) {
        this.b.onPanelClosed(i, menu);
    }

    public void onPointerCaptureChanged(boolean z) {
        this.b.onPointerCaptureChanged(z);
    }

    public boolean onPreparePanel(int i, View view, Menu menu) {
        return this.b.onPreparePanel(i, view, menu);
    }

    @Override // android.view.Window.Callback
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
        this.b.onProvideKeyboardShortcuts(list, menu, i);
    }

    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.b.onSearchRequested(searchEvent);
    }

    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.b.onWindowAttributesChanged(layoutParams);
    }

    public void onWindowFocusChanged(boolean z) {
        this.b.onWindowFocusChanged(z);
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return this.b.onWindowStartingActionMode(callback);
    }

    public boolean onSearchRequested() {
        return this.b.onSearchRequested();
    }

    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        return this.b.onWindowStartingActionMode(callback, i);
    }
}
