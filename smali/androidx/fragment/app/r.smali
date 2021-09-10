.class Landroidx/fragment/app/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/r$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroidx/fragment/app/w;

.field private static final c:Landroidx/fragment/app/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/fragment/app/r;->a:[I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    new-instance v0, Landroidx/fragment/app/s;

    invoke-direct {v0}, Landroidx/fragment/app/s;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/w;

    :try_start_0
    const-string v0, "androidx.transition.e"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 5
    :catch_0
    sput-object v1, Landroidx/fragment/app/r;->c:Landroidx/fragment/app/w;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method private static a(Ljava/util/ArrayList;Lx;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le0;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Le0;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-static {v1}, Lc3;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroidx/fragment/app/a;Landroidx/fragment/app/m$a;Landroid/util/SparseArray;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/a;",
            "Landroidx/fragment/app/m$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/r$a;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    iget-object v6, p1, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    if-nez v6, :cond_0

    return-void

    .line 2
    :cond_0
    iget v7, v6, Landroidx/fragment/app/Fragment;->w:I

    if-nez v7, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 3
    sget-object v0, Landroidx/fragment/app/r;->a:[I

    iget p1, p1, Landroidx/fragment/app/m$a;->a:I

    aget p1, v0, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Landroidx/fragment/app/m$a;->a:I

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/4 v2, 0x6

    if-eq p1, v2, :cond_7

    const/4 v2, 0x7

    if-eq p1, v2, :cond_a

    const/4 p1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_3
    if-eqz p4, :cond_4

    .line 4
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_c

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_c

    goto :goto_3

    .line 5
    :cond_4
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    .line 6
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz p1, :cond_9

    goto :goto_1

    .line 7
    :cond_6
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_9

    goto :goto_1

    :cond_7
    if-eqz p4, :cond_8

    .line 8
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-nez p1, :cond_9

    iget-object p1, v6, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    iget p1, v6, Landroidx/fragment/app/Fragment;->L:F

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_9

    goto :goto_1

    .line 10
    :cond_8
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz p1, :cond_9

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_9

    :goto_1
    const/4 p1, 0x1

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_2
    move v8, p1

    const/4 p1, 0x1

    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    if-eqz p4, :cond_b

    .line 11
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->J:Z

    goto :goto_4

    .line 12
    :cond_b
    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->k:Z

    if-nez p1, :cond_c

    iget-boolean p1, v6, Landroidx/fragment/app/Fragment;->y:Z

    if-nez p1, :cond_c

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    const/4 v2, 0x1

    :goto_5
    move v1, p1

    const/4 p1, 0x0

    const/4 v8, 0x0

    .line 13
    :goto_6
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/r$a;

    if-eqz v1, :cond_e

    if-nez v3, :cond_d

    .line 14
    new-instance v1, Landroidx/fragment/app/r$a;

    invoke-direct {v1}, Landroidx/fragment/app/r$a;-><init>()V

    .line 15
    invoke-virtual {p2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v1

    .line 16
    :cond_d
    iput-object v6, v3, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    .line 17
    iput-boolean p3, v3, Landroidx/fragment/app/r$a;->b:Z

    .line 18
    iput-object p0, v3, Landroidx/fragment/app/r$a;->c:Landroidx/fragment/app/a;

    :cond_e
    move-object v9, v3

    const/4 v10, 0x0

    if-nez p4, :cond_10

    if-eqz v2, :cond_10

    if-eqz v9, :cond_f

    .line 19
    iget-object v1, v9, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    if-ne v1, v6, :cond_f

    .line 20
    iput-object v10, v9, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    .line 21
    :cond_f
    iget-object v1, p0, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/h;

    .line 22
    iget v2, v6, Landroidx/fragment/app/Fragment;->b:I

    if-ge v2, v0, :cond_10

    iget v2, v1, Landroidx/fragment/app/h;->p:I

    if-lt v2, v0, :cond_10

    iget-boolean v0, p0, Landroidx/fragment/app/m;->q:Z

    if-nez v0, :cond_10

    .line 23
    invoke-virtual {v1, v6}, Landroidx/fragment/app/h;->n0(Landroidx/fragment/app/Fragment;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v6

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_10
    if-eqz v8, :cond_13

    if-eqz v9, :cond_11

    .line 25
    iget-object v0, v9, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_13

    :cond_11
    if-nez v9, :cond_12

    .line 26
    new-instance v0, Landroidx/fragment/app/r$a;

    invoke-direct {v0}, Landroidx/fragment/app/r$a;-><init>()V

    .line 27
    invoke-virtual {p2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v0

    .line 28
    :cond_12
    iput-object v6, v9, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    .line 29
    iput-boolean p3, v9, Landroidx/fragment/app/r$a;->e:Z

    .line 30
    iput-object p0, v9, Landroidx/fragment/app/r$a;->f:Landroidx/fragment/app/a;

    :cond_13
    if-nez p4, :cond_14

    if-eqz p1, :cond_14

    if-eqz v9, :cond_14

    .line 31
    iget-object p0, v9, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    if-ne p0, v6, :cond_14

    .line 32
    iput-object v10, v9, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    :cond_14
    return-void
.end method

.method static c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLx;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->E()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()V

    :goto_0
    return-void
.end method

.method private static d(Landroidx/fragment/app/w;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/fragment/app/w;->e(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static e(Landroidx/fragment/app/w;Lx;Ljava/lang/Object;Landroidx/fragment/app/r$a;)Lx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Lx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/r$a;",
            ")",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p3, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Le0;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    if-nez v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    new-instance p2, Lx;

    invoke-direct {p2}, Lx;-><init>()V

    .line 5
    invoke-virtual {p0, p2, v1}, Landroidx/fragment/app/w;->i(Ljava/util/Map;Landroid/view/View;)V

    .line 6
    iget-object p0, p3, Landroidx/fragment/app/r$a;->c:Landroidx/fragment/app/a;

    .line 7
    iget-boolean p3, p3, Landroidx/fragment/app/r$a;->b:Z

    if-eqz p3, :cond_1

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->G()V

    .line 9
    iget-object p0, p0, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->E()V

    .line 11
    iget-object p0, p0, Landroidx/fragment/app/m;->p:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p2, p0}, Lx;->n(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {p1}, Lx;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p2, p0}, Lx;->n(Ljava/util/Collection;)Z

    .line 14
    :cond_2
    invoke-virtual {p1}, Le0;->size()I

    move-result p0

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_4

    .line 15
    invoke-virtual {p1, p0}, Le0;->l(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 16
    invoke-virtual {p2, p3}, Le0;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 17
    invoke-virtual {p1, p0}, Le0;->j(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object p2

    .line 18
    :cond_5
    :goto_2
    invoke-virtual {p1}, Le0;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Landroidx/fragment/app/w;Lx;Ljava/lang/Object;Landroidx/fragment/app/r$a;)Lx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Lx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/r$a;",
            ")",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p3, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    .line 3
    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    .line 4
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->Y0()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/w;->i(Ljava/util/Map;Landroid/view/View;)V

    .line 5
    iget-object p0, p3, Landroidx/fragment/app/r$a;->f:Landroidx/fragment/app/a;

    .line 6
    iget-boolean p3, p3, Landroidx/fragment/app/r$a;->e:Z

    if-eqz p3, :cond_1

    .line 7
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->E()V

    .line 8
    iget-object p0, p0, Landroidx/fragment/app/m;->p:Ljava/util/ArrayList;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->G()V

    .line 10
    iget-object p0, p0, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    .line 11
    :goto_0
    invoke-virtual {v0, p0}, Lx;->n(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual {v0}, Lx;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lx;->n(Ljava/util/Collection;)Z

    return-object v0

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {p1}, Le0;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->F()Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->R()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->N()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Q()Ljava/lang/Object;

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    return-object p1

    .line 12
    :cond_4
    sget-object p0, Landroidx/fragment/app/r;->b:Landroidx/fragment/app/w;

    if-eqz p0, :cond_5

    invoke-static {p0, v0}, Landroidx/fragment/app/r;->d(Landroidx/fragment/app/w;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p0

    .line 13
    :cond_5
    sget-object v1, Landroidx/fragment/app/r;->c:Landroidx/fragment/app/w;

    if-eqz v1, :cond_6

    invoke-static {v1, v0}, Landroidx/fragment/app/r;->d(Landroidx/fragment/app/w;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    if-nez p0, :cond_7

    if-nez v1, :cond_7

    return-object p1

    .line 14
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static h(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p2, p2, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/w;->f(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/w;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static i(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->N()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->D()Ljava/lang/Object;

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/w;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static j(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->F()Ljava/lang/Object;

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/w;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static k(Lx;Landroidx/fragment/app/r$a;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/fragment/app/r$a;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/r$a;->c:Landroidx/fragment/app/a;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 2
    iget-object p2, p1, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/m;->p:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static l(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->R()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->Q()Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->u(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Lx;ZLandroidx/fragment/app/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/w;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lx<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Landroidx/fragment/app/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p5, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 3
    iget-object p4, p5, Landroidx/fragment/app/m;->p:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 6
    :goto_0
    invoke-virtual {p3, p4}, Le0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 7
    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/w;->r(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0, p2, p3}, Landroidx/fragment/app/w;->r(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method static n(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static o(Landroidx/fragment/app/h;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/h;",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 1
    iget v5, v0, Landroidx/fragment/app/h;->p:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v3, :cond_4

    .line 3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/a;

    .line 4
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5
    iget-object v8, v9, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/h;

    iget-object v8, v8, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    invoke-virtual {v8}, Landroidx/fragment/app/c;->b()Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    iget-object v8, v9, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_1
    if-ltz v8, :cond_3

    .line 7
    iget-object v10, v9, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/m$a;

    .line 8
    invoke-static {v9, v10, v5, v6, v4}, Landroidx/fragment/app/r;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/m$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object v10, v9, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_3

    .line 10
    iget-object v12, v9, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/m$a;

    .line 11
    invoke-static {v9, v12, v5, v8, v4}, Landroidx/fragment/app/r;->b(Landroidx/fragment/app/a;Landroidx/fragment/app/m$a;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_2e

    .line 13
    new-instance v7, Landroid/view/View;

    iget-object v9, v0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v9}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v15, :cond_2e

    .line 15
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 16
    new-instance v13, Lx;

    invoke-direct {v13}, Lx;-><init>()V

    add-int/lit8 v10, v3, -0x1

    move/from16 v12, p3

    :goto_5
    if-lt v10, v12, :cond_9

    .line 17
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/fragment/app/a;

    .line 18
    invoke-virtual {v11, v9}, Landroidx/fragment/app/a;->s(I)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_9

    .line 19
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 20
    iget-object v6, v11, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 21
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v16, :cond_6

    .line 22
    iget-object v8, v11, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    .line 23
    iget-object v11, v11, Landroidx/fragment/app/m;->p:Ljava/util/ArrayList;

    goto :goto_6

    .line 24
    :cond_6
    iget-object v8, v11, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    .line 25
    iget-object v11, v11, Landroidx/fragment/app/m;->p:Ljava/util/ArrayList;

    move-object/from16 v37, v11

    move-object v11, v8

    move-object/from16 v8, v37

    :goto_6
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v6, :cond_8

    .line 26
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-virtual {v13, v3}, Le0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 29
    invoke-virtual {v13, v2, v6}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 30
    :cond_7
    invoke-virtual {v13, v2, v3}, Le0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v6, v17

    goto :goto_7

    :cond_8
    :goto_9
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_5

    .line 31
    :cond_9
    invoke-virtual {v5, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/r$a;

    if-eqz v4, :cond_1f

    .line 32
    iget-object v3, v0, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    invoke-virtual {v3}, Landroidx/fragment/app/c;->b()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 33
    iget-object v3, v0, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    invoke-virtual {v3, v9}, Landroidx/fragment/app/c;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_a

    :cond_a
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_b

    goto :goto_b

    .line 34
    :cond_b
    iget-object v6, v1, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    .line 35
    iget-object v8, v1, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    .line 36
    invoke-static {v8, v6}, Landroidx/fragment/app/r;->g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v9

    if-nez v9, :cond_d

    :goto_b
    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    :cond_c
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 37
    :cond_d
    iget-boolean v10, v1, Landroidx/fragment/app/r$a;->b:Z

    .line 38
    iget-boolean v11, v1, Landroidx/fragment/app/r$a;->e:Z

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-static {v9, v6, v10}, Landroidx/fragment/app/r;->i(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    .line 42
    invoke-static {v9, v8, v11}, Landroidx/fragment/app/r;->j(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v31, v5

    .line 43
    iget-object v5, v1, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    .line 44
    iget-object v12, v1, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_e

    move/from16 v32, v14

    .line 45
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->Y0()Landroid/view/View;

    move-result-object v14

    move/from16 v33, v15

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_e
    move/from16 v32, v14

    move/from16 v33, v15

    :goto_d
    if-eqz v5, :cond_17

    if-nez v12, :cond_f

    goto/16 :goto_11

    .line 46
    :cond_f
    iget-boolean v14, v1, Landroidx/fragment/app/r$a;->b:Z

    .line 47
    invoke-virtual {v13}, Le0;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v15, 0x0

    goto :goto_e

    .line 48
    :cond_10
    invoke-static {v9, v5, v12, v14}, Landroidx/fragment/app/r;->l(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v15

    .line 49
    :goto_e
    invoke-static {v9, v13, v15, v1}, Landroidx/fragment/app/r;->f(Landroidx/fragment/app/w;Lx;Ljava/lang/Object;Landroidx/fragment/app/r$a;)Lx;

    move-result-object v0

    move-object/from16 v34, v6

    .line 50
    invoke-static {v9, v13, v15, v1}, Landroidx/fragment/app/r;->e(Landroidx/fragment/app/w;Lx;Ljava/lang/Object;Landroidx/fragment/app/r$a;)Lx;

    move-result-object v6

    .line 51
    invoke-virtual {v13}, Le0;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_13

    if-eqz v0, :cond_11

    .line 52
    invoke-virtual {v0}, Le0;->clear()V

    :cond_11
    if-eqz v6, :cond_12

    .line 53
    invoke-virtual {v6}, Le0;->clear()V

    :cond_12
    const/4 v15, 0x0

    goto :goto_f

    :cond_13
    move-object/from16 v16, v15

    .line 54
    invoke-virtual {v13}, Lx;->keySet()Ljava/util/Set;

    move-result-object v15

    .line 55
    invoke-static {v4, v0, v15}, Landroidx/fragment/app/r;->a(Ljava/util/ArrayList;Lx;Ljava/util/Collection;)V

    .line 56
    invoke-virtual {v13}, Lx;->values()Ljava/util/Collection;

    move-result-object v15

    .line 57
    invoke-static {v2, v6, v15}, Landroidx/fragment/app/r;->a(Ljava/util/ArrayList;Lx;Ljava/util/Collection;)V

    move-object/from16 v15, v16

    :goto_f
    if-nez v10, :cond_14

    if-nez v11, :cond_14

    if-nez v15, :cond_14

    move-object/from16 v36, v2

    goto :goto_12

    :cond_14
    move-object/from16 v35, v13

    const/4 v13, 0x1

    .line 58
    invoke-static {v5, v12, v14, v0, v13}, Landroidx/fragment/app/r;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLx;Z)V

    if-eqz v15, :cond_16

    .line 59
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v9, v15, v7, v4}, Landroidx/fragment/app/w;->s(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 61
    iget-boolean v13, v1, Landroidx/fragment/app/r$a;->e:Z

    move-object/from16 v36, v2

    .line 62
    iget-object v2, v1, Landroidx/fragment/app/r$a;->f:Landroidx/fragment/app/a;

    move-object/from16 v16, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v11

    move-object/from16 v19, v0

    move/from16 v20, v13

    move-object/from16 v21, v2

    .line 63
    invoke-static/range {v16 .. v21}, Landroidx/fragment/app/r;->m(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Lx;ZLandroidx/fragment/app/a;)V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 65
    invoke-static {v6, v1, v10, v14}, Landroidx/fragment/app/r;->k(Lx;Landroidx/fragment/app/r$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 66
    invoke-virtual {v9, v10, v0}, Landroidx/fragment/app/w;->q(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_15
    move-object/from16 v29, v0

    move-object/from16 v27, v1

    goto :goto_10

    :cond_16
    move-object/from16 v36, v2

    const/16 v27, 0x0

    const/16 v29, 0x0

    .line 67
    :goto_10
    new-instance v0, Landroidx/fragment/app/p;

    move-object/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v24, v12

    move/from16 v25, v14

    move-object/from16 v26, v6

    move-object/from16 v28, v9

    invoke-direct/range {v22 .. v29}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLx;Landroid/view/View;Landroidx/fragment/app/w;Landroid/graphics/Rect;)V

    invoke-static {v3, v0}, Lz2;->a(Landroid/view/View;Ljava/lang/Runnable;)Lz2;

    goto :goto_13

    :cond_17
    :goto_11
    move-object/from16 v36, v2

    move-object/from16 v34, v6

    :goto_12
    move-object/from16 v35, v13

    const/4 v15, 0x0

    :goto_13
    if-nez v10, :cond_18

    if-nez v15, :cond_18

    if-nez v11, :cond_18

    goto/16 :goto_c

    .line 68
    :cond_18
    invoke-static {v9, v11, v8, v4, v7}, Landroidx/fragment/app/r;->h(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    .line 69
    invoke-static {v9, v10, v1, v2, v7}, Landroidx/fragment/app/r;->h(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x4

    .line 70
    invoke-static {v1, v5}, Landroidx/fragment/app/r;->n(Ljava/util/ArrayList;I)V

    .line 71
    invoke-virtual {v9, v11, v10, v15}, Landroidx/fragment/app/w;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz v8, :cond_19

    if-eqz v11, :cond_19

    .line 72
    iget-boolean v6, v8, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v6, :cond_19

    iget-boolean v6, v8, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v6, :cond_19

    iget-boolean v6, v8, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v6, :cond_19

    const/4 v6, 0x1

    .line 73
    invoke-virtual {v8, v6}, Landroidx/fragment/app/Fragment;->d1(Z)V

    .line 74
    iget-object v6, v8, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    .line 75
    invoke-virtual {v9, v11, v6, v0}, Landroidx/fragment/app/w;->o(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 76
    iget-object v6, v8, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 77
    new-instance v8, Landroidx/fragment/app/n;

    invoke-direct {v8, v0}, Landroidx/fragment/app/n;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v6, v8}, Lz2;->a(Landroid/view/View;Ljava/lang/Runnable;)Lz2;

    .line 78
    :cond_19
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v8, :cond_1a

    .line 80
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 81
    invoke-static {v13}, Lc3;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 82
    invoke-static {v13, v14}, Lc3;->z(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_1a
    move-object/from16 v22, v9

    move-object/from16 v23, v5

    move-object/from16 v24, v10

    move-object/from16 v25, v1

    move-object/from16 v26, v11

    move-object/from16 v27, v0

    move-object/from16 v28, v15

    move-object/from16 v29, v2

    .line 83
    invoke-virtual/range {v22 .. v29}, Landroidx/fragment/app/w;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 84
    invoke-virtual {v9, v3, v5}, Landroidx/fragment/app/w;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v0, :cond_1e

    .line 87
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 88
    invoke-static {v10}, Lc3;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v11

    .line 89
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v11, :cond_1b

    move-object/from16 v13, v35

    goto :goto_17

    :cond_1b
    const/4 v14, 0x0

    .line 90
    invoke-static {v10, v14}, Lc3;->z(Landroid/view/View;Ljava/lang/String;)V

    move-object/from16 v13, v35

    .line 91
    invoke-virtual {v13, v11, v14}, Le0;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 92
    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v0, :cond_1d

    .line 93
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 94
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-static {v10, v11}, Lc3;->z(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_17

    :cond_1c
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_16

    :cond_1d
    :goto_17
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v35, v13

    goto :goto_15

    .line 95
    :cond_1e
    new-instance v8, Landroidx/fragment/app/t;

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v6

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    invoke-direct/range {v22 .. v28}, Landroidx/fragment/app/t;-><init>(Landroidx/fragment/app/w;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v3, v8}, Lz2;->a(Landroid/view/View;Ljava/lang/Runnable;)Lz2;

    const/4 v0, 0x0

    .line 96
    invoke-static {v1, v0}, Landroidx/fragment/app/r;->n(Ljava/util/ArrayList;I)V

    .line 97
    invoke-virtual {v9, v15, v4, v2}, Landroidx/fragment/app/w;->t(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_18
    move-object/from16 v2, p0

    goto :goto_1a

    :cond_1f
    move-object v2, v0

    move-object/from16 v31, v5

    move/from16 v32, v14

    move/from16 v33, v15

    const/4 v0, 0x0

    .line 98
    iget-object v3, v2, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    invoke-virtual {v3}, Landroidx/fragment/app/c;->b()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 99
    iget-object v3, v2, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    invoke-virtual {v3, v9}, Landroidx/fragment/app/c;->a(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/view/ViewGroup;

    move-object v3, v14

    goto :goto_19

    :cond_20
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_21

    goto :goto_1a

    .line 100
    :cond_21
    iget-object v4, v1, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    .line 101
    iget-object v5, v1, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    .line 102
    invoke-static {v5, v4}, Landroidx/fragment/app/r;->g(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v6

    if-nez v6, :cond_22

    :goto_1a
    move/from16 v1, v32

    move/from16 v29, v33

    goto/16 :goto_20

    .line 103
    :cond_22
    iget-boolean v8, v1, Landroidx/fragment/app/r$a;->b:Z

    .line 104
    iget-boolean v9, v1, Landroidx/fragment/app/r$a;->e:Z

    .line 105
    invoke-static {v6, v4, v8}, Landroidx/fragment/app/r;->i(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v8

    .line 106
    invoke-static {v6, v5, v9}, Landroidx/fragment/app/r;->j(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v12

    .line 107
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v9, v1, Landroidx/fragment/app/r$a;->a:Landroidx/fragment/app/Fragment;

    .line 110
    iget-object v15, v1, Landroidx/fragment/app/r$a;->d:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_29

    if-nez v15, :cond_23

    goto/16 :goto_1e

    .line 111
    :cond_23
    iget-boolean v14, v1, Landroidx/fragment/app/r$a;->b:Z

    .line 112
    invoke-virtual {v13}, Le0;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_24

    const/4 v0, 0x0

    goto :goto_1b

    .line 113
    :cond_24
    invoke-static {v6, v9, v15, v14}, Landroidx/fragment/app/r;->l(Landroidx/fragment/app/w;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    .line 114
    :goto_1b
    invoke-static {v6, v13, v0, v1}, Landroidx/fragment/app/r;->f(Landroidx/fragment/app/w;Lx;Ljava/lang/Object;Landroidx/fragment/app/r$a;)Lx;

    move-result-object v2

    .line 115
    invoke-virtual {v13}, Le0;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_25

    const/4 v0, 0x0

    goto :goto_1c

    :cond_25
    move-object/from16 v16, v0

    .line 116
    invoke-virtual {v2}, Lx;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    :goto_1c
    if-nez v8, :cond_26

    if-nez v12, :cond_26

    if-nez v0, :cond_26

    goto/16 :goto_1e

    :cond_26
    move-object/from16 v22, v4

    const/4 v4, 0x1

    .line 117
    invoke-static {v9, v15, v14, v2, v4}, Landroidx/fragment/app/r;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLx;Z)V

    if-eqz v0, :cond_27

    .line 118
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 119
    invoke-virtual {v6, v0, v7, v11}, Landroidx/fragment/app/w;->s(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v20, v9

    .line 120
    iget-boolean v9, v1, Landroidx/fragment/app/r$a;->e:Z

    move-object/from16 v21, v10

    .line 121
    iget-object v10, v1, Landroidx/fragment/app/r$a;->f:Landroidx/fragment/app/a;

    move/from16 v23, v14

    move-object v14, v6

    move-object/from16 v24, v15

    move-object v15, v0

    move-object/from16 v16, v12

    move-object/from16 v17, v2

    move/from16 v18, v9

    move-object/from16 v19, v10

    .line 122
    invoke-static/range {v14 .. v19}, Landroidx/fragment/app/r;->m(Landroidx/fragment/app/w;Ljava/lang/Object;Ljava/lang/Object;Lx;ZLandroidx/fragment/app/a;)V

    if-eqz v8, :cond_28

    .line 123
    invoke-virtual {v6, v8, v4}, Landroidx/fragment/app/w;->q(Ljava/lang/Object;Landroid/graphics/Rect;)V

    goto :goto_1d

    :cond_27
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v23, v14

    move-object/from16 v24, v15

    const/4 v4, 0x0

    .line 124
    :cond_28
    :goto_1d
    new-instance v2, Landroidx/fragment/app/q;

    move-object/from16 v16, v20

    move-object v9, v2

    move-object/from16 v15, v21

    move-object v10, v6

    move-object v14, v11

    move-object v11, v13

    move-object/from16 v25, v5

    move-object v5, v12

    move-object v12, v0

    move-object/from16 v26, v0

    move-object v0, v13

    move-object v13, v1

    move-object/from16 v27, v14

    move/from16 v1, v32

    const/16 v28, 0x0

    move-object v14, v15

    move-object/from16 v30, v15

    move/from16 v29, v33

    move-object v15, v7

    move-object/from16 v17, v24

    move/from16 v18, v23

    move-object/from16 v19, v27

    move-object/from16 v20, v8

    move-object/from16 v21, v4

    invoke-direct/range {v9 .. v21}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/w;Lx;Ljava/lang/Object;Landroidx/fragment/app/r$a;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, Lz2;->a(Landroid/view/View;Ljava/lang/Runnable;)Lz2;

    move-object/from16 v2, v26

    goto :goto_1f

    :cond_29
    :goto_1e
    move-object/from16 v22, v4

    move-object/from16 v25, v5

    move-object/from16 v30, v10

    move-object/from16 v27, v11

    move-object v5, v12

    move-object v0, v13

    move/from16 v1, v32

    move/from16 v29, v33

    const/16 v28, 0x0

    move-object/from16 v2, v28

    :goto_1f
    if-nez v8, :cond_2a

    if-nez v2, :cond_2a

    if-nez v5, :cond_2a

    goto/16 :goto_20

    :cond_2a
    move-object/from16 v4, v25

    move-object/from16 v9, v27

    .line 125
    invoke-static {v6, v5, v4, v9, v7}, Landroidx/fragment/app/r;->h(Landroidx/fragment/app/w;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2c

    :cond_2b
    move-object/from16 v5, v28

    .line 127
    :cond_2c
    invoke-virtual {v6, v8, v7}, Landroidx/fragment/app/w;->a(Ljava/lang/Object;Landroid/view/View;)V

    .line 128
    invoke-virtual {v6, v5, v8, v2}, Landroidx/fragment/app/w;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2d

    .line 129
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    move-object v15, v13

    move-object/from16 v16, v8

    move-object/from16 v17, v23

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v21, v30

    .line 130
    invoke-virtual/range {v14 .. v21}, Landroidx/fragment/app/w;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 131
    new-instance v2, Landroidx/fragment/app/o;

    move-object v9, v2

    move-object v10, v8

    move-object v11, v6

    move-object v12, v7

    move-object v8, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v30

    move-object/from16 v15, v23

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    invoke-direct/range {v9 .. v17}, Landroidx/fragment/app/o;-><init>(Ljava/lang/Object;Landroidx/fragment/app/w;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v3, v2}, Lz2;->a(Landroid/view/View;Ljava/lang/Runnable;)Lz2;

    .line 132
    new-instance v2, Landroidx/fragment/app/u;

    move-object/from16 v4, v30

    invoke-direct {v2, v6, v4, v0}, Landroidx/fragment/app/u;-><init>(Landroidx/fragment/app/w;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v2}, Lz2;->a(Landroid/view/View;Ljava/lang/Runnable;)Lz2;

    .line 133
    invoke-virtual {v6, v3, v8}, Landroidx/fragment/app/w;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 134
    new-instance v2, Landroidx/fragment/app/v;

    invoke-direct {v2, v6, v4, v0}, Landroidx/fragment/app/v;-><init>(Landroidx/fragment/app/w;Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-static {v3, v2}, Lz2;->a(Landroid/view/View;Ljava/lang/Runnable;)Lz2;

    :cond_2d
    :goto_20
    add-int/lit8 v14, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v15, v29

    move-object/from16 v5, v31

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_2e
    return-void
.end method
