.class Lob0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lub0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lob0;


# direct methods
.method constructor <init>(Lob0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lob0$a;->a:Lob0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lob0$a;->a:Lob0;

    invoke-static {p2}, Lob0;->c(Lob0;)Lwb0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lob0$a;->a:Lob0;

    invoke-static {p2}, Lob0;->c(Lob0;)Lwb0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lub0;->h(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object p2, p0, Lob0$a;->a:Lob0;

    invoke-static {p2}, Lob0;->f(Lob0;)Lrb0;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lob0$a;->a:Lob0;

    invoke-static {p2}, Lob0;->f(Lob0;)Lrb0;

    move-result-object p2

    invoke-interface {p2, p1}, Lrb0;->d(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->f(Lob0;)Lrb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->f(Lob0;)Lrb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lrb0;->e(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->g(Lob0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->h(Lob0;)Ljc0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->h(Lob0;)Ljc0;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljc0;->c(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lob0$a;->a:Lob0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lob0;->i(Lob0;Ljc0;)Ljc0;

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->c(Lob0;)Lwb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->c(Lob0;)Lwb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->e(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->f(Lob0;)Lrb0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->f(Lob0;)Lrb0;

    move-result-object v0

    invoke-interface {v0, p1}, Lsb0;->b(Landroid/content/Context;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-virtual {v0, p1}, Lnb0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public d(Landroid/app/Activity;Lkb0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lkb0;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterstitialAD"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->c(Lob0;)Lwb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->c(Lob0;)Lwb0;

    move-result-object v0

    invoke-virtual {p2}, Lkb0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lub0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lob0$a;->a:Lob0;

    invoke-static {p2}, Lob0;->d(Lob0;)Llb0;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lob0;->e(Lob0;Landroid/app/Activity;Llb0;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->c(Lob0;)Lwb0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lob0$a;->a:Lob0;

    invoke-static {v0}, Lob0;->c(Lob0;)Lwb0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lub0;->g(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
