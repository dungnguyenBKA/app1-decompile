.class Landroidx/appcompat/app/q;
.super Landroidx/appcompat/app/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/q$d;,
        Landroidx/appcompat/app/q$c;,
        Landroidx/appcompat/app/q$e;
    }
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/n;

.field b:Z

.field c:Landroid/view/Window$Callback;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroidx/appcompat/widget/Toolbar$e;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/q;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/appcompat/app/q$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$a;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->g:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Landroidx/appcompat/app/q$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$b;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->h:Landroidx/appcompat/widget/Toolbar$e;

    .line 5
    new-instance v1, Landroidx/appcompat/widget/k0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/k0;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    .line 6
    new-instance v1, Landroidx/appcompat/app/q$e;

    invoke-direct {v1, p0, p3}, Landroidx/appcompat/app/q$e;-><init>(Landroidx/appcompat/app/q;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/q;->c:Landroid/view/Window$Callback;

    .line 7
    iget-object p3, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {p3, v1}, Landroidx/appcompat/widget/n;->f(Landroid/view/Window$Callback;)V

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->V(Landroidx/appcompat/widget/Toolbar$e;)V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/n;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private s()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    new-instance v1, Landroidx/appcompat/app/q$c;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/q$c;-><init>(Landroidx/appcompat/app/q;)V

    new-instance v2, Landroidx/appcompat/app/q$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/q$d;-><init>(Landroidx/appcompat/app/q;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/n;->r(Landroidx/appcompat/view/menu/m$a;Landroidx/appcompat/view/menu/g$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->d:Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->o()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->i()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/q;->e:Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/app/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Landroidx/appcompat/app/q;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$a;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$a;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->u()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->s()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/q;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->s()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/q;->g:Ljava/lang/Runnable;

    .line 3
    sget v2, Lc3;->g:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public g(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->s()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/q;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public i(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/q;->s()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 3
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public j(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {p1}, Landroidx/appcompat/widget/n;->j()Z

    :cond_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0}, Landroidx/appcompat/widget/n;->j()Z

    move-result v0

    return v0
.end method

.method public l(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n;->g(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    return-void
.end method

.method public n(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v1}, Landroidx/appcompat/widget/n;->u()I

    move-result v1

    .line 2
    iget-object v2, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    and-int/2addr p1, v0

    const/4 v0, -0x5

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    invoke-interface {v2, p1}, Landroidx/appcompat/widget/n;->n(I)V

    return-void
.end method

.method public o(Z)V
    .locals 0

    return-void
.end method

.method public p(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/n;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/q;->a:Landroidx/appcompat/widget/n;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/n;->setVisibility(I)V

    return-void
.end method

.method t()V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/q;->s()Landroid/view/Menu;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/g;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->R()V

    .line 4
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 5
    iget-object v3, p0, Landroidx/appcompat/app/q;->c:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/appcompat/app/q;->c:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->Q()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->Q()V

    .line 9
    :cond_5
    throw v0
.end method
