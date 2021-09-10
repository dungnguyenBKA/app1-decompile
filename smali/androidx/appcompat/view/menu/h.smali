.class Landroidx/appcompat/view/menu/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/appcompat/view/menu/m$a;


# instance fields
.field private b:Landroidx/appcompat/view/menu/g;

.field private c:Landroidx/appcompat/app/g;

.field d:Landroidx/appcompat/view/menu/e;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    .line 2
    new-instance v0, Landroidx/appcompat/app/g$a;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->n()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/app/g$a;->b()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0010

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/h;->d:Landroidx/appcompat/view/menu/e;

    .line 4
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/e;->g(Landroidx/appcompat/view/menu/m$a;)V

    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    iget-object v2, p0, Landroidx/appcompat/view/menu/h;->d:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 6
    iget-object v1, p0, Landroidx/appcompat/view/menu/h;->d:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->a()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/g$a;->c(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/g$a;

    .line 7
    iget-object v1, p1, Landroidx/appcompat/view/menu/g;->o:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/g$a;->e(Landroid/view/View;)Landroidx/appcompat/app/g$a;

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/g;->n:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/g$a;->f(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/g$a;

    .line 11
    iget-object p1, p1, Landroidx/appcompat/view/menu/g;->m:Ljava/lang/CharSequence;

    .line 12
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/g$a;->o(Ljava/lang/CharSequence;)Landroidx/appcompat/app/g$a;

    .line 13
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/g$a;->j(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/g$a;

    .line 14
    invoke-virtual {v0}, Landroidx/appcompat/app/g$a;->a()Landroidx/appcompat/app/g;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/app/g;

    .line 15
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/app/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x3eb

    .line 17
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 18
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 19
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/app/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    if-ne p1, p2, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/app/g;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->d:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/e$a;

    .line 2
    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/e$a;->b(I)Landroidx/appcompat/view/menu/i;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/g;->y(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->d:Landroidx/appcompat/view/menu/e;

    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/e;->b(Landroidx/appcompat/view/menu/g;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/app/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 7
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/app/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object p2, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/g;->e(Z)V

    .line 13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    .line 14
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method
