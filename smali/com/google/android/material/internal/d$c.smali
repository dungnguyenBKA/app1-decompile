.class Lcom/google/android/material/internal/d$c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/google/android/material/internal/d$l;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/d$e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/appcompat/view/menu/i;

.field private e:Z

.field final synthetic f:Lcom/google/android/material/internal/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/internal/d$c;->A()V

    return-void
.end method

.method private A()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/material/internal/d$c;->e:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/google/android/material/internal/d$c;->e:Z

    .line 3
    iget-object v2, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v2, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/material/internal/d$d;

    invoke-direct {v3}, Lcom/google/android/material/internal/d$d;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 5
    iget-object v3, v0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v3, v3, Lcom/google/android/material/internal/d;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->r()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v3, :cond_f

    .line 6
    iget-object v8, v0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v8, v8, Lcom/google/android/material/internal/d;->d:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->r()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/i;

    .line 7
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/d$c;->C(Landroidx/appcompat/view/menu/i;)V

    .line 9
    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10
    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/i;->r(Z)V

    .line 11
    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 12
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 13
    check-cast v9, Landroidx/appcompat/view/menu/g;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/g;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v5, :cond_3

    .line 14
    iget-object v10, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/d$f;

    iget-object v12, v0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget v12, v12, Lcom/google/android/material/internal/d;->t:I

    invoke-direct {v11, v12, v4}, Lcom/google/android/material/internal/d$f;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    iget-object v10, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/d$g;

    invoke-direct {v11, v8}, Lcom/google/android/material/internal/d$g;-><init>(Landroidx/appcompat/view/menu/i;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v10, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 17
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/g;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    .line 18
    invoke-virtual {v9, v12}, Landroidx/appcompat/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/i;

    .line 19
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    .line 20
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    .line 21
    :cond_4
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 22
    invoke-virtual {v14, v4}, Landroidx/appcompat/view/menu/i;->r(Z)V

    .line 23
    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 24
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/d$c;->C(Landroidx/appcompat/view/menu/i;)V

    .line 25
    :cond_6
    iget-object v15, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/material/internal/d$g;

    invoke-direct {v4, v14}, Lcom/google/android/material/internal/d$g;-><init>(Landroidx/appcompat/view/menu/i;)V

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_e

    .line 26
    iget-object v4, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v10, v4, :cond_e

    .line 27
    iget-object v8, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/internal/d$g;

    .line 28
    iput-boolean v1, v8, Lcom/google/android/material/internal/d$g;->b:Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 29
    :cond_9
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v4

    if-eq v4, v2, :cond_b

    .line 30
    iget-object v2, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 31
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v6, 0x1

    goto :goto_3

    :cond_a
    const/4 v6, 0x0

    :goto_3
    if-eqz v5, :cond_d

    add-int/lit8 v7, v7, 0x1

    .line 32
    iget-object v2, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    new-instance v9, Lcom/google/android/material/internal/d$f;

    iget-object v10, v0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget v10, v10, Lcom/google/android/material/internal/d;->t:I

    invoke-direct {v9, v10, v10}, Lcom/google/android/material/internal/d$f;-><init>(II)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    if-nez v6, :cond_d

    .line 33
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 34
    iget-object v2, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v7

    :goto_4
    if-ge v6, v2, :cond_c

    .line 35
    iget-object v9, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/internal/d$g;

    .line 36
    iput-boolean v1, v9, Lcom/google/android/material/internal/d$g;->b:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    const/4 v6, 0x1

    .line 37
    :cond_d
    :goto_5
    new-instance v2, Lcom/google/android/material/internal/d$g;

    invoke-direct {v2, v8}, Lcom/google/android/material/internal/d$g;-><init>(Landroidx/appcompat/view/menu/i;)V

    .line 38
    iput-boolean v6, v2, Lcom/google/android/material/internal/d$g;->b:Z

    .line 39
    iget-object v8, v0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    .line 40
    iput-boolean v2, v0, Lcom/google/android/material/internal/d$c;->e:Z

    return-void
.end method


# virtual methods
.method public B(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "android:menu:checked"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, p0, Lcom/google/android/material/internal/d$c;->e:Z

    .line 3
    iget-object v2, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    iget-object v4, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/d$e;

    .line 5
    instance-of v5, v4, Lcom/google/android/material/internal/d$g;

    if-eqz v5, :cond_0

    .line 6
    check-cast v4, Lcom/google/android/material/internal/d$g;

    invoke-virtual {v4}, Lcom/google/android/material/internal/d$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 8
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/d$c;->C(Landroidx/appcompat/view/menu/i;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/material/internal/d$c;->e:Z

    .line 10
    invoke-direct {p0}, Lcom/google/android/material/internal/d$c;->A()V

    :cond_2
    const-string v0, "android:menu:action_views"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 12
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    .line 13
    iget-object v2, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/d$e;

    .line 14
    instance-of v3, v2, Lcom/google/android/material/internal/d$g;

    if-nez v3, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    check-cast v2, Lcom/google/android/material/internal/d$g;

    invoke-virtual {v2}, Lcom/google/android/material/internal/d$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-nez v2, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public C(Landroidx/appcompat/view/menu/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->d:Landroidx/appcompat/view/menu/i;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->d:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/i;->setChecked(Z)Landroid/view/MenuItem;

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/d$c;->d:Landroidx/appcompat/view/menu/i;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/i;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/internal/d$c;->e:Z

    return-void
.end method

.method public E()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/internal/d$c;->A()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->f()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public c(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public d(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/d$e;

    .line 2
    instance-of v0, p1, Lcom/google/android/material/internal/d$f;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/d$d;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 4
    :cond_1
    instance-of v0, p1, Lcom/google/android/material/internal/d$g;

    if-eqz v0, :cond_3

    .line 5
    check-cast p1, Lcom/google/android/material/internal/d$g;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/internal/d$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/material/internal/d$l;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/d$c;->d(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/d$f;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/material/internal/d$f;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/internal/d$f;->a()I

    move-result p2

    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 5
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/d$g;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/material/internal/d$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 9
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->B(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-boolean v2, v0, Lcom/google/android/material/internal/d;->i:Z

    if-eqz v2, :cond_3

    .line 11
    iget v0, v0, Lcom/google/android/material/internal/d;->h:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->E(I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->F(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 16
    :goto_0
    sget v2, Lc3;->g:I

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/d$g;

    .line 19
    iget-boolean v0, p2, Lcom/google/android/material/internal/d$g;->b:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->D(Z)V

    .line 20
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget v0, v0, Lcom/google/android/material/internal/d;->m:I

    .line 21
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 22
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget v0, v0, Lcom/google/android/material/internal/d;->n:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->z(I)V

    .line 23
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-boolean v2, v0, Lcom/google/android/material/internal/d;->p:Z

    if-eqz v2, :cond_6

    .line 24
    iget v0, v0, Lcom/google/android/material/internal/d;->o:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->A(I)V

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    invoke-static {v0}, Lcom/google/android/material/internal/d;->a(Lcom/google/android/material/internal/d;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->C(I)V

    .line 26
    invoke-virtual {p2}, Lcom/google/android/material/internal/d$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->k(Landroidx/appcompat/view/menu/i;I)V

    :goto_1
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    new-instance p1, Lcom/google/android/material/internal/d$b;

    iget-object p2, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object p2, p2, Lcom/google/android/material/internal/d;->c:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lcom/google/android/material/internal/d$b;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p2, Lcom/google/android/material/internal/d$j;

    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->g:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/d$j;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 3
    :cond_2
    new-instance p2, Lcom/google/android/material/internal/d$k;

    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->g:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/d$k;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 4
    :cond_3
    new-instance p2, Lcom/google/android/material/internal/d$i;

    iget-object v0, p0, Lcom/google/android/material/internal/d$c;->f:Lcom/google/android/material/internal/d;

    iget-object v1, v0, Lcom/google/android/material/internal/d;->g:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lcom/google/android/material/internal/d;->v:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/material/internal/d$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/material/internal/d$l;

    .line 2
    instance-of v0, p1, Lcom/google/android/material/internal/d$i;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->x()V

    :cond_0
    return-void
.end method

.method public z()Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/d$c;->d:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v1

    const-string v2, "android:menu:checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 6
    iget-object v4, p0, Lcom/google/android/material/internal/d$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/d$e;

    .line 7
    instance-of v5, v4, Lcom/google/android/material/internal/d$g;

    if-eqz v5, :cond_2

    .line 8
    check-cast v4, Lcom/google/android/material/internal/d$g;

    invoke-virtual {v4}, Lcom/google/android/material/internal/d$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 10
    new-instance v6, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v6}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 11
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 12
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:action_views"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method
