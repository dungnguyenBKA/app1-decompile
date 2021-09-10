.class public Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/f<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/f<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    return-void
.end method

.method public static b(Landroidx/fragment/app/f;)Landroidx/fragment/app/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/f<",
            "*>;)",
            "Landroidx/fragment/app/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/fragment/app/d;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/app/b;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d;-><init>(Landroidx/fragment/app/f;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, p1, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroidx/fragment/app/h;->l(Landroidx/fragment/app/f;Landroidx/fragment/app/c;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->r()V

    return-void
.end method

.method public d(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->s(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public e(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->t(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->u()V

    return-void
.end method

.method public g(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/h;->v(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->w()V

    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->y()V

    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->z(Z)V

    return-void
.end method

.method public k(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->O(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public l(Landroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->P(Landroid/view/Menu;)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->R()V

    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->S(Z)V

    return-void
.end method

.method public o(Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->T(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->V()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->W()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->Y()V

    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->b0()Z

    move-result v0

    return v0
.end method

.method public t(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->f0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public u()Landroidx/fragment/app/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->s0()V

    return-void
.end method

.method public w(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/h;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    instance-of v1, v0, Landroidx/lifecycle/v;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->w0(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/d;->a:Landroidx/fragment/app/f;

    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->x0()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
