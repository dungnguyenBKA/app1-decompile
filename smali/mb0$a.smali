.class Lmb0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lub0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmb0;


# direct methods
.method constructor <init>(Lmb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmb0$a;->a:Lmb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->e(Lmb0;)Lqb0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->h(Lmb0;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->h(Lmb0;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_0
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lub0;->a(Landroid/app/Activity;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->c(Lmb0;)Lvb0;

    move-result-object v1

    invoke-static {v0, v1}, Lmb0;->g(Lmb0;Lvb0;)Lvb0;

    .line 8
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->h(Landroid/content/Context;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->e(Lmb0;)Lqb0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lqb0;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lmb0$a;->a:Lmb0;

    invoke-static {p1, p2}, Lmb0;->i(Lmb0;Landroid/view/View;)Landroid/view/View;

    :cond_3
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-virtual {v0, p1}, Lnb0;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->e(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->e(Lmb0;)Lqb0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->e(Lmb0;)Lqb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lsb0;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public d(Landroid/app/Activity;Lkb0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lkb0;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerAD"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->c(Lmb0;)Lvb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->c(Lmb0;)Lvb0;

    move-result-object v0

    invoke-virtual {p2}, Lkb0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lub0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lmb0$a;->a:Lmb0;

    invoke-virtual {p2}, Lmb0;->k()Llb0;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lmb0;->d(Lmb0;Landroid/app/Activity;Llb0;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmb0$a;->a:Lmb0;

    invoke-static {v0}, Lmb0;->f(Lmb0;)Lvb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->g(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
