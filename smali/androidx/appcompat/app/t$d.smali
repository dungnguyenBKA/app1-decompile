.class public Landroidx/appcompat/app/t$d;
.super Lk;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroidx/appcompat/view/menu/g;

.field private f:Lk$a;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Landroidx/appcompat/app/t;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/t;Landroid/content/Context;Lk$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    invoke-direct {p0}, Lk;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/t$d;->d:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    .line 4
    new-instance p1, Landroidx/appcompat/view/menu/g;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->H(I)Landroidx/appcompat/view/menu/g;

    iput-object p1, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    .line 6
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/g;->G(Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Lk$a;->d(Lk;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/t$d;->k()V

    .line 3
    iget-object p1, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object p1, p1, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->r()Z

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v1, v0, Landroidx/appcompat/app/t;->i:Landroidx/appcompat/app/t$d;

    if-eq v1, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Landroidx/appcompat/app/t;->q:Z

    const/4 v2, 0x0

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 3
    iput-object p0, v0, Landroidx/appcompat/app/t;->j:Lk;

    .line 4
    iget-object v1, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    iput-object v1, v0, Landroidx/appcompat/app/t;->k:Lk$a;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    invoke-interface {v0, p0}, Lk$a;->a(Lk;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    .line 7
    iget-object v1, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/t;->s(Z)V

    .line 8
    iget-object v1, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v1, v1, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 9
    iget-object v1, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v1, v1, Landroidx/appcompat/app/t;->e:Landroidx/appcompat/widget/n;

    invoke-interface {v1}, Landroidx/appcompat/widget/n;->s()Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 10
    iget-object v1, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v2, v1, Landroidx/appcompat/app/t;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Landroidx/appcompat/app/t;->v:Z

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->z(Z)V

    .line 11
    iget-object v1, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iput-object v0, v1, Landroidx/appcompat/app/t;->i:Landroidx/appcompat/app/t$d;

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public f()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Lp;

    iget-object v1, p0, Landroidx/appcompat/app/t$d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lp;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->i:Landroidx/appcompat/app/t$d;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->R()V

    .line 3
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    iget-object v1, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Lk$a;->c(Lk;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->Q()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->Q()V

    .line 5
    throw v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->j()Z

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->m(Landroid/view/View;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/t$d;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public r(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lk;->s(Z)V

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->h:Landroidx/appcompat/app/t;

    iget-object v0, v0, Landroidx/appcompat/app/t;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->p(Z)V

    return-void
.end method

.method public t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->R()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/t$d;->f:Lk$a;

    iget-object v1, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Lk$a;->b(Lk;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->Q()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/t$d;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->Q()V

    .line 4
    throw v0
.end method
