.class public abstract Landroidx/appcompat/view/menu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Landroid/content/Context;

.field protected d:Landroidx/appcompat/view/menu/g;

.field protected e:Landroid/view/LayoutInflater;

.field private f:Landroidx/appcompat/view/menu/m$a;

.field private g:I

.field private h:I

.field protected i:Landroidx/appcompat/view/menu/n;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Landroidx/appcompat/view/menu/b;->g:I

    .line 5
    iput p3, p0, Landroidx/appcompat/view/menu/b;->h:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
.end method

.method public b(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->k()V

    .line 4
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->r()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/i;

    .line 7
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/view/menu/b;->q(ILandroidx/appcompat/view/menu/i;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 9
    instance-of v7, v6, Landroidx/appcompat/view/menu/n$a;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroidx/appcompat/view/menu/n$a;

    .line 10
    invoke-interface {v7}, Landroidx/appcompat/view/menu/n$a;->c()Landroidx/appcompat/view/menu/i;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 11
    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Landroidx/appcompat/view/menu/b;->n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_2

    .line 12
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 13
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v8, v6, :cond_4

    .line 14
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    :cond_3
    iget-object v5, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move v1, v4

    .line 17
    :cond_7
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 18
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/b;->l(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/view/menu/b;->j:I

    return v0
.end method

.method public h(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->c:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/r;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->c(Landroidx/appcompat/view/menu/g;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract l(Landroid/view/ViewGroup;I)Z
.end method

.method public m()Landroidx/appcompat/view/menu/m$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->f:Landroidx/appcompat/view/menu/m$a;

    return-object v0
.end method

.method public n(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    instance-of v0, p2, Landroidx/appcompat/view/menu/n$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Landroidx/appcompat/view/menu/n$a;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/view/LayoutInflater;

    iget v0, p0, Landroidx/appcompat/view/menu/b;->h:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/n$a;

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V

    .line 5
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public o(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/view/LayoutInflater;

    iget v1, p0, Landroidx/appcompat/view/menu/b;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/n;

    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->d:Landroidx/appcompat/view/menu/g;

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/n;->b(Landroidx/appcompat/view/menu/g;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/b;->c(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->i:Landroidx/appcompat/view/menu/n;

    return-object p1
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/view/menu/b;->j:I

    return-void
.end method

.method public abstract q(ILandroidx/appcompat/view/menu/i;)Z
.end method
