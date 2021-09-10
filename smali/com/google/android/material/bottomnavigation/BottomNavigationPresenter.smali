.class public Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private b:Landroidx/appcompat/view/menu/g;

.field private c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->d()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->x()V

    :goto_0
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

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->e:I

    return v0
.end method

.method public h(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->b:Landroidx/appcompat/view/menu/g;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->b(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public i(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->w(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->c:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/material/badge/a;->a(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->l(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public j(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k()Landroid/os/Parcelable;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->i()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->b:I

    .line 3
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->c:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->f()Landroid/util/SparseArray;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v2}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 8
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v5}, Lcom/google/android/material/badge/BadgeDrawable;->f()Lcom/google/android/material/badge/BadgeDrawable$SavedState;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badgeDrawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    iput-object v2, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->c:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->e:I

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->d:Z

    return-void
.end method
