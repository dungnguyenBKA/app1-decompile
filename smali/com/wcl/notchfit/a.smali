.class public Lcom/wcl/notchfit/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Lya0;Lcb0;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lya0;->d:Lya0;

    if-eq p1, v0, :cond_1

    .line 3
    invoke-static {}, Lbb0;->a()Lbb0;

    move-result-object v0

    invoke-virtual {v0}, Lbb0;->b()Lab0;

    move-result-object v0

    const/4 v1, 0x1

    check-cast v0, Lza0;

    invoke-virtual {v0, p0, v1}, Lza0;->b(Landroid/app/Activity;Z)V

    .line 4
    :cond_1
    sget-object v0, Lya0;->b:Lya0;

    if-ne p1, v0, :cond_2

    .line 5
    invoke-static {p0}, Landroidx/core/app/b;->B0(Landroid/app/Activity;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lya0;->c:Lya0;

    if-ne p1, v0, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 11
    :cond_3
    :goto_0
    invoke-static {}, Lbb0;->a()Lbb0;

    move-result-object p1

    invoke-virtual {p1}, Lbb0;->b()Lab0;

    move-result-object p1

    new-instance v0, Lcom/wcl/notchfit/a$a;

    invoke-direct {v0, p0, p2}, Lcom/wcl/notchfit/a$a;-><init>(Landroid/app/Activity;Lcb0;)V

    check-cast p1, Lza0;

    invoke-virtual {p1, p0, v0}, Lza0;->j(Landroid/app/Activity;Lcb0;)V

    return-void
.end method
