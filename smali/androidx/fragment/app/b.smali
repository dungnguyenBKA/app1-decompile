.class public Landroidx/fragment/app/b;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private U:Landroid/os/Handler;

.field private V:Ljava/lang/Runnable;

.field W:I

.field X:I

.field Y:Z

.field Z:Z

.field a0:I

.field b0:Landroid/app/Dialog;

.field c0:Z

.field d0:Z

.field e0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Landroidx/fragment/app/b$a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/b$a;-><init>(Landroidx/fragment/app/b;)V

    iput-object v0, p0, Landroidx/fragment/app/b;->V:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/fragment/app/b;->W:I

    .line 4
    iput v0, p0, Landroidx/fragment/app/b;->X:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/fragment/app/b;->Y:Z

    .line 6
    iput-boolean v0, p0, Landroidx/fragment/app/b;->Z:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroidx/fragment/app/b;->a0:I

    return-void
.end method


# virtual methods
.method public A0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    :cond_0
    iget v0, p0, Landroidx/fragment/app/b;->W:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    :cond_1
    iget v0, p0, Landroidx/fragment/app/b;->X:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/b;->Y:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/b;->Z:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    :cond_4
    iget v0, p0, Landroidx/fragment/app/b;->a0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public B0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->B0()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/b;->c0:Z

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public C0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->C0()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public d0(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->d0(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/b;->Z:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->x()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 9
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroidx/fragment/app/b;->Y:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public g0(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->g0(Landroid/content/Context;)V

    .line 2
    iget-boolean p1, p0, Landroidx/fragment/app/b;->e0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/fragment/app/b;->d0:Z

    :cond_0
    return-void
.end method

.method public j0(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->j0(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/b;->U:Landroid/os/Handler;

    .line 3
    iget v0, p0, Landroidx/fragment/app/Fragment;->w:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/b;->Z:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 4
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->W:I

    const-string v0, "android:theme"

    .line 5
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/b;->X:I

    const-string v0, "android:cancelable"

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/b;->Y:Z

    .line 7
    iget-boolean v0, p0, Landroidx/fragment/app/b;->Z:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/b;->Z:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/b;->a0:I

    :cond_1
    return-void
.end method

.method public l1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/b;->n1(ZZ)V

    return-void
.end method

.method public m1()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/b;->n1(ZZ)V

    return-void
.end method

.method n1(ZZ)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b;->d0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/b;->d0:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/b;->e0:Z

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6
    iget-object v2, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v2, p0, Landroidx/fragment/app/b;->U:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p2, v2, :cond_1

    .line 8
    iget-object p2, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/b;->U:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/fragment/app/b;->V:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/b;->c0:Z

    .line 11
    iget p2, p0, Landroidx/fragment/app/b;->a0:I

    if-ltz p2, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X0()Landroidx/fragment/app/g;

    move-result-object p1

    iget p2, p0, Landroidx/fragment/app/b;->a0:I

    check-cast p1, Landroidx/fragment/app/h;

    if-ltz p2, :cond_3

    .line 13
    new-instance v2, Landroidx/fragment/app/h$i;

    invoke-direct {v2, p1, v3, p2, v0}, Landroidx/fragment/app/h$i;-><init>(Landroidx/fragment/app/h;Ljava/lang/String;II)V

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/h;->Z(Landroidx/fragment/app/h$h;Z)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Landroidx/fragment/app/b;->a0:I

    goto :goto_1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad id: "

    invoke-static {v0, p2}, Lic;->f(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X0()Landroidx/fragment/app/g;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h;

    .line 17
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p2}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/h;)V

    .line 18
    invoke-virtual {v0, p0}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/m;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/a;->g()I

    goto :goto_1

    .line 20
    :cond_5
    invoke-virtual {v0}, Landroidx/fragment/app/a;->f()I

    :goto_1
    return-void
.end method

.method public o0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->o0()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/b;->c0:Z

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    iget-boolean v0, p0, Landroidx/fragment/app/b;->d0:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/b;->onDismiss(Landroid/content/DialogInterface;)V

    .line 8
    :cond_0
    iput-object v1, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public o1()Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/fragment/app/b;->c0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/b;->n1(ZZ)V

    :cond_0
    return-void
.end method

.method public p0()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->p0()V

    .line 2
    iget-boolean v0, p0, Landroidx/fragment/app/b;->e0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/b;->d0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/b;->d0:Z

    :cond_0
    return-void
.end method

.method public p1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 1
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->W0()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget v1, p0, Landroidx/fragment/app/b;->X:I

    .line 3
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/b;->Z:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/b;->p1(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    const-string v0, "layout_inflater"

    if-eqz p1, :cond_3

    .line 4
    iget v1, p0, Landroidx/fragment/app/b;->W:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 6
    :cond_2
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 7
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    .line 8
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public q1(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/b;->Y:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/b;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public r1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/fragment/app/b;->Z:Z

    return-void
.end method

.method public s1(II)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/fragment/app/b;->W:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const p1, 0x1030059

    .line 2
    iput p1, p0, Landroidx/fragment/app/b;->X:I

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    iput p2, p0, Landroidx/fragment/app/b;->X:I

    :cond_2
    return-void
.end method

.method public t1(Landroidx/fragment/app/g;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/b;->d0:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/fragment/app/b;->e0:Z

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/g;->a()Landroidx/fragment/app/m;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, p0, p2, v1}, Landroidx/fragment/app/m;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/m;->f()I

    return-void
.end method
