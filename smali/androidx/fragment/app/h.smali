.class final Landroidx/fragment/app/h;
.super Landroidx/fragment/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/h$e;,
        Landroidx/fragment/app/h$d;,
        Landroidx/fragment/app/h$j;,
        Landroidx/fragment/app/h$i;,
        Landroidx/fragment/app/h$h;,
        Landroidx/fragment/app/h$g;,
        Landroidx/fragment/app/h$f;
    }
.end annotation


# static fields
.field static final H:Landroid/view/animation/Interpolator;

.field static final I:Landroid/view/animation/Interpolator;


# instance fields
.field A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field C:Landroid/os/Bundle;

.field D:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/h$j;",
            ">;"
        }
    .end annotation
.end field

.field private F:Landroidx/fragment/app/l;

.field G:Ljava/lang/Runnable;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/h$h;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:I

.field final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroidx/activity/OnBackPressedDispatcher;

.field private final l:Landroidx/activity/b;

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/h$f;",
            ">;"
        }
    .end annotation
.end field

.field p:I

.field q:Landroidx/fragment/app/f;

.field r:Landroidx/fragment/app/c;

.field s:Landroidx/fragment/app/Fragment;

.field t:Landroidx/fragment/app/Fragment;

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/h;->H:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/h;->I:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/fragment/app/h;->f:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    .line 5
    new-instance v1, Landroidx/fragment/app/h$a;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/h$a;-><init>(Landroidx/fragment/app/h;Z)V

    iput-object v1, p0, Landroidx/fragment/app/h;->l:Landroidx/activity/b;

    .line 6
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    iput v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/h;->D:Landroid/util/SparseArray;

    .line 10
    new-instance v0, Landroidx/fragment/app/h$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/h$b;-><init>(Landroidx/fragment/app/h;)V

    iput-object v0, p0, Landroidx/fragment/app/h;->G:Ljava/lang/Runnable;

    return-void
.end method

