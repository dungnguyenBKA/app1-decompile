.class public Landroidx/appcompat/view/menu/r;
.super Landroidx/appcompat/view/menu/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private A:Landroidx/appcompat/view/menu/i;

.field private z:Landroidx/appcompat/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    .line 3
    iput-object p3, p0, Landroidx/appcompat/view/menu/r;->A:Landroidx/appcompat/view/menu/i;

    return-void
.end method


# virtual methods
.method public G(Landroidx/appcompat/view/menu/g$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->G(Landroidx/appcompat/view/menu/g$a;)V

    return-void
.end method

.method public S()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public f(Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->f(Landroidx/appcompat/view/menu/i;)Z

    move-result p1

    return p1
.end method

.method g(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/g;->g(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/g;->g(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method public h(Landroidx/appcompat/view/menu/i;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->h(Landroidx/appcompat/view/menu/i;)Z

    move-result p1

    return p1
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:menu:actionviewstates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Landroidx/appcompat/view/menu/g;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->q()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->s()Z

    move-result v0

    return v0
.end method

.method public setGroupDividerEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->J(I)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->K(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->M(I)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->N(Ljava/lang/CharSequence;)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->O(Landroid/view/View;)Landroidx/appcompat/view/menu/g;

    move-object p1, p0

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->A:Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/i;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->t()Z

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/r;->z:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->u()Z

    move-result v0

    return v0
.end method
