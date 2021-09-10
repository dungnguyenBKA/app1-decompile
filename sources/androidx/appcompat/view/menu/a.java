package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class a implements v1 {
    private CharSequence a;
    private CharSequence b;
    private Intent c;
    private char d;
    private int e = 4096;
    private char f;
    private int g = 4096;
    private Drawable h;
    private Context i;
    private CharSequence j;
    private CharSequence k;
    private ColorStateList l = null;
    private PorterDuff.Mode m = null;
    private boolean n = false;
    private boolean o = false;
    private int p = 16;

    public a(Context context, int i2, int i3, int i4, int i5, CharSequence charSequence) {
        this.i = context;
        this.a = charSequence;
    }

    private void c() {
        Drawable drawable = this.h;
        if (drawable == null) {
            return;
        }
        if (this.n || this.o) {
            Drawable j2 = androidx.core.graphics.drawable.a.j(drawable);
            this.h = j2;
            Drawable mutate = j2.mutate();
            this.h = mutate;
            if (this.n) {
                androidx.core.graphics.drawable.a.g(mutate, this.l);
            }
            if (this.o) {
                androidx.core.graphics.drawable.a.h(this.h, this.m);
            }
        }
    }

    @Override // defpackage.v1
    public v1 a(o2 o2Var) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.v1
    public o2 b() {
        return null;
    }

    @Override // defpackage.v1
    public boolean collapseActionView() {
        return false;
    }

    @Override // defpackage.v1
    public boolean expandActionView() {
        return false;
    }

    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.v1
    public View getActionView() {
        return null;
    }

    @Override // defpackage.v1
    public int getAlphabeticModifiers() {
        return this.g;
    }

    public char getAlphabeticShortcut() {
        return this.f;
    }

    @Override // defpackage.v1
    public CharSequence getContentDescription() {
        return this.j;
    }

    public int getGroupId() {
        return 0;
    }

    public Drawable getIcon() {
        return this.h;
    }

    @Override // defpackage.v1
    public ColorStateList getIconTintList() {
        return this.l;
    }

    @Override // defpackage.v1
    public PorterDuff.Mode getIconTintMode() {
        return this.m;
    }

    public Intent getIntent() {
        return this.c;
    }

    public int getItemId() {
        return 16908332;
    }

    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // defpackage.v1
    public int getNumericModifiers() {
        return this.e;
    }

    public char getNumericShortcut() {
        return this.d;
    }

    public int getOrder() {
        return 0;
    }

    public SubMenu getSubMenu() {
        return null;
    }

    public CharSequence getTitle() {
        return this.a;
    }

    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.b;
        return charSequence != null ? charSequence : this.a;
    }

    @Override // defpackage.v1
    public CharSequence getTooltipText() {
        return this.k;
    }

    public boolean hasSubMenu() {
        return false;
    }

    @Override // defpackage.v1
    public boolean isActionViewExpanded() {
        return false;
    }

    public boolean isCheckable() {
        return (this.p & 1) != 0;
    }

    public boolean isChecked() {
        return (this.p & 2) != 0;
    }

    public boolean isEnabled() {
        return (this.p & 16) != 0;
    }

    public boolean isVisible() {
        return (this.p & 8) == 0;
    }

    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.v1, android.view.MenuItem
    public MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setAlphabeticShortcut(char c2) {
        this.f = Character.toLowerCase(c2);
        return this;
    }

    public MenuItem setCheckable(boolean z) {
        this.p = (z ? 1 : 0) | (this.p & -2);
        return this;
    }

    public MenuItem setChecked(boolean z) {
        this.p = (z ? 2 : 0) | (this.p & -3);
        return this;
    }

    @Override // defpackage.v1
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.j = charSequence;
        return this;
    }

    public MenuItem setEnabled(boolean z) {
        this.p = (z ? 16 : 0) | (this.p & -17);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.h = drawable;
        c();
        return this;
    }

    @Override // defpackage.v1
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.l = colorStateList;
        this.n = true;
        c();
        return this;
    }

    @Override // defpackage.v1
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.m = mode;
        this.o = true;
        c();
        return this;
    }

    public MenuItem setIntent(Intent intent) {
        this.c = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c2) {
        this.d = c2;
        return this;
    }

    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    public MenuItem setShortcut(char c2, char c3) {
        this.d = c2;
        this.f = Character.toLowerCase(c3);
        return this;
    }

    @Override // defpackage.v1
    public void setShowAsAction(int i2) {
    }

    @Override // defpackage.v1
    public MenuItem setShowAsActionFlags(int i2) {
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.a = charSequence;
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.b = charSequence;
        return this;
    }

    @Override // defpackage.v1
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.k = charSequence;
        return this;
    }

    public MenuItem setVisible(boolean z) {
        int i2 = 8;
        int i3 = this.p & 8;
        if (z) {
            i2 = 0;
        }
        this.p = i3 | i2;
        return this;
    }

    @Override // defpackage.v1, android.view.MenuItem
    public MenuItem setActionView(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.v1
    public MenuItem setAlphabeticShortcut(char c2, int i2) {
        this.f = Character.toLowerCase(c2);
        this.g = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // defpackage.v1
    /* renamed from: setContentDescription  reason: collision with other method in class */
    public v1 m0setContentDescription(CharSequence charSequence) {
        this.j = charSequence;
        return this;
    }

    @Override // defpackage.v1
    public MenuItem setNumericShortcut(char c2, int i2) {
        this.d = c2;
        this.e = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        this.a = this.i.getResources().getString(i2);
        return this;
    }

    @Override // defpackage.v1
    /* renamed from: setTooltipText  reason: collision with other method in class */
    public v1 m1setTooltipText(CharSequence charSequence) {
        this.k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.h = androidx.core.content.a.c(this.i, i2);
        c();
        return this;
    }

    @Override // defpackage.v1
    public MenuItem setShortcut(char c2, char c3, int i2, int i3) {
        this.d = c2;
        this.e = KeyEvent.normalizeMetaState(i2);
        this.f = Character.toLowerCase(c3);
        this.g = KeyEvent.normalizeMetaState(i3);
        return this;
    }
}