.method private D0(Ljava/lang/RuntimeException;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Li2;

    invoke-direct {v0, v1}, Li2;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v6, v5, v2, v4}, Landroidx/fragment/app/f;->g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    :try_start_1
    new-array v0, v4, [Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/h;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 9
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_0
    throw p1
.end method

.method private E0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->l:Landroidx/activity/b;

    invoke-virtual {v0, v1}, Landroidx/activity/b;->f(Z)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->l:Landroidx/activity/b;

    invoke-virtual {p0}, Landroidx/fragment/app/h;->d()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/h;->k0(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/activity/b;->f(Z)V

    return-void
.end method

.method private Q(Landroidx/fragment/app/Fragment;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->R0()V

    :cond_0
    return-void
.end method

.method private X(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/h;->e:Z

    .line 2
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/h;->q0(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v1, p0, Landroidx/fragment/app/h;->e:Z

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/h;->b0()Z

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iput-boolean v1, p0, Landroidx/fragment/app/h;->e:Z

    .line 6
    throw p1
.end method

.method private a0(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->e:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->e()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Landroidx/fragment/app/h;->n()V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->z:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->z:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/h;->A:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/fragment/app/h;->e:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/h;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean p1, p0, Landroidx/fragment/app/h;->e:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/h;->e:Z

    .line 11
    throw v0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment host has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    iget-boolean v11, v1, Landroidx/fragment/app/m;->q:Z

    .line 2
    iget-object v1, v7, Landroidx/fragment/app/h;->B:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroidx/fragment/app/h;->B:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    iget-object v1, v7, Landroidx/fragment/app/h;->B:Ljava/util/ArrayList;

    iget-object v2, v7, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v1, v7, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    move v2, v9

    const/4 v3, 0x0

    :goto_1
    const/4 v15, 0x1

    if-ge v2, v10, :cond_11

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    .line 8
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x3

    if-nez v5, :cond_b

    .line 9
    iget-object v5, v7, Landroidx/fragment/app/h;->B:Ljava/util/ArrayList;

    const/4 v13, 0x0

    .line 10
    :goto_2
    iget-object v12, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v13, v12, :cond_e

    .line 11
    iget-object v12, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/m$a;

    .line 12
    iget v14, v12, Landroidx/fragment/app/m$a;->a:I

    if-eq v14, v15, :cond_a

    const/4 v15, 0x2

    const/16 v9, 0x9

    if-eq v14, v15, :cond_3

    if-eq v14, v6, :cond_2

    const/4 v15, 0x6

    if-eq v14, v15, :cond_2

    const/4 v15, 0x7

    if-eq v14, v15, :cond_a

    const/16 v15, 0x8

    if-eq v14, v15, :cond_1

    goto/16 :goto_6

    .line 13
    :cond_1
    iget-object v14, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    new-instance v15, Landroidx/fragment/app/m$a;

    invoke-direct {v15, v9, v1}, Landroidx/fragment/app/m$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v14, v13, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    .line 14
    iget-object v1, v12, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    goto/16 :goto_6

    .line 15
    :cond_2
    iget-object v14, v12, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v12, v12, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    if-ne v12, v1, :cond_8

    .line 17
    iget-object v1, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    new-instance v14, Landroidx/fragment/app/m$a;

    invoke-direct {v14, v9, v12}, Landroidx/fragment/app/m$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v13, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto/16 :goto_6

    .line 18
    :cond_3
    iget-object v14, v12, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    .line 19
    iget v15, v14, Landroidx/fragment/app/Fragment;->w:I

    .line 20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v6, v17

    const/16 v17, 0x0

    :goto_3
    if-ltz v6, :cond_7

    .line 21
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 22
    iget v8, v9, Landroidx/fragment/app/Fragment;->w:I

    if-ne v8, v15, :cond_6

    if-ne v9, v14, :cond_4

    move/from16 v18, v15

    const/16 v17, 0x1

    goto :goto_5

    :cond_4
    if-ne v9, v1, :cond_5

    .line 23
    iget-object v1, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    new-instance v8, Landroidx/fragment/app/m$a;

    move/from16 v18, v15

    const/16 v15, 0x9

    invoke-direct {v8, v15, v9}, Landroidx/fragment/app/m$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    move/from16 v18, v15

    const/16 v15, 0x9

    .line 24
    :goto_4
    new-instance v8, Landroidx/fragment/app/m$a;

    const/4 v15, 0x3

    invoke-direct {v8, v15, v9}, Landroidx/fragment/app/m$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 25
    iget v15, v12, Landroidx/fragment/app/m$a;->c:I

    iput v15, v8, Landroidx/fragment/app/m$a;->c:I

    .line 26
    iget v15, v12, Landroidx/fragment/app/m$a;->e:I

    iput v15, v8, Landroidx/fragment/app/m$a;->e:I

    .line 27
    iget v15, v12, Landroidx/fragment/app/m$a;->d:I

    iput v15, v8, Landroidx/fragment/app/m$a;->d:I

    .line 28
    iget v15, v12, Landroidx/fragment/app/m$a;->f:I

    iput v15, v8, Landroidx/fragment/app/m$a;->f:I

    .line 29
    iget-object v15, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v15, v13, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    add-int/2addr v13, v8

    goto :goto_5

    :cond_6
    move/from16 v18, v15

    :goto_5
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v8, p2

    move/from16 v15, v18

    const/16 v9, 0x9

    goto :goto_3

    :cond_7
    if-eqz v17, :cond_9

    .line 31
    iget-object v6, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v13, v13, -0x1

    :cond_8
    :goto_6
    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x1

    .line 32
    iput v6, v12, Landroidx/fragment/app/m$a;->a:I

    .line 33
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/4 v6, 0x1

    .line 34
    iget-object v8, v12, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v13, v6

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v6, 0x3

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_b
    const/4 v6, 0x1

    .line 35
    iget-object v5, v7, Landroidx/fragment/app/h;->B:Ljava/util/ArrayList;

    .line 36
    iget-object v8, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_8
    if-ltz v8, :cond_e

    .line 37
    iget-object v9, v4, Landroidx/fragment/app/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/m$a;

    .line 38
    iget v12, v9, Landroidx/fragment/app/m$a;->a:I

    if-eq v12, v6, :cond_d

    const/4 v6, 0x3

    if-eq v12, v6, :cond_c

    packed-switch v12, :pswitch_data_0

    goto :goto_9

    .line 39
    :pswitch_0
    iget-object v12, v9, Landroidx/fragment/app/m$a;->g:Landroidx/lifecycle/f$b;

    iput-object v12, v9, Landroidx/fragment/app/m$a;->h:Landroidx/lifecycle/f$b;

    goto :goto_9

    .line 40
    :pswitch_1
    iget-object v1, v9, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_9

    :pswitch_2
    const/4 v1, 0x0

    goto :goto_9

    .line 41
    :cond_c
    :pswitch_3
    iget-object v9, v9, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    const/4 v6, 0x3

    .line 42
    :pswitch_4
    iget-object v9, v9, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v8, v8, -0x1

    const/4 v6, 0x1

    goto :goto_8

    :cond_e
    if-nez v3, :cond_10

    .line 43
    iget-boolean v3, v4, Landroidx/fragment/app/m;->h:Z

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    const/4 v3, 0x0

    goto :goto_b

    :cond_10
    :goto_a
    const/4 v3, 0x1

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v8, p2

    move/from16 v9, p3

    goto/16 :goto_1

    .line 44
    :cond_11
    iget-object v1, v7, Landroidx/fragment/app/h;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_12

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 45
    invoke-static/range {v1 .. v6}, Landroidx/fragment/app/r;->o(Landroidx/fragment/app/h;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_12
    move/from16 v1, p3

    :goto_c
    if-ge v1, v10, :cond_15

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    move-object/from16 v8, p2

    .line 47
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, -0x1

    .line 48
    invoke-virtual {v2, v3}, Landroidx/fragment/app/a;->n(I)V

    add-int/lit8 v3, v10, -0x1

    if-ne v1, v3, :cond_13

    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v3, 0x0

    .line 49
    :goto_d
    invoke-virtual {v2, v3}, Landroidx/fragment/app/a;->r(Z)V

    goto :goto_e

    :cond_14
    const/4 v3, 0x1

    .line 50
    invoke-virtual {v2, v3}, Landroidx/fragment/app/a;->n(I)V

    .line 51
    invoke-virtual {v2}, Landroidx/fragment/app/a;->q()V

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_15
    move-object/from16 v8, p2

    if-eqz v11, :cond_1e

    .line 52
    new-instance v1, Lz;

    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, v2}, Lz;-><init>(I)V

    .line 54
    invoke-direct {v7, v1}, Landroidx/fragment/app/h;->j(Lz;)V

    add-int/lit8 v2, v10, -0x1

    move/from16 v9, p3

    move v3, v10

    :goto_f
    if-lt v2, v9, :cond_1b

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    .line 56
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 57
    invoke-virtual {v4}, Landroidx/fragment/app/a;->v()Z

    move-result v6

    if-eqz v6, :cond_16

    add-int/lit8 v6, v2, 0x1

    .line 58
    invoke-virtual {v4, v0, v6, v10}, Landroidx/fragment/app/a;->t(Ljava/util/ArrayList;II)Z

    move-result v6

    if-nez v6, :cond_16

    const/4 v6, 0x1

    goto :goto_10

    :cond_16
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_1a

    .line 59
    iget-object v6, v7, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    if-nez v6, :cond_17

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v7, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    .line 61
    :cond_17
    new-instance v6, Landroidx/fragment/app/h$j;

    invoke-direct {v6, v4, v5}, Landroidx/fragment/app/h$j;-><init>(Landroidx/fragment/app/a;Z)V

    .line 62
    iget-object v12, v7, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v4, v6}, Landroidx/fragment/app/a;->w(Landroidx/fragment/app/Fragment$d;)V

    if-eqz v5, :cond_18

    .line 64
    invoke-virtual {v4}, Landroidx/fragment/app/a;->q()V

    const/4 v5, 0x0

    goto :goto_11

    :cond_18
    const/4 v5, 0x0

    .line 65
    invoke-virtual {v4, v5}, Landroidx/fragment/app/a;->r(Z)V

    :goto_11
    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_19

    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 67
    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    :cond_19
    invoke-direct {v7, v1}, Landroidx/fragment/app/h;->j(Lz;)V

    goto :goto_12

    :cond_1a
    const/4 v5, 0x0

    :goto_12
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_1b
    const/4 v5, 0x0

    .line 69
    invoke-virtual {v1}, Lz;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_13
    if-ge v12, v2, :cond_1d

    .line 70
    invoke-virtual {v1, v12}, Lz;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 71
    iget-boolean v5, v4, Landroidx/fragment/app/Fragment;->k:Z

    if-nez v5, :cond_1c

    .line 72
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->Y0()Landroid/view/View;

    move-result-object v5

    .line 73
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v4, Landroidx/fragment/app/Fragment;->L:F

    const/4 v4, 0x0

    .line 74
    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_1c
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    :cond_1d
    move v5, v3

    goto :goto_14

    :cond_1e
    move/from16 v9, p3

    move v5, v10

    :goto_14
    if-eq v5, v9, :cond_1f

    if-eqz v11, :cond_1f

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    .line 75
    invoke-static/range {v1 .. v6}, Landroidx/fragment/app/r;->o(Landroidx/fragment/app/h;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 76
    iget v1, v7, Landroidx/fragment/app/h;->p:I

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroidx/fragment/app/h;->q0(IZ)V

    :cond_1f
    :goto_15
    if-ge v9, v10, :cond_22

    .line 77
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 78
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 79
    iget v2, v1, Landroidx/fragment/app/a;->t:I

    if-ltz v2, :cond_21

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v3, v7, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v3, v7, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    if-nez v3, :cond_20

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    .line 84
    :cond_20
    iget-object v3, v7, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    .line 86
    iput v2, v1, Landroidx/fragment/app/a;->t:I

    goto :goto_16

    :catchall_0
    move-exception v0

    .line 87
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_21
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 88
    :goto_16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_22
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/h$j;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v5, v3, Landroidx/fragment/app/h$j;->a:Z

    if-nez v5, :cond_1

    .line 4
    iget-object v5, v3, Landroidx/fragment/app/h$j;->b:Landroidx/fragment/app/a;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 5
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    iget-object v4, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 7
    iget-object v4, v3, Landroidx/fragment/app/h$j;->b:Landroidx/fragment/app/a;

    iget-object v5, v4, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/h;

    iget-boolean v3, v3, Landroidx/fragment/app/h$j;->a:Z

    invoke-virtual {v5, v4, v3, v1, v1}, Landroidx/fragment/app/h;->p(Landroidx/fragment/app/a;ZZZ)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {v3}, Landroidx/fragment/app/h$j;->b()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    iget-object v5, v3, Landroidx/fragment/app/h$j;->b:Landroidx/fragment/app/a;

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/a;->t(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    :cond_2
    iget-object v5, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_3

    .line 11
    iget-boolean v5, v3, Landroidx/fragment/app/h$j;->a:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Landroidx/fragment/app/h$j;->b:Landroidx/fragment/app/a;

    .line 12
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3

    .line 13
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    iget-object v4, v3, Landroidx/fragment/app/h$j;->b:Landroidx/fragment/app/a;

    iget-object v5, v4, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/h;

    iget-boolean v3, v3, Landroidx/fragment/app/h$j;->a:Z

    invoke-virtual {v5, v4, v3, v1, v1}, Landroidx/fragment/app/h;->p(Landroidx/fragment/app/a;ZZZ)V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/h$j;->a()V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$j;

    invoke-virtual {v0}, Landroidx/fragment/app/h$j;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j(Lz;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 5
    iget v2, v9, Landroidx/fragment/app/Fragment;->b:I

    if-ge v2, v0, :cond_1

    .line 6
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->J()I

    move-result v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->K()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 7
    iget-object v2, v9, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p1, v9}, Lz;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private j0(Landroidx/fragment/app/Fragment;)Z
    .locals 4

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 3
    invoke-direct {p1, v3}, Landroidx/fragment/app/h;->j0(Landroidx/fragment/app/Fragment;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/h;->l0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->e:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/h;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static o0(FFFF)Landroidx/fragment/app/h$d;
    .locals 11

    .line 1
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 3
    sget-object p0, Landroidx/fragment/app/h;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 6
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7
    sget-object p2, Landroidx/fragment/app/h;->I:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 10
    new-instance p0, Landroidx/fragment/app/h$d;

    invoke-direct {p0, v0}, Landroidx/fragment/app/h$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private v0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/h;->d0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/m;->q:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 6
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/h;->c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/m;->q:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/h;->c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 11
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/h;->c0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method A(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/h;->A(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h$f;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public A0(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/f$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-ne v0, p0, :cond_1

    .line 3
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->O:Landroidx/lifecycle/f$b;

    return-void

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method B(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/h;->B(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h$f;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public B0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    .line 6
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->Q(Landroidx/fragment/app/Fragment;)V

    .line 7
    iget-object p1, p0, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Landroidx/fragment/app/h;->Q(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method C(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/h;->C(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h$f;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method C0()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 2
    iget-boolean v1, v3, Landroidx/fragment/app/Fragment;->G:Z

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/h;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Landroidx/fragment/app/h;->y:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v3, Landroidx/fragment/app/Fragment;->G:Z

    .line 6
    iget v4, p0, Landroidx/fragment/app/h;->p:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method D(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->D(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$f;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method E(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->E(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$f;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method F(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->F(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$f;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method G(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/h;->G(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h$f;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method H(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/h;->H(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h$f;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method I(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->I(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$f;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method J(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/h;->J(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h$f;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method K(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->K(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$f;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method L(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->L(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$f;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method M(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/h;->M(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/h$f;

    if-eqz p4, :cond_1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method N(Landroidx/fragment/app/Fragment;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 3
    instance-of v1, v0, Landroidx/fragment/app/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/h;->N(Landroidx/fragment/app/Fragment;Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/h;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/h$f;

    if-eqz p2, :cond_1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public O(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->O0(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public P(Landroid/view/Menu;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 4
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v2, :cond_1

    .line 5
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h;->P(Landroid/view/Menu;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public R()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    return-void
.end method

.method public S(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->w0()V

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h;->S(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public T(Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->Q0(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method U()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h;->E0()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->Q(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public V()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->v:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->w:Z

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    return-void
.end method

.method public W()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->v:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->w:Z

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    return-void
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->w:Z

    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    return-void
.end method

.method public Z(Landroidx/fragment/app/h$h;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h;->n()V

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Landroidx/fragment/app/h;->x:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    .line 6
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/h;->z0()V

    .line 8
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Landroidx/fragment/app/m;
    .locals 1

    .line 1
    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/h;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "    "

    .line 1
    invoke-static {p1, v0}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Active Fragments in "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    .line 5
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mFragmentId=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget v4, v3, Landroidx/fragment/app/Fragment;->v:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " mContainerId=#"

    .line 10
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget v4, v3, Landroidx/fragment/app/Fragment;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " mTag="

    .line 12
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mState="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroidx/fragment/app/Fragment;->b:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mWho="

    .line 14
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " mBackStackNesting="

    .line 15
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroidx/fragment/app/Fragment;->q:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mAdded="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->k:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mRemoving="

    .line 17
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->l:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mFromLayout="

    .line 18
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->m:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mInLayout="

    .line 19
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->n:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 20
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mHidden="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->y:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mDetached="

    .line 21
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->z:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mMenuVisible="

    .line 22
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->B:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mHasMenu="

    .line 23
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 24
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mRetainInstance="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->A:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Z)V

    const-string v4, " mUserVisibleHint="

    .line 25
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Landroidx/fragment/app/Fragment;->H:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 26
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mFragmentManager="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 29
    :cond_1
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    if-eqz v4, :cond_2

    .line 30
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mHost="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 32
    :cond_2
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_3

    .line 33
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mParentFragment="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 35
    :cond_3
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    .line 36
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mArguments="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->f:Landroid/os/Bundle;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 37
    :cond_4
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-eqz v4, :cond_5

    .line 38
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mSavedFragmentState="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 40
    :cond_5
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v4, :cond_6

    .line 41
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mSavedViewState="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 43
    :cond_6
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_7

    goto :goto_1

    .line 44
    :cond_7
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-eqz v4, :cond_8

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 45
    iget-object v4, v4, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_9

    .line 46
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTarget="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v4, " mTargetRequestCode="

    .line 47
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    iget v4, v3, Landroidx/fragment/app/Fragment;->i:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 49
    :cond_9
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->J()I

    move-result v4

    if-eqz v4, :cond_a

    .line 50
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mNextAnim="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->J()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 51
    :cond_a
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    if-eqz v4, :cond_b

    .line 52
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mContainer="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 53
    :cond_b
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 54
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mView="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 55
    :cond_c
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    if-eqz v4, :cond_d

    .line 56
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mInnerView="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 57
    :cond_d
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 58
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mAnimatingAway="

    .line 59
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mStateAfterAnimating="

    .line 62
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->S()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 64
    :cond_e
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->C()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 65
    invoke-static {v3}, La4;->b(Landroidx/lifecycle/i;)La4;

    move-result-object v4

    invoke-virtual {v4, v0, p2, p3, p4}, La4;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 66
    :cond_f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    const-string v4, "  "

    invoke-static {v0, v4}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3, p4}, Landroidx/fragment/app/h;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_10
    iget-object p2, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_11

    .line 70
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p2, :cond_11

    .line 71
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 72
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 73
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 75
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 77
    :cond_11
    iget-object p2, p0, Landroidx/fragment/app/h;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_12

    .line 78
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p2, :cond_12

    .line 80
    iget-object v1, p0, Landroidx/fragment/app/h;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 81
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 82
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 83
    :cond_12
    iget-object p2, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_13

    .line 84
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_13

    .line 85
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_4
    if-ge p4, p2, :cond_13

    .line 86
    iget-object v1, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    .line 87
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 88
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 89
    invoke-virtual {v1, v0, p3, v3}, Landroidx/fragment/app/a;->p(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 90
    :cond_13
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object p2, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    if-eqz p2, :cond_14

    .line 92
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_14

    .line 93
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_5
    if-ge p4, p2, :cond_14

    .line 94
    iget-object v0, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    .line 95
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 96
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 97
    :cond_14
    iget-object p2, p0, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_15

    .line 98
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    :cond_15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object p2, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_16

    .line 102
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_16

    .line 103
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    if-ge v2, p2, :cond_16

    .line 104
    iget-object p4, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/h$h;

    .line 105
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    .line 106
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 107
    :cond_16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 110
    iget-object p2, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_17

    .line 111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 112
    :cond_17
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/h;->p:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 113
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/h;->v:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 114
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/h;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 115
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/h;->x:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    iget-boolean p2, p0, Landroidx/fragment/app/h;->u:Z

    if-eqz p2, :cond_18

    .line 117
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    iget-boolean p1, p0, Landroidx/fragment/app/h;->u:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_18
    return-void

    :catchall_0
    move-exception p1

    .line 119
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public b0()Z
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->a0(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/h;->z:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/h;->A:Ljava/util/ArrayList;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v5, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v5, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 6
    iget-object v8, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/h$h;

    invoke-interface {v8, v3, v4}, Landroidx/fragment/app/h$h;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v3, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v3}, Landroidx/fragment/app/f;->e()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Landroidx/fragment/app/h;->G:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit p0

    goto :goto_3

    .line 10
    :cond_2
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_3

    .line 11
    iput-boolean v0, p0, Landroidx/fragment/app/h;->e:Z

    .line 12
    :try_start_1
    iget-object v2, p0, Landroidx/fragment/app/h;->z:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/h;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/h;->v0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/h;->o()V

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/h;->o()V

    .line 14
    throw v0

    .line 15
    :cond_3
    invoke-direct {p0}, Landroidx/fragment/app/h;->E0()V

    .line 16
    iget-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    if-eqz v0, :cond_4

    .line 17
    iput-boolean v1, p0, Landroidx/fragment/app/h;->y:Z

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/h;->C0()V

    .line 19
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v2

    :catchall_1
    move-exception v0

    .line 21
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Landroidx/fragment/app/e;
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/g;->e()Landroidx/fragment/app/e;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/e;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->e()Landroidx/fragment/app/e;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Landroidx/fragment/app/h$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/h$c;-><init>(Landroidx/fragment/app/h;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/g;->i(Landroidx/fragment/app/e;)V

    .line 6
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/g;->e()Landroidx/fragment/app/e;

    move-result-object v0

    return-object v0
.end method

.method public e0(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    iget v2, v1, Landroidx/fragment/app/Fragment;->v:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2

    .line 5
    iget v2, v1, Landroidx/fragment/app/Fragment;->v:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->w(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/fragment/app/h$i;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroidx/fragment/app/h$i;-><init>(Landroidx/fragment/app/h;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/h;->Z(Landroidx/fragment/app/h$h;Z)V

    return-void
.end method

.method public h()Z
    .locals 8

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h;->n()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/h;->b0()Z

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->a0(Z)V

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->B()Landroidx/fragment/app/g;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/g;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/h;->z:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/h;->A:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/h;->t0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/h;->e:Z

    .line 9
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/h;->z:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/h;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroidx/fragment/app/h;->v0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-direct {p0}, Landroidx/fragment/app/h;->o()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/h;->o()V

    .line 11
    throw v0

    .line 12
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/h;->E0()V

    .line 13
    iget-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/fragment/app/h;->y:Z

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/h;->C0()V

    .line 16
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v2, 0x0

    .line 17
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move v0, v1

    :goto_1
    return v0
.end method

.method h0(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/l;->g(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object p1

    return-object p1
.end method

.method i0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/h;->b0()Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->l:Landroidx/activity/b;

    invoke-virtual {v0}, Landroidx/activity/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/h;->h()Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->k:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    :goto_0
    return-void
.end method

.method public k(Landroidx/fragment/app/Fragment;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/h;->n0(Landroidx/fragment/app/Fragment;)V

    .line 2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    .line 9
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-nez v2, :cond_0

    .line 10
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->K:Z

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Landroidx/fragment/app/h;->j0(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    iput-boolean v0, p0, Landroidx/fragment/app/h;->u:Z

    :cond_1
    if-eqz p2, :cond_3

    .line 13
    iget v4, p0, Landroidx/fragment/app/h;->p:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method k0(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    if-ne p1, v2, :cond_1

    .line 3
    iget-object p1, v1, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/h;->k0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l(Landroidx/fragment/app/f;Landroidx/fragment/app/c;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    if-nez v0, :cond_5

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    .line 4
    iput-object p3, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    .line 5
    invoke-direct {p0}, Landroidx/fragment/app/h;->E0()V

    .line 6
    :cond_0
    instance-of p2, p1, Landroidx/activity/c;

    if-eqz p2, :cond_2

    .line 7
    move-object p2, p1

    check-cast p2, Landroidx/activity/c;

    .line 8
    invoke-interface {p2}, Landroidx/activity/c;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/h;->k:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_1

    move-object p2, p3

    .line 9
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/h;->l:Landroidx/activity/b;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/i;Landroidx/activity/b;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 10
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 11
    iget-object p1, p1, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/l;->d(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;

    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    goto :goto_0

    .line 13
    :cond_3
    instance-of p2, p1, Landroidx/lifecycle/v;

    if-eqz p2, :cond_4

    .line 14
    check-cast p1, Landroidx/lifecycle/v;

    invoke-interface {p1}, Landroidx/lifecycle/v;->getViewModelStore()Landroidx/lifecycle/u;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroidx/fragment/app/l;->e(Landroidx/lifecycle/u;)Landroidx/fragment/app/l;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    goto :goto_0

    .line 16
    :cond_4
    new-instance p1, Landroidx/fragment/app/l;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/l;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    :goto_0
    return-void

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/h;->v:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/h;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public m(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    .line 3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    .line 9
    invoke-direct {p0, p1}, Landroidx/fragment/app/h;->j0(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iput-boolean v0, p0, Landroidx/fragment/app/h;->u:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method m0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/h$d;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->J()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->e1(I)V

    .line 3
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->k0()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    new-instance p1, Landroidx/fragment/app/h$d;

    invoke-direct {p1, v2}, Landroidx/fragment/app/h$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->l0()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p2, Landroidx/fragment/app/h$d;

    invoke-direct {p2, p1}, Landroidx/fragment/app/h$d;-><init>(Landroid/animation/Animator;)V

    return-object p2

    :cond_2
    const/4 p1, 0x1

    if-eqz v0, :cond_6

    .line 8
    iget-object v2, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v2}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "anim"

    .line 9
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    :try_start_0
    iget-object v4, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v4}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 11
    new-instance v5, Landroidx/fragment/app/h$d;

    invoke-direct {v5, v4}, Landroidx/fragment/app/h$d;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p1

    .line 12
    throw p1

    :cond_4
    :goto_0
    if-nez v1, :cond_6

    .line 13
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 14
    new-instance v4, Landroidx/fragment/app/h$d;

    invoke-direct {v4, v1}, Landroidx/fragment/app/h$d;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    :catch_2
    move-exception v1

    if-nez v2, :cond_5

    .line 15
    iget-object v1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    new-instance p1, Landroidx/fragment/app/h$d;

    invoke-direct {p1, v0}, Landroidx/fragment/app/h$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 17
    :cond_5
    throw v1

    :cond_6
    if-nez p2, :cond_7

    return-object v3

    :cond_7
    const/16 v0, 0x1001

    if-eq p2, v0, :cond_c

    const/16 p1, 0x1003

    if-eq p2, p1, :cond_a

    const/16 p1, 0x2002

    if-eq p2, p1, :cond_8

    const/4 p1, -0x1

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_9

    const/4 p1, 0x3

    goto :goto_1

    :cond_9
    const/4 p1, 0x4

    goto :goto_1

    :cond_a
    if-eqz p3, :cond_b

    const/4 p1, 0x5

    goto :goto_1

    :cond_b
    const/4 p1, 0x6

    goto :goto_1

    :cond_c
    if-eqz p3, :cond_d

    goto :goto_1

    :cond_d
    const/4 p1, 0x2

    :goto_1
    if-gez p1, :cond_e

    return-object v3

    :cond_e
    const-wide/16 p2, 0xdc

    const v0, 0x3f79999a    # 0.975f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    if-nez p4, :cond_f

    .line 18
    iget-object p1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->k()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 19
    iget-object p1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {p1}, Landroidx/fragment/app/f;->j()I

    goto :goto_2

    .line 20
    :pswitch_0
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 21
    sget-object p4, Landroidx/fragment/app/h;->I:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 23
    new-instance p2, Landroidx/fragment/app/h$d;

    invoke-direct {p2, p1}, Landroidx/fragment/app/h$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p2

    .line 24
    :pswitch_1
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 25
    sget-object p4, Landroidx/fragment/app/h;->I:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 27
    new-instance p2, Landroidx/fragment/app/h$d;

    invoke-direct {p2, p1}, Landroidx/fragment/app/h$d;-><init>(Landroid/view/animation/Animation;)V

    return-object p2

    :pswitch_2
    const p1, 0x3f89999a    # 1.075f

    .line 28
    invoke-static {v2, p1, v2, v1}, Landroidx/fragment/app/h;->o0(FFFF)Landroidx/fragment/app/h$d;

    move-result-object p1

    return-object p1

    .line 29
    :pswitch_3
    invoke-static {v0, v2, v1, v2}, Landroidx/fragment/app/h;->o0(FFFF)Landroidx/fragment/app/h$d;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_4
    invoke-static {v2, v0, v2, v1}, Landroidx/fragment/app/h;->o0(FFFF)Landroidx/fragment/app/h$d;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/high16 p1, 0x3f900000    # 1.125f

    .line 31
    invoke-static {p1, v2, v1, v2}, Landroidx/fragment/app/h;->o0(FFFF)Landroidx/fragment/app/h$d;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method n0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    const-string v1, "fragment"

    .line 1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "class"

    .line 2
    invoke-interface {p4, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v3, Landroidx/fragment/app/h$g;->a:[I

    invoke-virtual {p3, p4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    const/4 v1, 0x1

    const/4 v7, -0x1

    .line 5
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x2

    .line 6
    invoke-virtual {v3, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 7
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v6, :cond_10

    .line 8
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v6}, Landroidx/fragment/app/e;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_3
    if-ne v5, v7, :cond_5

    if-ne v8, v7, :cond_5

    if-eqz v9, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    if-eq v8, v7, :cond_6

    .line 11
    invoke-virtual {p0, v8}, Landroidx/fragment/app/h;->e0(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    if-eqz v9, :cond_7

    .line 12
    invoke-virtual {p0, v9}, Landroidx/fragment/app/h;->c(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_8

    if-eq v5, v7, :cond_8

    .line 13
    invoke-virtual {p0, v5}, Landroidx/fragment/app/h;->e0(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_a

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/h;->e()Landroidx/fragment/app/e;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Landroidx/fragment/app/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 15
    iput-boolean v1, v2, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v8, :cond_9

    move v3, v8

    goto :goto_1

    :cond_9
    move v3, v5

    .line 16
    :goto_1
    iput v3, v2, Landroidx/fragment/app/Fragment;->v:I

    .line 17
    iput v5, v2, Landroidx/fragment/app/Fragment;->w:I

    .line 18
    iput-object v9, v2, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    .line 19
    iput-boolean v1, v2, Landroidx/fragment/app/Fragment;->n:Z

    .line 20
    iput-object p0, v2, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 21
    iget-object v3, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    .line 22
    invoke-virtual {v3}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v2, p4, v3}, Landroidx/fragment/app/Fragment;->t0(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/h;->k(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_2

    .line 24
    :cond_a
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->n:Z

    if-nez v3, :cond_f

    .line 25
    iput-boolean v1, v2, Landroidx/fragment/app/Fragment;->n:Z

    .line 26
    iget-object v3, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    .line 27
    invoke-virtual {v3}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v2, p4, v3}, Landroidx/fragment/app/Fragment;->t0(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :goto_2
    move-object v7, v2

    .line 28
    iget v2, p0, Landroidx/fragment/app/h;->p:I

    if-ge v2, v1, :cond_b

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 31
    :goto_3
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_e

    if-eqz v8, :cond_c

    .line 32
    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    .line 33
    :cond_c
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    .line 34
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    :cond_d
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    return-object v0

    .line 36
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v2, " did not create a view."

    invoke-static {v1, v6, v2}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Duplicate id 0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tag "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", or parent id 0x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with another fragment for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_4
    return-object v2
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/h;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method p(Landroidx/fragment/app/a;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1, p4}, Landroidx/fragment/app/a;->r(Z)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/a;->q()V

    .line 3
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 7
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/r;->o(Landroidx/fragment/app/h;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    .line 8
    iget p2, p0, Landroidx/fragment/app/h;->p:I

    invoke-virtual {p0, p2, v6}, Landroidx/fragment/app/h;->q0(IZ)V

    .line 9
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 10
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->w:I

    .line 11
    invoke-virtual {p1, v0}, Landroidx/fragment/app/a;->s(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget v0, p3, Landroidx/fragment/app/Fragment;->L:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 13
    iget-object v2, p3, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    .line 14
    iput v1, p3, Landroidx/fragment/app/Fragment;->L:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 15
    iput v0, p3, Landroidx/fragment/app/Fragment;->L:F

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->J:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method p0(Landroidx/fragment/app/Fragment;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    .line 3
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->b0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_0
    move v6, v0

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()I

    move-result v7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 8
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 9
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    if-nez v0, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 11
    iget-object v5, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 12
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    if-ne v6, v1, :cond_5

    iget-object v6, v5, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v6, :cond_5

    move-object v4, v5

    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 13
    iget-object v0, v4, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    .line 14
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 15
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 16
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_7

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 18
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 19
    :cond_7
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->J:Z

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 20
    iget v0, p1, Landroidx/fragment/app/Fragment;->L:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_8

    .line 21
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 22
    :cond_8
    iput v1, p1, Landroidx/fragment/app/Fragment;->L:F

    .line 23
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->J:Z

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()I

    move-result v0

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()I

    move-result v1

    .line 26
    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/h;->m0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/h$d;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 27
    iget-object v1, v0, Landroidx/fragment/app/h$d;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_9

    .line 28
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 29
    :cond_9
    iget-object v1, v0, Landroidx/fragment/app/h$d;->b:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 30
    iget-object v0, v0, Landroidx/fragment/app/h$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 31
    :cond_a
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->K:Z

    if-eqz v0, :cond_12

    .line 32
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->K()I

    move-result v0

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->y:Z

    xor-int/2addr v1, v2

    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->L()I

    move-result v4

    .line 35
    invoke-virtual {p0, p1, v0, v1, v4}, Landroidx/fragment/app/h;->m0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/h$d;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 36
    iget-object v1, v0, Landroidx/fragment/app/h$d;->b:Landroid/animation/Animator;

    if-eqz v1, :cond_d

    .line 37
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 38
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v1, :cond_c

    .line 39
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->a0()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 40
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->d1(Z)V

    goto :goto_3

    .line 41
    :cond_b
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 42
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    .line 43
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 44
    iget-object v5, v0, Landroidx/fragment/app/h$d;->b:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/k;

    invoke-direct {v6, p0, v1, v4, p1}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/h;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 45
    :cond_c
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    :goto_3
    iget-object v0, v0, Landroidx/fragment/app/h$d;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_5

    :cond_d
    if-eqz v0, :cond_e

    .line 47
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/h$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    iget-object v0, v0, Landroidx/fragment/app/h$d;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 49
    :cond_e
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->a0()Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x8

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    .line 50
    :goto_4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->a0()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 52
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->d1(Z)V

    .line 53
    :cond_10
    :goto_5
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Landroidx/fragment/app/h;->j0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    iput-boolean v2, p0, Landroidx/fragment/app/h;->u:Z

    .line 55
    :cond_11
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->K:Z

    .line 56
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->r0()V

    :cond_12
    return-void
.end method

.method public q(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->z:Z

    .line 3
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->k:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, p1}, Landroidx/fragment/app/h;->j0(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/h;->u:Z

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method q0(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 3
    iget p2, p0, Landroidx/fragment/app/h;->p:I

    if-ne p1, p2, :cond_2

    return-void

    .line 4
    :cond_2
    iput p1, p0, Landroidx/fragment/app/h;->p:I

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 7
    invoke-virtual {p0, v1}, Landroidx/fragment/app/h;->p0(Landroidx/fragment/app/Fragment;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    .line 9
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v1, :cond_4

    :cond_5
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->J:Z

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/h;->p0(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/h;->C0()V

    .line 12
    iget-boolean p1, p0, Landroidx/fragment/app/h;->u:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    if-eqz p1, :cond_7

    iget v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/f;->o()V

    .line 14
    iput-boolean p2, p0, Landroidx/fragment/app/h;->u:Z

    :cond_7
    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->v:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->w:Z

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    return-void
.end method

.method r0(Landroidx/fragment/app/Fragment;IIIZ)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->k:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v8, :cond_2

    const/4 v0, 0x1

    .line 2
    :cond_2
    :goto_1
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v1, :cond_4

    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    if-le v0, v1, :cond_4

    if-nez v1, :cond_3

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->b0()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    .line 4
    :cond_3
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    .line 5
    :cond_4
    :goto_2
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->G:Z

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v1, :cond_5

    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    if-ge v1, v10, :cond_5

    if-le v0, v9, :cond_5

    const/4 v0, 0x2

    .line 6
    :cond_5
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->O:Landroidx/lifecycle/f$b;

    sget-object v2, Landroidx/lifecycle/f$b;->d:Landroidx/lifecycle/f$b;

    if-ne v1, v2, :cond_6

    .line 7
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 8
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3
    move v11, v0

    .line 9
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-gt v0, v11, :cond_29

    .line 10
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->n:Z

    if-nez v0, :cond_7

    return-void

    .line 11
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->z()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 12
    :cond_8
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->a1(Landroid/view/View;)V

    .line 13
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->b1(Landroid/animation/Animator;)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->S()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 15
    :cond_9
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    if-eqz v0, :cond_a

    if-eq v0, v8, :cond_19

    if-eq v0, v9, :cond_27

    if-eq v0, v10, :cond_28

    goto/16 :goto_1c

    :cond_a
    if-lez v11, :cond_19

    .line 16
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_f

    .line 17
    iget-object v1, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 20
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 21
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v2, v13

    goto :goto_4

    .line 23
    :cond_b
    iget-object v2, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_e

    :goto_4
    if-eqz v2, :cond_c

    .line 24
    iget-object v0, v2, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    goto :goto_5

    :cond_c
    move-object v0, v13

    :goto_5
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 25
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroidx/fragment/app/Fragment;->i:I

    .line 26
    :cond_d
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_f

    .line 27
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->G:Z

    if-le v11, v9, :cond_f

    const/4 v11, 0x2

    goto :goto_6

    .line 28
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": unique id "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v2}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v13

    .line 29
    :cond_f
    :goto_6
    iget-object v0, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    .line 30
    iget-object v1, v6, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_10

    .line 31
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    goto :goto_7

    :cond_10
    iget-object v0, v0, Landroidx/fragment/app/f;->f:Landroidx/fragment/app/h;

    :goto_7
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 32
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    const-string v10, " that does not belong to this FragmentManager!"

    const-string v14, " declared target fragment "

    const-string v15, "Fragment "

    if-eqz v0, :cond_13

    .line 33
    iget-object v1, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    if-ne v0, v1, :cond_12

    .line 34
    iget v0, v1, Landroidx/fragment/app/Fragment;->b:I

    if-ge v0, v8, :cond_11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 35
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 36
    :cond_11
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    .line 37
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    goto :goto_8

    .line 38
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_13
    :goto_8
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 40
    iget-object v1, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_14

    .line 41
    iget v0, v1, Landroidx/fragment/app/Fragment;->b:I

    if-ge v0, v8, :cond_15

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_9

    .line 43
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    invoke-static {v1, v2, v10}, Lic;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_15
    :goto_9
    iget-object v0, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v12}, Landroidx/fragment/app/h;->G(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->G0()V

    .line 46
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_16

    .line 47
    iget-object v0, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/f;->f(Landroidx/fragment/app/Fragment;)V

    goto :goto_a

    .line 48
    :cond_16
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->h0()V

    .line 49
    :goto_a
    iget-object v0, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v12}, Landroidx/fragment/app/h;->B(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 50
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->N:Z

    if-nez v0, :cond_17

    .line 51
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v12}, Landroidx/fragment/app/h;->H(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 52
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->I0(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v12}, Landroidx/fragment/app/h;->C(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_b

    .line 54
    :cond_17
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_18

    const-string v1, "android:support:fragments"

    .line 55
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 56
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/h;->w0(Landroid/os/Parcelable;)V

    .line 57
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->u()V

    .line 58
    :cond_18
    iput v8, v7, Landroidx/fragment/app/Fragment;->b:I

    :cond_19
    :goto_b
    const/16 v0, 0x8

    if-lez v11, :cond_1c

    .line 59
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->p:Z

    if-nez v1, :cond_1c

    .line 60
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    .line 61
    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 62
    iput-object v1, v7, Landroidx/fragment/app/Fragment;->M:Landroid/view/LayoutInflater;

    .line 63
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v1, v13, v2}, Landroidx/fragment/app/Fragment;->J0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 64
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v1, :cond_1b

    .line 65
    iput-object v1, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    .line 66
    invoke-virtual {v1, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 67
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v1, :cond_1a

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_1a
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v1, v2}, Landroidx/fragment/app/Fragment;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 69
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v1, v2, v12}, Landroidx/fragment/app/h;->M(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_c

    .line 70
    :cond_1b
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    :cond_1c
    :goto_c
    if-le v11, v8, :cond_27

    .line 71
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->m:Z

    if-nez v1, :cond_25

    .line 72
    iget v1, v7, Landroidx/fragment/app/Fragment;->w:I

    if-eqz v1, :cond_1f

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 73
    iget-object v2, v6, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    invoke-virtual {v2, v1}, Landroidx/fragment/app/c;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_20

    .line 74
    iget-boolean v2, v7, Landroidx/fragment/app/Fragment;->o:Z

    if-eqz v2, :cond_1d

    goto :goto_e

    .line 75
    :cond_1d
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->O()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Landroidx/fragment/app/Fragment;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    const-string v0, "unknown"

    .line 76
    :goto_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No view found for id 0x"

    invoke-static {v2}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Landroidx/fragment/app/Fragment;->w:I

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-direct {v6, v1}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v13

    .line 79
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create fragment "

    const-string v2, " for a container view with no id"

    invoke-static {v1, v7, v2}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v13

    :cond_1f
    move-object v1, v13

    .line 80
    :cond_20
    :goto_e
    iput-object v1, v7, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 81
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    .line 82
    invoke-virtual {v7, v2}, Landroidx/fragment/app/Fragment;->q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 83
    iput-object v2, v7, Landroidx/fragment/app/Fragment;->M:Landroid/view/LayoutInflater;

    .line 84
    iget-object v3, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v2, v1, v3}, Landroidx/fragment/app/Fragment;->J0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 85
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v2, :cond_24

    .line 86
    iput-object v2, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    .line 87
    invoke-virtual {v2, v12}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v1, :cond_21

    .line 88
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_21
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->y:Z

    if-eqz v1, :cond_22

    .line 90
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_22
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroidx/fragment/app/Fragment;->D0(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v12}, Landroidx/fragment/app/h;->M(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 93
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_23

    goto :goto_f

    :cond_23
    const/4 v8, 0x0

    :goto_f
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->J:Z

    goto :goto_10

    .line 94
    :cond_24
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    .line 95
    :cond_25
    :goto_10
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->F0(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v12}, Landroidx/fragment/app/h;->A(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 97
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_26

    .line 98
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->Z0(Landroid/os/Bundle;)V

    .line 99
    :cond_26
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    :cond_27
    if-le v11, v9, :cond_28

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->U0()V

    .line 101
    invoke-virtual {v6, v7, v12}, Landroidx/fragment/app/h;->K(Landroidx/fragment/app/Fragment;Z)V

    :cond_28
    const/4 v0, 0x3

    if-le v11, v0, :cond_46

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->S0()V

    .line 103
    invoke-virtual {v6, v7, v12}, Landroidx/fragment/app/h;->I(Landroidx/fragment/app/Fragment;Z)V

    .line 104
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    .line 105
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    goto/16 :goto_1c

    :cond_29
    const/4 v1, 0x3

    if-le v0, v11, :cond_46

    if-eq v0, v8, :cond_33

    if-eq v0, v9, :cond_2c

    if-eq v0, v1, :cond_2b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2a

    goto/16 :goto_1c

    :cond_2a
    if-ge v11, v2, :cond_2b

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->P0()V

    .line 107
    invoke-virtual {v6, v7, v12}, Landroidx/fragment/app/h;->F(Landroidx/fragment/app/Fragment;Z)V

    :cond_2b
    if-ge v11, v1, :cond_2c

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->V0()V

    .line 109
    invoke-virtual {v6, v7, v12}, Landroidx/fragment/app/h;->L(Landroidx/fragment/app/Fragment;Z)V

    :cond_2c
    if-ge v11, v9, :cond_33

    .line 110
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_2d

    .line 111
    iget-object v0, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/f;->l(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-nez v0, :cond_2d

    .line 112
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/h;->y0(Landroidx/fragment/app/Fragment;)V

    .line 113
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->L0()V

    .line 114
    invoke-virtual {v6, v7, v12}, Landroidx/fragment/app/h;->N(Landroidx/fragment/app/Fragment;Z)V

    .line 115
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v0, :cond_32

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    if-eqz v1, :cond_32

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 117
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 118
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2e

    .line 119
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->l:Z

    if-nez v0, :cond_32

    .line 120
    :cond_2e
    iget v0, v6, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x0

    if-lez v0, :cond_2f

    iget-boolean v0, v6, Landroidx/fragment/app/h;->x:Z

    if-nez v0, :cond_2f

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    iget v0, v7, Landroidx/fragment/app/Fragment;->L:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2f

    move/from16 v0, p3

    move/from16 v2, p4

    .line 122
    invoke-virtual {v6, v7, v0, v12, v2}, Landroidx/fragment/app/h;->m0(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/h$d;

    move-result-object v0

    goto :goto_11

    :cond_2f
    move-object v0, v13

    .line 123
    :goto_11
    iput v1, v7, Landroidx/fragment/app/Fragment;->L:F

    if-eqz v0, :cond_31

    .line 124
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    .line 125
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 126
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 127
    invoke-virtual {v7, v11}, Landroidx/fragment/app/Fragment;->h1(I)V

    .line 128
    iget-object v3, v0, Landroidx/fragment/app/h$d;->a:Landroid/view/animation/Animation;

    if-eqz v3, :cond_30

    .line 129
    new-instance v3, Landroidx/fragment/app/h$e;

    iget-object v0, v0, Landroidx/fragment/app/h$d;->a:Landroid/view/animation/Animation;

    invoke-direct {v3, v0, v2, v1}, Landroidx/fragment/app/h$e;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 130
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->a1(Landroid/view/View;)V

    .line 131
    new-instance v0, Landroidx/fragment/app/i;

    invoke-direct {v0, v6, v2, v7}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/h;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 132
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_12

    .line 133
    :cond_30
    iget-object v0, v0, Landroidx/fragment/app/h$d;->b:Landroid/animation/Animator;

    .line 134
    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->b1(Landroid/animation/Animator;)V

    .line 135
    new-instance v3, Landroidx/fragment/app/j;

    invoke-direct {v3, v6, v2, v1, v7}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/h;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 138
    :cond_31
    :goto_12
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_32
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->D:Landroid/view/ViewGroup;

    .line 140
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    .line 141
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->Q:Landroidx/fragment/app/x;

    .line 142
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->R:Landroidx/lifecycle/n;

    invoke-virtual {v0, v13}, Landroidx/lifecycle/n;->h(Ljava/lang/Object;)V

    .line 143
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    .line 144
    iput-boolean v12, v7, Landroidx/fragment/app/Fragment;->n:Z

    :cond_33
    if-ge v11, v8, :cond_46

    .line 145
    iget-boolean v0, v6, Landroidx/fragment/app/h;->x:Z

    if-eqz v0, :cond_35

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v0

    .line 148
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->a1(Landroid/view/View;)V

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_13

    .line 150
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->z()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->z()Landroid/animation/Animator;

    move-result-object v0

    .line 152
    invoke-virtual {v7, v13}, Landroidx/fragment/app/Fragment;->b1(Landroid/animation/Animator;)V

    .line 153
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 154
    :cond_35
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->z()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_36

    goto/16 :goto_1b

    .line 155
    :cond_36
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->l:Z

    if-eqz v0, :cond_37

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->b0()Z

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x1

    goto :goto_14

    :cond_37
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_39

    .line 156
    iget-object v1, v6, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {v1, v7}, Landroidx/fragment/app/l;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_15

    .line 157
    :cond_38
    iput v12, v7, Landroidx/fragment/app/Fragment;->b:I

    goto :goto_17

    .line 158
    :cond_39
    :goto_15
    iget-object v1, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    instance-of v2, v1, Landroidx/lifecycle/v;

    if-eqz v2, :cond_3a

    .line 159
    iget-object v1, v6, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {v1}, Landroidx/fragment/app/l;->h()Z

    move-result v8

    goto :goto_16

    .line 160
    :cond_3a
    invoke-virtual {v1}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3b

    .line 161
    iget-object v1, v6, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v1}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 162
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v8, v1

    :cond_3b
    :goto_16
    if-nez v0, :cond_3c

    if-eqz v8, :cond_3d

    .line 163
    :cond_3c
    iget-object v1, v6, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {v1, v7}, Landroidx/fragment/app/l;->c(Landroidx/fragment/app/Fragment;)V

    .line 164
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->K0()V

    .line 165
    invoke-virtual {v6, v7, v12}, Landroidx/fragment/app/h;->D(Landroidx/fragment/app/Fragment;Z)V

    .line 166
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->M0()V

    .line 167
    invoke-virtual {v6, v7, v12}, Landroidx/fragment/app/h;->E(Landroidx/fragment/app/Fragment;Z)V

    if-nez p5, :cond_46

    if-nez v0, :cond_3f

    .line 168
    iget-object v0, v6, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/l;->j(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_18

    .line 169
    :cond_3e
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->s:Landroidx/fragment/app/f;

    .line 170
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->u:Landroidx/fragment/app/Fragment;

    .line 171
    iput-object v13, v7, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 172
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 173
    iget-object v1, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_46

    .line 174
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->A:Z

    if-eqz v1, :cond_46

    .line 175
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    goto :goto_1c

    .line 176
    :cond_3f
    :goto_18
    iget-object v0, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_40

    goto :goto_1c

    .line 177
    :cond_40
    iget-object v0, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_41

    .line 178
    iget-object v2, v7, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 179
    iput-object v7, v1, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    .line 180
    iput-object v13, v1, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    goto :goto_19

    .line 181
    :cond_42
    iget-object v0, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/h;->l0()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_1a

    .line 183
    :cond_43
    iget-object v0, v6, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/l;->i(Landroidx/fragment/app/Fragment;)Z

    .line 184
    :goto_1a
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 185
    iget-object v1, v6, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    .line 186
    :cond_44
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->X()V

    goto :goto_1c

    .line 187
    :cond_45
    :goto_1b
    invoke-virtual {v7, v11}, Landroidx/fragment/app/Fragment;->h1(I)V

    goto :goto_1d

    :cond_46
    :goto_1c
    move v8, v11

    .line 188
    :goto_1d
    iget v0, v7, Landroidx/fragment/app/Fragment;->b:I

    if-eq v0, v8, :cond_47

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroidx/fragment/app/Fragment;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput v8, v7, Landroidx/fragment/app/Fragment;->b:I

    :cond_47
    return-void
.end method

.method public s(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h;->s(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public s0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->v:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->w:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v2}, Landroidx/fragment/app/h;->s0()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 3
    iget-object v3, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->H0(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method t0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/4 v3, -0x1

    if-nez p3, :cond_3

    if-ltz p4, :cond_b

    .line 5
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_6

    .line 6
    iget-object v4, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    if-eqz p3, :cond_4

    .line 7
    iget-object v5, v4, Landroidx/fragment/app/m;->j:Ljava/lang/String;

    .line 8
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    if-ltz p4, :cond_5

    .line 9
    iget v4, v4, Landroidx/fragment/app/a;->t:I

    if-ne p4, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-gez v0, :cond_7

    return v1

    :cond_7
    and-int/2addr p5, v2

    if-eqz p5, :cond_a

    :cond_8
    :goto_2
    add-int/2addr v0, v3

    if-ltz v0, :cond_a

    .line 10
    iget-object p5, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/a;

    if-eqz p3, :cond_9

    .line 11
    iget-object v4, p5, Landroidx/fragment/app/m;->j:Ljava/lang/String;

    .line 12
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_9
    if-ltz p4, :cond_a

    iget p5, p5, Landroidx/fragment/app/a;->t:I

    if-ne p4, p5, :cond_a

    goto :goto_2

    :cond_a
    move v3, v0

    .line 13
    :cond_b
    iget-object p3, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v3, p3, :cond_c

    return v1

    .line 14
    :cond_c
    iget-object p3, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_3
    if-le p3, v3, :cond_d

    .line 15
    iget-object p4, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_d
    :goto_4
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1, v0}, Landroidx/core/app/b;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-static {v1, v0}, Landroidx/core/app/b;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string v1, "}}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->v:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/h;->w:Z

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    return-void
.end method

.method public u0(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->b0()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->z:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, p1}, Landroidx/fragment/app/h;->j0(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/h;->u:Z

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->k:Z

    .line 9
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->l:Z

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public v(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/h;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2
    :goto_0
    iget-object v5, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 3
    iget-object v5, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_3

    .line 4
    iget-boolean v6, v5, Landroidx/fragment/app/Fragment;->y:Z

    if-nez v6, :cond_1

    .line 5
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/h;->v(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    or-int/2addr v6, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_3

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/h;->j:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 9
    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/h;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 10
    iget-object p1, p0, Landroidx/fragment/app/h;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 12
    :cond_5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 13
    :cond_7
    iput-object v0, p0, Landroidx/fragment/app/h;->j:Ljava/util/ArrayList;

    return v4
.end method

.method public w()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/h;->x:Z

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/h;->b0()Z

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/h;->r:Landroidx/fragment/app/c;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/h;->s:Landroidx/fragment/app/Fragment;

    .line 7
    iget-object v1, p0, Landroidx/fragment/app/h;->k:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/h;->l:Landroidx/activity/b;

    invoke-virtual {v1}, Landroidx/activity/b;->d()V

    .line 9
    iput-object v0, p0, Landroidx/fragment/app/h;->k:Landroidx/activity/OnBackPressedDispatcher;

    :cond_0
    return-void
.end method

.method w0(Landroid/os/Parcelable;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/h;->F:Landroidx/fragment/app/l;

    invoke-virtual {v0}, Landroidx/fragment/app/l;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 4
    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentState;

    .line 5
    iget-object v7, v6, Landroidx/fragment/app/FragmentState;->c:Ljava/lang/String;

    iget-object v8, v1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_4
    move-object v6, v3

    :goto_1
    if-nez v6, :cond_5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, v1

    move v8, v2

    move v9, v3

    move v10, v11

    .line 6
    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 7
    iput-boolean v4, v1, Landroidx/fragment/app/Fragment;->l:Z

    const/4 v7, 0x0

    .line 8
    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_0

    .line 9
    :cond_5
    iput-object v1, v6, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    .line 10
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 11
    iput v2, v1, Landroidx/fragment/app/Fragment;->q:I

    .line 12
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->n:Z

    .line 13
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->k:Z

    .line 14
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_6

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v2, v3

    :goto_2
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    .line 15
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->g:Landroidx/fragment/app/Fragment;

    .line 16
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 17
    iget-object v3, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v3}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 18
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    .line 19
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    goto :goto_0

    .line 20
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 21
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentState;

    if-eqz v1, :cond_8

    .line 22
    iget-object v2, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v2}, Landroidx/fragment/app/f;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/h;->e()Landroidx/fragment/app/e;

    move-result-object v5

    .line 24
    iget-object v6, v1, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    if-nez v6, :cond_b

    .line 25
    iget-object v6, v1, Landroidx/fragment/app/FragmentState;->k:Landroid/os/Bundle;

    if-eqz v6, :cond_9

    .line 26
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 27
    :cond_9
    iget-object v6, v1, Landroidx/fragment/app/FragmentState;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroidx/fragment/app/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    iput-object v5, v1, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    .line 28
    iget-object v6, v1, Landroidx/fragment/app/FragmentState;->k:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->c1(Landroid/os/Bundle;)V

    .line 29
    iget-object v5, v1, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    if-eqz v5, :cond_a

    .line 30
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 31
    iget-object v2, v1, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    iget-object v5, v1, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    iput-object v5, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    goto :goto_4

    .line 32
    :cond_a
    iget-object v2, v1, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v2, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    .line 33
    :goto_4
    iget-object v2, v1, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    iget-object v5, v1, Landroidx/fragment/app/FragmentState;->c:Ljava/lang/String;

    iput-object v5, v2, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    .line 34
    iget-boolean v5, v1, Landroidx/fragment/app/FragmentState;->d:Z

    iput-boolean v5, v2, Landroidx/fragment/app/Fragment;->m:Z

    .line 35
    iput-boolean v4, v2, Landroidx/fragment/app/Fragment;->o:Z

    .line 36
    iget v5, v1, Landroidx/fragment/app/FragmentState;->e:I

    iput v5, v2, Landroidx/fragment/app/Fragment;->v:I

    .line 37
    iget v5, v1, Landroidx/fragment/app/FragmentState;->f:I

    iput v5, v2, Landroidx/fragment/app/Fragment;->w:I

    .line 38
    iget-object v5, v1, Landroidx/fragment/app/FragmentState;->g:Ljava/lang/String;

    iput-object v5, v2, Landroidx/fragment/app/Fragment;->x:Ljava/lang/String;

    .line 39
    iget-boolean v5, v1, Landroidx/fragment/app/FragmentState;->h:Z

    iput-boolean v5, v2, Landroidx/fragment/app/Fragment;->A:Z

    .line 40
    iget-boolean v5, v1, Landroidx/fragment/app/FragmentState;->i:Z

    iput-boolean v5, v2, Landroidx/fragment/app/Fragment;->l:Z

    .line 41
    iget-boolean v5, v1, Landroidx/fragment/app/FragmentState;->j:Z

    iput-boolean v5, v2, Landroidx/fragment/app/Fragment;->z:Z

    .line 42
    iget-boolean v5, v1, Landroidx/fragment/app/FragmentState;->l:Z

    iput-boolean v5, v2, Landroidx/fragment/app/Fragment;->y:Z

    .line 43
    invoke-static {}, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;

    move-result-object v5

    iget v6, v1, Landroidx/fragment/app/FragmentState;->m:I

    aget-object v5, v5, v6

    iput-object v5, v2, Landroidx/fragment/app/Fragment;->O:Landroidx/lifecycle/f$b;

    .line 44
    :cond_b
    iget-object v2, v1, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    .line 45
    iput-object p0, v2, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    .line 46
    iget-object v5, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    iget-object v6, v2, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object v3, v1, Landroidx/fragment/app/FragmentState;->o:Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    .line 48
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 50
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 51
    iget-object v2, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_e

    .line 52
    iput-boolean v4, v2, Landroidx/fragment/app/Fragment;->k:Z

    .line 53
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 54
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v5, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 57
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No instantiated fragment for ("

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lic;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v3

    .line 59
    :cond_f
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->d:[Landroidx/fragment/app/BackStackState;

    if-eqz v0, :cond_17

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->d:[Landroidx/fragment/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 61
    :goto_6
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->d:[Landroidx/fragment/app/BackStackState;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 62
    aget-object v1, v1, v0

    .line 63
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/h;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 65
    :goto_7
    iget-object v7, v1, Landroidx/fragment/app/BackStackState;->b:[I

    array-length v8, v7

    if-ge v5, v8, :cond_11

    .line 66
    new-instance v8, Landroidx/fragment/app/m$a;

    invoke-direct {v8}, Landroidx/fragment/app/m$a;-><init>()V

    add-int/lit8 v9, v5, 0x1

    .line 67
    aget v5, v7, v5

    iput v5, v8, Landroidx/fragment/app/m$a;->a:I

    .line 68
    iget-object v5, v1, Landroidx/fragment/app/BackStackState;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 69
    iget-object v7, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 70
    iput-object v5, v8, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    goto :goto_8

    .line 71
    :cond_10
    iput-object v3, v8, Landroidx/fragment/app/m$a;->b:Landroidx/fragment/app/Fragment;

    .line 72
    :goto_8
    invoke-static {}, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;

    move-result-object v5

    iget-object v7, v1, Landroidx/fragment/app/BackStackState;->d:[I

    aget v7, v7, v6

    aget-object v5, v5, v7

    iput-object v5, v8, Landroidx/fragment/app/m$a;->g:Landroidx/lifecycle/f$b;

    .line 73
    invoke-static {}, Landroidx/lifecycle/f$b;->values()[Landroidx/lifecycle/f$b;

    move-result-object v5

    iget-object v7, v1, Landroidx/fragment/app/BackStackState;->e:[I

    aget v7, v7, v6

    aget-object v5, v5, v7

    iput-object v5, v8, Landroidx/fragment/app/m$a;->h:Landroidx/lifecycle/f$b;

    .line 74
    iget-object v5, v1, Landroidx/fragment/app/BackStackState;->b:[I

    add-int/lit8 v7, v9, 0x1

    aget v9, v5, v9

    iput v9, v8, Landroidx/fragment/app/m$a;->c:I

    add-int/lit8 v10, v7, 0x1

    .line 75
    aget v7, v5, v7

    iput v7, v8, Landroidx/fragment/app/m$a;->d:I

    add-int/lit8 v11, v10, 0x1

    .line 76
    aget v10, v5, v10

    iput v10, v8, Landroidx/fragment/app/m$a;->e:I

    add-int/lit8 v12, v11, 0x1

    .line 77
    aget v5, v5, v11

    iput v5, v8, Landroidx/fragment/app/m$a;->f:I

    .line 78
    iput v9, v2, Landroidx/fragment/app/m;->b:I

    .line 79
    iput v7, v2, Landroidx/fragment/app/m;->c:I

    .line 80
    iput v10, v2, Landroidx/fragment/app/m;->d:I

    .line 81
    iput v5, v2, Landroidx/fragment/app/m;->e:I

    .line 82
    invoke-virtual {v2, v8}, Landroidx/fragment/app/m;->d(Landroidx/fragment/app/m$a;)V

    add-int/lit8 v6, v6, 0x1

    move v5, v12

    goto :goto_7

    .line 83
    :cond_11
    iget v5, v1, Landroidx/fragment/app/BackStackState;->f:I

    iput v5, v2, Landroidx/fragment/app/m;->f:I

    .line 84
    iget v5, v1, Landroidx/fragment/app/BackStackState;->g:I

    iput v5, v2, Landroidx/fragment/app/m;->g:I

    .line 85
    iget-object v5, v1, Landroidx/fragment/app/BackStackState;->h:Ljava/lang/String;

    iput-object v5, v2, Landroidx/fragment/app/m;->j:Ljava/lang/String;

    .line 86
    iget v5, v1, Landroidx/fragment/app/BackStackState;->i:I

    iput v5, v2, Landroidx/fragment/app/a;->t:I

    .line 87
    iput-boolean v4, v2, Landroidx/fragment/app/m;->h:Z

    .line 88
    iget v5, v1, Landroidx/fragment/app/BackStackState;->j:I

    iput v5, v2, Landroidx/fragment/app/m;->k:I

    .line 89
    iget-object v5, v1, Landroidx/fragment/app/BackStackState;->k:Ljava/lang/CharSequence;

    iput-object v5, v2, Landroidx/fragment/app/m;->l:Ljava/lang/CharSequence;

    .line 90
    iget v5, v1, Landroidx/fragment/app/BackStackState;->l:I

    iput v5, v2, Landroidx/fragment/app/m;->m:I

    .line 91
    iget-object v5, v1, Landroidx/fragment/app/BackStackState;->m:Ljava/lang/CharSequence;

    iput-object v5, v2, Landroidx/fragment/app/m;->n:Ljava/lang/CharSequence;

    .line 92
    iget-object v5, v1, Landroidx/fragment/app/BackStackState;->n:Ljava/util/ArrayList;

    iput-object v5, v2, Landroidx/fragment/app/m;->o:Ljava/util/ArrayList;

    .line 93
    iget-object v5, v1, Landroidx/fragment/app/BackStackState;->o:Ljava/util/ArrayList;

    iput-object v5, v2, Landroidx/fragment/app/m;->p:Ljava/util/ArrayList;

    .line 94
    iget-boolean v1, v1, Landroidx/fragment/app/BackStackState;->p:Z

    iput-boolean v1, v2, Landroidx/fragment/app/m;->q:Z

    .line 95
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->n(I)V

    .line 96
    iget-object v1, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget v1, v2, Landroidx/fragment/app/a;->t:I

    if-ltz v1, :cond_16

    .line 98
    monitor-enter p0

    .line 99
    :try_start_1
    iget-object v5, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    if-nez v5, :cond_12

    .line 100
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    .line 101
    :cond_12
    iget-object v5, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_13

    .line 102
    iget-object v5, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_13
    :goto_9
    if-ge v5, v1, :cond_15

    .line 103
    iget-object v6, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v6, p0, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    if-nez v6, :cond_14

    .line 105
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    .line 106
    :cond_14
    iget-object v6, p0, Landroidx/fragment/app/h;->n:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 107
    :cond_15
    iget-object v1, p0, Landroidx/fragment/app/h;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_a
    monitor-exit p0

    goto :goto_b

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_16
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 109
    :cond_17
    iput-object v3, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    .line 110
    :cond_18
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 111
    iget-object v1, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    .line 112
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->Q(Landroidx/fragment/app/Fragment;)V

    .line 113
    :cond_19
    iget p1, p1, Landroidx/fragment/app/FragmentManagerState;->f:I

    iput p1, p0, Landroidx/fragment/app/h;->f:I

    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->X(I)V

    return-void
.end method

.method x0()Landroid/os/Parcelable;
    .locals 9

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/h;->g0()V

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->S()I

    move-result v5

    .line 5
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->y()Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 9
    :cond_1
    invoke-virtual {v4, v2}, Landroidx/fragment/app/Fragment;->a1(Landroid/view/View;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 10
    invoke-virtual/range {v3 .. v8}, Landroidx/fragment/app/h;->r0(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->z()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->z()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/h;->b0()Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroidx/fragment/app/h;->v:Z

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v2

    .line 16
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " was removed from the FragmentManager"

    const-string v7, "Failure saving state: active "

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_5

    .line 19
    iget-object v4, v5, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-ne v4, p0, :cond_12

    .line 20
    new-instance v4, Landroidx/fragment/app/FragmentState;

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 21
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget v6, v5, Landroidx/fragment/app/Fragment;->b:I

    if-lez v6, :cond_10

    iget-object v6, v4, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    if-nez v6, :cond_10

    .line 23
    iget-object v6, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    if-nez v6, :cond_6

    .line 24
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    .line 25
    :cond_6
    iget-object v6, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->T0(Landroid/os/Bundle;)V

    .line 26
    iget-object v6, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    invoke-virtual {p0, v5, v6, v3}, Landroidx/fragment/app/h;->J(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 27
    iget-object v6, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 28
    iget-object v6, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    .line 29
    iput-object v2, p0, Landroidx/fragment/app/h;->C:Landroid/os/Bundle;

    goto :goto_2

    :cond_7
    move-object v6, v2

    .line 30
    :goto_2
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->E:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 31
    invoke-virtual {p0, v5}, Landroidx/fragment/app/h;->y0(Landroidx/fragment/app/Fragment;)V

    .line 32
    :cond_8
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    if-eqz v7, :cond_a

    if-nez v6, :cond_9

    .line 33
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 34
    :cond_9
    iget-object v7, v5, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    const-string v8, "android:view_state"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 35
    :cond_a
    iget-boolean v7, v5, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v7, :cond_c

    if-nez v6, :cond_b

    .line 36
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 37
    :cond_b
    iget-boolean v7, v5, Landroidx/fragment/app/Fragment;->H:Z

    const-string v8, "android:user_visible_hint"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    :cond_c
    iput-object v6, v4, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    .line 39
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 40
    iget-object v7, p0, Landroidx/fragment/app/h;->h:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_f

    .line 41
    iget-object v7, v4, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    if-nez v7, :cond_d

    .line 42
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v4, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    .line 43
    :cond_d
    iget-object v7, v4, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    .line 44
    iget-object v8, v6, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-ne v8, p0, :cond_e

    .line 45
    iget-object v6, v6, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    const-string v8, "android:target_state"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget v5, v5, Landroidx/fragment/app/Fragment;->i:I

    if-eqz v5, :cond_11

    .line 47
    iget-object v4, v4, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    const-string v6, "android:target_req_state"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 48
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment "

    const-string v3, " is not currently in the FragmentManager"

    invoke-static {v1, v6, v3}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v2

    .line 49
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure saving state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has target not in fragment manager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroidx/fragment/app/Fragment;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v2

    .line 50
    :cond_10
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->c:Landroid/os/Bundle;

    iput-object v5, v4, Landroidx/fragment/app/FragmentState;->n:Landroid/os/Bundle;

    :cond_11
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 51
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7, v5, v6}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v2

    :cond_13
    if-nez v4, :cond_14

    return-object v2

    .line 52
    :cond_14
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 55
    iget-object v8, v5, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v8, v5, Landroidx/fragment/app/Fragment;->r:Landroidx/fragment/app/h;

    if-ne v8, p0, :cond_15

    goto :goto_4

    .line 57
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v7, v5, v6}, Lic;->g(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/h;->D0(Ljava/lang/RuntimeException;)V

    throw v2

    :cond_16
    move-object v4, v2

    .line 58
    :cond_17
    iget-object v0, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 60
    new-array v2, v0, [Landroidx/fragment/app/BackStackState;

    :goto_5
    if-ge v3, v0, :cond_18

    .line 61
    new-instance v5, Landroidx/fragment/app/BackStackState;

    iget-object v6, p0, Landroidx/fragment/app/h;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    invoke-direct {v5, v6}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/a;)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 62
    :cond_18
    new-instance v0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 63
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->b:Ljava/util/ArrayList;

    .line 64
    iput-object v4, v0, Landroidx/fragment/app/FragmentManagerState;->c:Ljava/util/ArrayList;

    .line 65
    iput-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->d:[Landroidx/fragment/app/BackStackState;

    .line 66
    iget-object v1, p0, Landroidx/fragment/app/h;->t:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_19

    .line 67
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->e:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->e:Ljava/lang/String;

    .line 68
    :cond_19
    iget v1, p0, Landroidx/fragment/app/h;->f:I

    iput v1, v0, Landroidx/fragment/app/FragmentManagerState;->f:I

    return-object v0
.end method

.method public y()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->N0()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method y0(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/h;->D:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/h;->D:Landroid/util/SparseArray;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 5
    :goto_0
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->F:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/h;->D:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/h;->D:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/h;->D:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->d:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/fragment/app/h;->D:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/h;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->u0()V

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->t:Landroidx/fragment/app/h;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/h;->z(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method z0()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/h;->E:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/h;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/h;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/h;->q:Landroidx/fragment/app/f;

    invoke-virtual {v0}, Landroidx/fragment/app/f;->e()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/h;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    invoke-direct {p0}, Landroidx/fragment/app/h;->E0()V

    .line 8
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
