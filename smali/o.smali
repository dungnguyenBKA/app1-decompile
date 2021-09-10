.class public Lo;
.super Landroid/view/ActionMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    iput-object p1, p0, Lo;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lo;->b:Lk;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->c()V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->d()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 3

    .line 1
    new-instance v0, Landroidx/appcompat/view/menu/o;

    iget-object v1, p0, Lo;->a:Landroid/content/Context;

    iget-object v2, p0, Lo;->b:Lk;

    invoke-virtual {v2}, Lk;->e()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Lu1;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;Lu1;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->f()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->i()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->j()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->k()V

    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0}, Lk;->l()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0, p1}, Lk;->m(Landroid/view/View;)V

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0, p1}, Lk;->n(I)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0, p1}, Lk;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0, p1}, Lk;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0, p1}, Lk;->q(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0, p1}, Lk;->r(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo;->b:Lk;

    invoke-virtual {v0, p1}, Lk;->s(Z)V

    return-void
.end method
