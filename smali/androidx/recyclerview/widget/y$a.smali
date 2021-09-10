.class public Landroidx/recyclerview/widget/y$a;
.super Ln2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final d:Landroidx/recyclerview/widget/y;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ln2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln2;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/y$a;->d:Landroidx/recyclerview/widget/y;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ln2;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Ln2;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;)Lo3;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ln2;->b(Landroid/view/View;)Lo3;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Ln2;->b(Landroid/view/View;)Lo3;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ln2;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Ln2;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public e(Landroid/view/View;Ln3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->d:Landroidx/recyclerview/widget/y;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/y;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->d:Landroidx/recyclerview/widget/y;

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->d:Landroidx/recyclerview/widget/y;

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->y0(Landroid/view/View;Ln3;)V

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Ln2;->e(Landroid/view/View;Ln3;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Ln2;->e(Landroid/view/View;Ln3;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1, p2}, Ln2;->e(Landroid/view/View;Ln3;)V

    :goto_0
    return-void
.end method

.method public f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ln2;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Ln2;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Ln2;->g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ln2;->g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->d:Landroidx/recyclerview/widget/y;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/y;->l()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->d:Landroidx/recyclerview/widget/y;

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Ln2;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ln2;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/y$a;->d:Landroidx/recyclerview/widget/y;

    iget-object p1, p1, Landroidx/recyclerview/widget/y;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    .line 7
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->Q0()Z

    move-result p1

    return p1

    .line 8
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ln2;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public i(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ln2;->i(Landroid/view/View;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Ln2;->i(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public j(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ln2;->j(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Ln2;->j(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method k(Landroid/view/View;)Ln2;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln2;

    return-object p1
.end method

.method l(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lc3;->f(Landroid/view/View;)Ln2;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/y$a;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
