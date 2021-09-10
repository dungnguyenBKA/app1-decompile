.class public Landroidx/appcompat/view/menu/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/e$a;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Landroid/view/LayoutInflater;

.field d:Landroidx/appcompat/view/menu/g;

.field e:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field private f:Landroidx/appcompat/view/menu/m$a;

.field g:Landroidx/appcompat/view/menu/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/e$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    return-object v0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->f:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->b(Landroidx/appcompat/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->f:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public getId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;

    .line 5
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/g;

    .line 6
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public i(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/r;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/h;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/h;-><init>(Landroidx/appcompat/view/menu/g;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/h;->a(Landroid/os/IBinder;)V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->f:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->c(Landroidx/appcompat/view/menu/g;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public k()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    iget-object v2, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    const-string v2, "android:menu:list"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public l(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0b000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 3
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Landroidx/appcompat/view/menu/e$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/g;

    iget-object p2, p0, Landroidx/appcompat/view/menu/e;->g:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/e$a;->b(I)Landroidx/appcompat/view/menu/i;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/g;->z(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    return-void
.end method
