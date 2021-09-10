.class Lpb0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lub0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpb0;


# direct methods
.method constructor <init>(Lpb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpb0$a;->a:Lpb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->h(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->f(Lpb0;)Ltb0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->f(Lpb0;)Ltb0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltb0;->a(Landroid/content/Context;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->e(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->f(Lpb0;)Ltb0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->f(Lpb0;)Ltb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lsb0;->b(Landroid/content/Context;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-virtual {v0, p1}, Lnb0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public d(Landroid/app/Activity;Lkb0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    invoke-virtual {p2}, Lkb0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lub0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lpb0$a;->a:Lpb0;

    invoke-static {p2}, Lpb0;->d(Lpb0;)Llb0;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lpb0;->e(Lpb0;Landroid/app/Activity;Llb0;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lpb0$a;->a:Lpb0;

    invoke-static {v0}, Lpb0;->c(Lpb0;)Lxb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->g(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
