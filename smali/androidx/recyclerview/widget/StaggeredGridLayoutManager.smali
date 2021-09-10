.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# instance fields
.field private A:Ljava/util/BitSet;

.field B:I

.field C:I

.field D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private E:I

.field private F:Z

.field private G:Z

.field private H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field private I:I

.field private final J:Landroid/graphics/Rect;

.field private final K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

.field private L:Z

.field private M:Z

.field private N:[I

.field private final O:Ljava/lang/Runnable;

.field private r:I

.field s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

.field t:Landroidx/recyclerview/widget/w;

.field u:Landroidx/recyclerview/widget/w;

.field private v:I

.field private w:I

.field private final x:Landroidx/recyclerview/widget/p;

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    .line 4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    .line 5
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:I

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Z

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    .line 13
    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$a;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Ljava/lang/Runnable;

    .line 14
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->Y(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$o$d;

    move-result-object p1

    .line 15
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$o$d;->a:I

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid orientation."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 p3, 0x0

    .line 17
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Ljava/lang/String;)V

    .line 18
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne p2, p4, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    .line 20
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 21
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    iput-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 22
    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    .line 24
    :goto_1
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$o$d;->b:I

    .line 25
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Ljava/lang/String;)V

    .line 26
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-eq p2, p4, :cond_4

    .line 27
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    .line 29
    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    .line 30
    new-instance p2, Ljava/util/BitSet;

    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    invoke-direct {p2, p4}, Ljava/util/BitSet;-><init>(I)V

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Ljava/util/BitSet;

    .line 31
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    new-array p2, p2, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iput-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 32
    :goto_2
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v1, p2, :cond_3

    .line 33
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    new-instance p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-direct {p4, p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object p4, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 34
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    .line 35
    :cond_4
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$o$d;->c:Z

    .line 36
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Ljava/lang/String;)V

    .line 37
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz p2, :cond_5

    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eq p3, p1, :cond_5

    .line 38
    iput-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 39
    :cond_5
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    .line 40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    .line 41
    new-instance p1, Landroidx/recyclerview/widget/p;

    invoke-direct {p1}, Landroidx/recyclerview/widget/p;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    .line 42
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView$o;I)Landroidx/recyclerview/widget/w;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 43
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    sub-int/2addr v0, p1

    .line 44
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView$o;I)Landroidx/recyclerview/widget/w;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    return-void
.end method

.method private C1(Landroid/view/View;IIZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->h(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-direct {p0, p2, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P1(III)I

    move-result p2

    .line 4
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    invoke-direct {p0, p3, v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->P1(III)I

    move-result p3

    if-eqz p4, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->h1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->f1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private D1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    if-eq v1, v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->R0(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()V

    return-void

    .line 6
    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/high16 v5, -0x80000000

    if-eqz v1, :cond_22

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()V

    .line 8
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v6, :cond_a

    .line 9
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:I

    const/4 v8, 0x0

    if-lez v7, :cond_7

    .line 10
    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ne v7, v9, :cond_6

    const/4 v6, 0x0

    .line 11
    :goto_2
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v6, v7, :cond_7

    .line 12
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d()V

    .line 13
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v9, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:[I

    aget v9, v9, v6

    if-eq v9, v5, :cond_5

    .line 14
    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    if-eqz v7, :cond_4

    .line 15
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/w;->g()I

    move-result v7

    goto :goto_3

    .line 16
    :cond_4
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/w;->k()I

    move-result v7

    :goto_3
    add-int/2addr v9, v7

    .line 17
    :cond_5
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v7, v7, v6

    .line 18
    iput v9, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    iput v9, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_6
    iput-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:[I

    .line 20
    iput v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:I

    .line 21
    iput v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:I

    .line 22
    iput-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:[I

    .line 23
    iput-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Ljava/util/List;

    .line 24
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 25
    :cond_7
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->k:Z

    iput-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z

    .line 26
    iget-boolean v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 27
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->g(Ljava/lang/String;)V

    .line 28
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v7, :cond_8

    iget-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eq v8, v6, :cond_8

    .line 29
    iput-boolean v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 30
    :cond_8
    iput-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    .line 31
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J1()V

    .line 33
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    if-eq v7, v2, :cond_9

    .line 34
    iput v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 35
    iget-boolean v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    goto :goto_4

    .line 36
    :cond_9
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 37
    :goto_4
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:I

    if-le v7, v3, :cond_b

    .line 38
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v8, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:[I

    iput-object v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 39
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Ljava/util/List;

    iput-object v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    goto :goto_5

    .line 40
    :cond_a
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J1()V

    .line 41
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 42
    :cond_b
    :goto_5
    iget-boolean v6, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-nez v6, :cond_1c

    .line 43
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    if-ne v6, v2, :cond_c

    goto/16 :goto_d

    :cond_c
    if-ltz v6, :cond_1b

    .line 44
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v7

    if-lt v6, v7, :cond_d

    goto/16 :goto_c

    .line 45
    :cond_d
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v6, :cond_f

    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    if-eq v7, v2, :cond_f

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:I

    if-ge v6, v3, :cond_e

    goto :goto_6

    .line 46
    :cond_e
    iput v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 47
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    goto/16 :goto_b

    .line 48
    :cond_f
    :goto_6
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->w(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 49
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v7, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result v7

    goto :goto_7

    .line 50
    :cond_10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v7

    :goto_7
    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 51
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    if-eq v7, v5, :cond_12

    .line 52
    iget-boolean v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    if-eqz v7, :cond_11

    .line 53
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/w;->g()I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    sub-int/2addr v7, v8

    .line 54
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    goto/16 :goto_b

    .line 55
    :cond_11
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/w;->k()I

    move-result v7

    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    add-int/2addr v7, v8

    .line 56
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    goto/16 :goto_b

    .line 57
    :cond_12
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result v7

    .line 58
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/w;->l()I

    move-result v8

    if-le v7, v8, :cond_14

    .line 59
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    if-eqz v6, :cond_13

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 60
    invoke-virtual {v6}, Landroidx/recyclerview/widget/w;->g()I

    move-result v6

    goto :goto_8

    :cond_13
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 61
    invoke-virtual {v6}, Landroidx/recyclerview/widget/w;->k()I

    move-result v6

    :goto_8
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_b

    .line 62
    :cond_14
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 63
    invoke-virtual {v8}, Landroidx/recyclerview/widget/w;->k()I

    move-result v8

    sub-int/2addr v7, v8

    if-gez v7, :cond_15

    neg-int v6, v7

    .line 64
    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_b

    .line 65
    :cond_15
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/w;->g()I

    move-result v7

    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 66
    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;)I

    move-result v6

    sub-int/2addr v7, v6

    if-gez v7, :cond_16

    .line 67
    iput v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_b

    .line 68
    :cond_16
    iput v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_b

    .line 69
    :cond_17
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 70
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    if-ne v7, v5, :cond_19

    .line 71
    invoke-direct {p0, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l1(I)I

    move-result v6

    if-ne v6, v3, :cond_18

    const/4 v6, 0x1

    goto :goto_9

    :cond_18
    const/4 v6, 0x0

    .line 72
    :goto_9
    iput-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    .line 73
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a()V

    goto :goto_a

    .line 74
    :cond_19
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    if-eqz v6, :cond_1a

    .line 75
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/w;->g()I

    move-result v6

    sub-int/2addr v6, v7

    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    goto :goto_a

    .line 76
    :cond_1a
    iget-object v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/w;->k()I

    move-result v6

    add-int/2addr v6, v7

    iput v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 77
    :goto_a
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z

    :goto_b
    const/4 v6, 0x1

    goto :goto_e

    .line 78
    :cond_1b
    :goto_c
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    .line 79
    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    :cond_1c
    :goto_d
    const/4 v6, 0x0

    :goto_e
    if-eqz v6, :cond_1d

    goto :goto_11

    .line 80
    :cond_1d
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-eqz v6, :cond_1f

    .line 81
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v6

    .line 82
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v7

    :cond_1e
    add-int/2addr v7, v2

    if-ltz v7, :cond_21

    .line 83
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v8

    .line 84
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v8

    if-ltz v8, :cond_1e

    if-ge v8, v6, :cond_1e

    goto :goto_10

    .line 85
    :cond_1f
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v6

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v7

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v7, :cond_21

    .line 87
    invoke-virtual {p0, v8}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v9

    .line 88
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v9

    if-ltz v9, :cond_20

    if-ge v9, v6, :cond_20

    move v8, v9

    goto :goto_10

    :cond_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_21
    const/4 v8, 0x0

    .line 89
    :goto_10
    iput v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    .line 90
    iput v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    .line 91
    :goto_11
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->e:Z

    .line 92
    :cond_22
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v6, :cond_24

    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    if-ne v6, v2, :cond_24

    .line 93
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-ne v6, v7, :cond_23

    .line 94
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result v6

    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z

    if-eq v6, v7, :cond_24

    .line 95
    :cond_23
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 96
    iput-boolean v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z

    .line 97
    :cond_24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v6

    if-lez v6, :cond_33

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v6, :cond_25

    iget v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:I

    if-ge v6, v3, :cond_33

    .line 98
    :cond_25
    iget-boolean v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->d:Z

    if-eqz v6, :cond_27

    const/4 v1, 0x0

    .line 99
    :goto_12
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v1, v6, :cond_33

    .line 100
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d()V

    .line 101
    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    if-eq v6, v5, :cond_26

    .line 102
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v7, v7, v1

    .line 103
    iput v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    iput v6, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_27
    if-nez v1, :cond_29

    .line 104
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    if-nez v1, :cond_28

    goto :goto_14

    :cond_28
    const/4 v1, 0x0

    .line 105
    :goto_13
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v1, v6, :cond_33

    .line 106
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v6, v6, v1

    .line 107
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d()V

    .line 108
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    aget v7, v7, v1

    .line 109
    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    iput v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_29
    :goto_14
    const/4 v1, 0x0

    .line 110
    :goto_15
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v1, v6, :cond_30

    .line 111
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v6, v6, v1

    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    iget v8, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:I

    if-eqz v7, :cond_2a

    .line 112
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v9

    goto :goto_16

    .line 113
    :cond_2a
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v9

    .line 114
    :goto_16
    invoke-virtual {v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d()V

    if-ne v9, v5, :cond_2b

    goto :goto_17

    :cond_2b
    if-eqz v7, :cond_2c

    .line 115
    iget-object v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/w;->g()I

    move-result v10

    if-lt v9, v10, :cond_2f

    :cond_2c
    if-nez v7, :cond_2d

    iget-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 116
    invoke-virtual {v7}, Landroidx/recyclerview/widget/w;->k()I

    move-result v7

    if-le v9, v7, :cond_2d

    goto :goto_17

    :cond_2d
    if-eq v8, v5, :cond_2e

    add-int/2addr v9, v8

    .line 117
    :cond_2e
    iput v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    iput v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    :cond_2f
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 118
    :cond_30
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 119
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    array-length v7, v6

    .line 121
    iget-object v8, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    if-eqz v8, :cond_31

    array-length v8, v8

    if-ge v8, v7, :cond_32

    .line 122
    :cond_31
    iget-object v8, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    :cond_32
    const/4 v8, 0x0

    :goto_18
    if-ge v8, v7, :cond_33

    .line 123
    iget-object v9, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->f:[I

    aget-object v10, v6, v8

    invoke-virtual {v10, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v10

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    .line 124
    :cond_33
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->u(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 125
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iput-boolean v4, v1, Landroidx/recyclerview/widget/p;->a:Z

    .line 126
    iput-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Z

    .line 127
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/w;->l()I

    move-result v1

    .line 128
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    div-int v6, v1, v6

    iput v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    .line 129
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    .line 130
    invoke-virtual {v6}, Landroidx/recyclerview/widget/w;->i()I

    move-result v6

    .line 131
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:I

    .line 132
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N1(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 133
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    if-eqz v1, :cond_34

    .line 134
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L1(I)V

    .line 135
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 136
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L1(I)V

    .line 137
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    iget v6, v1, Landroidx/recyclerview/widget/p;->d:I

    add-int/2addr v2, v6

    iput v2, v1, Landroidx/recyclerview/widget/p;->c:I

    .line 138
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/RecyclerView$y;)I

    goto :goto_19

    .line 139
    :cond_34
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L1(I)V

    .line 140
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 141
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L1(I)V

    .line 142
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->a:I

    iget v6, v1, Landroidx/recyclerview/widget/p;->d:I

    add-int/2addr v2, v6

    iput v2, v1, Landroidx/recyclerview/widget/p;->c:I

    .line 143
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 144
    :goto_19
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/w;->i()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_35

    goto/16 :goto_1e

    :cond_35
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v2

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v2, :cond_38

    .line 146
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v7

    .line 147
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v9, v8, v1

    if-gez v9, :cond_36

    goto :goto_1b

    .line 148
    :cond_36
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 149
    iget-boolean v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v7, :cond_37

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float v8, v8, v7

    .line 150
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    int-to-float v7, v7

    div-float/2addr v8, v7

    .line 151
    :cond_37
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 152
    :cond_38
    iget v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    .line 153
    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    int-to-float v7, v7

    mul-float v1, v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 154
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/w;->i()I

    move-result v7

    if-ne v7, v5, :cond_39

    .line 155
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/w;->l()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 156
    :cond_39
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    div-int v5, v1, v5

    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    .line 157
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    .line 158
    invoke-virtual {v5}, Landroidx/recyclerview/widget/w;->i()I

    move-result v5

    .line 159
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:I

    .line 160
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    if-ne v1, v6, :cond_3a

    goto :goto_1e

    :cond_3a
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v2, :cond_3e

    .line 161
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v5

    .line 162
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 163
    iget-boolean v8, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v8, :cond_3b

    goto :goto_1d

    .line 164
    :cond_3b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result v8

    if-eqz v8, :cond_3c

    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne v8, v3, :cond_3c

    .line 165
    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    add-int/lit8 v9, v8, -0x1

    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v9, v7

    neg-int v9, v9

    iget v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    mul-int v9, v9, v10

    sub-int/2addr v8, v3

    sub-int/2addr v8, v7

    neg-int v7, v8

    mul-int v7, v7, v6

    sub-int/2addr v9, v7

    .line 166
    invoke-virtual {v5, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1d

    .line 167
    :cond_3c
    iget-object v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    iget v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    mul-int v8, v8, v7

    mul-int v7, v7, v6

    .line 168
    iget v9, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne v9, v3, :cond_3d

    sub-int/2addr v8, v7

    .line 169
    invoke-virtual {v5, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1d

    :cond_3d
    sub-int/2addr v8, v7

    .line 170
    invoke-virtual {v5, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 171
    :cond_3e
    :goto_1e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v1

    if-lez v1, :cond_40

    .line 172
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v1, :cond_3f

    .line 173
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 174
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    goto :goto_1f

    .line 175
    :cond_3f
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    .line 176
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    :cond_40
    :goto_1f
    if-eqz p3, :cond_44

    .line 177
    iget-boolean p3, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-nez p3, :cond_44

    .line 178
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:I

    if-eqz p3, :cond_42

    .line 179
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result p3

    if-lez p3, :cond_42

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Z

    if-nez p3, :cond_41

    .line 180
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A1()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_42

    :cond_41
    const/4 p3, 0x1

    goto :goto_20

    :cond_42
    const/4 p3, 0x0

    :goto_20
    if-eqz p3, :cond_44

    .line 181
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Ljava/lang/Runnable;

    .line 182
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_43

    .line 183
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    :cond_43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m1()Z

    move-result p3

    if-eqz p3, :cond_44

    goto :goto_21

    :cond_44
    const/4 v3, 0x0

    .line 185
    :goto_21
    iget-boolean p3, p2, Landroidx/recyclerview/widget/RecyclerView$y;->g:Z

    if-eqz p3, :cond_45

    .line 186
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()V

    .line 187
    :cond_45
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    .line 188
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result p3

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z

    if-eqz v3, :cond_46

    .line 189
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()V

    .line 190
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    :cond_46
    return-void
.end method

.method private E1(I)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 3
    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method private G1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;)V
    .locals 4

    .line 1
    iget-boolean v0, p2, Landroidx/recyclerview/widget/p;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p2, Landroidx/recyclerview/widget/p;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/p;->b:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 3
    iget v0, p2, Landroidx/recyclerview/widget/p;->e:I

    if-ne v0, v1, :cond_1

    .line 4
    iget p2, p2, Landroidx/recyclerview/widget/p;->g:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H1(Landroidx/recyclerview/widget/RecyclerView$u;I)V

    goto/16 :goto_4

    .line 5
    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/p;->f:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I1(Landroidx/recyclerview/widget/RecyclerView$u;I)V

    goto :goto_4

    .line 6
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/p;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_6

    .line 7
    iget v0, p2, Landroidx/recyclerview/widget/p;->f:I

    .line 8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v1

    .line 9
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v3, v2, :cond_4

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v2

    if-le v2, v1, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    .line 11
    iget p2, p2, Landroidx/recyclerview/widget/p;->g:I

    goto :goto_1

    .line 12
    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/p;->g:I

    iget p2, p2, Landroidx/recyclerview/widget/p;->b:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    .line 13
    :goto_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H1(Landroidx/recyclerview/widget/RecyclerView$u;I)V

    goto :goto_4

    .line 14
    :cond_6
    iget v0, p2, Landroidx/recyclerview/widget/p;->g:I

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v1

    .line 16
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v3, v2, :cond_8

    .line 17
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v2

    if-ge v2, v1, :cond_7

    move v1, v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_8
    iget v0, p2, Landroidx/recyclerview/widget/p;->g:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_9

    .line 19
    iget p2, p2, Landroidx/recyclerview/widget/p;->f:I

    goto :goto_3

    .line 20
    :cond_9
    iget v0, p2, Landroidx/recyclerview/widget/p;->f:I

    iget p2, p2, Landroidx/recyclerview/widget/p;->b:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v0

    .line 21
    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I1(Landroidx/recyclerview/widget/RecyclerView$u;I)V

    :cond_a
    :goto_4
    return-void
.end method

.method private H1(Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v2

    .line 3
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 4
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/w;->o(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 6
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_1
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v4, v5, :cond_1

    .line 8
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v3, v4, :cond_4

    .line 10
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->m()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 11
    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->m()V

    .line 13
    :cond_4
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/d;->m(Landroid/view/View;)V

    .line 14
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private I1(Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v1

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 4
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/w;->n(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 6
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 7
    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v2, v3, :cond_1

    .line 8
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v0, v2, :cond_4

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->n()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->n()V

    .line 13
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/d;->m(Landroid/view/View;)V

    .line 14
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$u;->i(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private J1()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    :goto_1
    return-void
.end method

.method private L1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iput p1, v0, Landroidx/recyclerview/widget/p;->e:I

    .line 2
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    iput v2, v0, Landroidx/recyclerview/widget/p;->d:I

    return-void
.end method

.method private M1(II)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O1(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private N1(ILandroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/p;->b:I

    .line 2
    iput p1, v0, Landroidx/recyclerview/widget/p;->c:I

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->g:Landroidx/recyclerview/widget/RecyclerView$x;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 4
    iget p2, p2, Landroidx/recyclerview/widget/RecyclerView$y;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 5
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-ge p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne v0, p1, :cond_2

    .line 6
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/w;->l()I

    move-result p1

    goto :goto_2

    .line 7
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/w;->l()I

    move-result p1

    move p2, p1

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_2
    const/4 p2, 0x0

    .line 8
    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/w;->k()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Landroidx/recyclerview/widget/p;->f:I

    .line 10
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/recyclerview/widget/p;->g:I

    goto :goto_5

    .line 11
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/w;->f()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Landroidx/recyclerview/widget/p;->g:I

    .line 12
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    neg-int p2, p2

    iput p2, p1, Landroidx/recyclerview/widget/p;->f:I

    .line 13
    :goto_5
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/p;->h:Z

    .line 14
    iput-boolean v2, p1, Landroidx/recyclerview/widget/p;->a:Z

    .line 15
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/w;->i()I

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 16
    invoke-virtual {p2}, Landroidx/recyclerview/widget/w;->f()I

    move-result p2

    if-nez p2, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p1, Landroidx/recyclerview/widget/p;->i:Z

    return-void
.end method

.method private O1(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;II)V
    .locals 4

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    if-ne p2, v1, :cond_1

    .line 2
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    if-eq p2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c()V

    .line 4
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    :goto_0
    add-int/2addr p2, v0

    if-gt p2, p3, :cond_3

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Ljava/util/BitSet;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_2

    .line 6
    :cond_1
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    if-eq p2, v3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b()V

    .line 8
    iget p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    :goto_1
    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_3

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Ljava/util/BitSet;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {p2, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_3
    :goto_2
    return-void
.end method

.method private P1(III)I
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private l1(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private n1(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s1(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r1(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    move-object v0, p1

    move-object v4, p0

    .line 5
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/z;->a(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/w;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;Z)I

    move-result p1

    return p1
.end method

.method private o1(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s1(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r1(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    move-object v0, p1

    move-object v4, p0

    .line 5
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/w;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;ZZ)I

    move-result p1

    return p1
.end method

.method private p1(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s1(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r1(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M:Z

    move-object v0, p1

    move-object v4, p0

    .line 5
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/z;->c(Landroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/w;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$o;Z)I

    move-result p1

    return p1
.end method

.method private q1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Ljava/util/BitSet;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 2
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/p;->i:Z

    if-eqz v0, :cond_1

    .line 3
    iget v0, v8, Landroidx/recyclerview/widget/p;->e:I

    if-ne v0, v10, :cond_0

    const v13, 0x7fffffff

    goto :goto_1

    :cond_0
    const/high16 v13, -0x80000000

    goto :goto_1

    .line 4
    :cond_1
    iget v0, v8, Landroidx/recyclerview/widget/p;->e:I

    if-ne v0, v10, :cond_2

    .line 5
    iget v0, v8, Landroidx/recyclerview/widget/p;->g:I

    iget v1, v8, Landroidx/recyclerview/widget/p;->b:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 6
    :cond_2
    iget v0, v8, Landroidx/recyclerview/widget/p;->f:I

    iget v1, v8, Landroidx/recyclerview/widget/p;->b:I

    sub-int/2addr v0, v1

    :goto_0
    move v13, v0

    .line 7
    :goto_1
    iget v0, v8, Landroidx/recyclerview/widget/p;->e:I

    invoke-direct {v6, v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M1(II)V

    .line 8
    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->k()I

    move-result v0

    :goto_2
    move v14, v0

    const/4 v0, 0x0

    .line 11
    :goto_3
    iget v1, v8, Landroidx/recyclerview/widget/p;->c:I

    if-ltz v1, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    const/4 v2, -0x1

    if-eqz v1, :cond_2e

    .line 12
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/p;->i:Z

    if-nez v1, :cond_5

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Ljava/util/BitSet;

    .line 13
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 14
    :cond_5
    iget v0, v8, Landroidx/recyclerview/widget/p;->c:I

    const-wide v3, 0x7fffffffffffffffL

    .line 15
    invoke-virtual {v7, v0, v9, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->m(IZJ)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    iget-object v15, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    .line 16
    iget v0, v8, Landroidx/recyclerview/widget/p;->c:I

    iget v1, v8, Landroidx/recyclerview/widget/p;->d:I

    add-int/2addr v0, v1

    iput v0, v8, Landroidx/recyclerview/widget/p;->c:I

    .line 17
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 18
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a()I

    move-result v0

    .line 19
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 20
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v1, :cond_7

    array-length v3, v1

    if-lt v0, v3, :cond_6

    goto :goto_5

    .line 21
    :cond_6
    aget v1, v1, v0

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v1, -0x1

    :goto_6
    if-ne v1, v2, :cond_8

    const/4 v3, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_f

    .line 22
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v1, :cond_9

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v9

    goto :goto_b

    .line 23
    :cond_9
    iget v1, v8, Landroidx/recyclerview/widget/p;->e:I

    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E1(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 24
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    sub-int/2addr v1, v10

    const/4 v4, -0x1

    const/16 v16, -0x1

    goto :goto_8

    .line 25
    :cond_a
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    move v4, v1

    const/4 v1, 0x0

    const/16 v16, 0x1

    .line 26
    :goto_8
    iget v11, v8, Landroidx/recyclerview/widget/p;->e:I

    const/16 v17, 0x0

    if-ne v11, v10, :cond_c

    .line 27
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/w;->k()I

    move-result v11

    const v12, 0x7fffffff

    :goto_9
    if-eq v1, v4, :cond_e

    .line 28
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v1

    .line 29
    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v9

    if-ge v9, v12, :cond_b

    move-object/from16 v17, v2

    move v12, v9

    :cond_b
    add-int v1, v1, v16

    const/4 v2, -0x1

    const/4 v9, 0x0

    goto :goto_9

    .line 30
    :cond_c
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/w;->g()I

    move-result v2

    const/high16 v9, -0x80000000

    :goto_a
    if-eq v1, v4, :cond_e

    .line 31
    iget-object v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v11, v11, v1

    .line 32
    invoke-virtual {v11, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v12

    if-le v12, v9, :cond_d

    move-object/from16 v17, v11

    move v9, v12

    :cond_d
    add-int v1, v1, v16

    goto :goto_a

    :cond_e
    move-object/from16 v1, v17

    .line 33
    :goto_b
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 34
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)V

    .line 35
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iget v4, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    aput v4, v2, v0

    goto :goto_c

    .line 36
    :cond_f
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v2, v1

    :goto_c
    move-object v9, v1

    .line 37
    iput-object v9, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 38
    iget v1, v8, Landroidx/recyclerview/widget/p;->e:I

    if-ne v1, v10, :cond_10

    .line 39
    invoke-virtual {v6, v15}, Landroidx/recyclerview/widget/RecyclerView$o;->d(Landroid/view/View;)V

    goto :goto_d

    :cond_10
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v6, v15, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->e(Landroid/view/View;I)V

    .line 41
    :goto_d
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v1, :cond_12

    .line 42
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne v1, v10, :cond_11

    .line 43
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:I

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->M()I

    move-result v2

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->N()I

    move-result v4

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->T()I

    move-result v12

    add-int/2addr v12, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 47
    invoke-static {v2, v4, v12, v11, v10}, Landroidx/recyclerview/widget/RecyclerView$o;->D(IIIIZ)I

    move-result v2

    const/4 v4, 0x0

    .line 48
    invoke-direct {v6, v15, v1, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C1(Landroid/view/View;IIZ)V

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->e0()I

    move-result v1

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->f0()I

    move-result v2

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->U()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->V()I

    move-result v12

    add-int/2addr v12, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 52
    invoke-static {v1, v2, v12, v11, v10}, Landroidx/recyclerview/widget/RecyclerView$o;->D(IIIIZ)I

    move-result v1

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->I:I

    .line 53
    invoke-direct {v6, v15, v1, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C1(Landroid/view/View;IIZ)V

    goto :goto_e

    :cond_12
    const/4 v4, 0x0

    .line 54
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne v1, v10, :cond_13

    .line 55
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    .line 56
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->f0()I

    move-result v2

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 57
    invoke-static {v1, v2, v4, v11, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->D(IIIIZ)I

    move-result v1

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->M()I

    move-result v2

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->N()I

    move-result v11

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->T()I

    move-result v16

    add-int v12, v16, v12

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 61
    invoke-static {v2, v11, v12, v7, v10}, Landroidx/recyclerview/widget/RecyclerView$o;->D(IIIIZ)I

    move-result v2

    .line 62
    invoke-direct {v6, v15, v1, v2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C1(Landroid/view/View;IIZ)V

    goto :goto_e

    .line 63
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->e0()I

    move-result v1

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->f0()I

    move-result v2

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->U()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->V()I

    move-result v7

    add-int/2addr v7, v4

    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 66
    invoke-static {v1, v2, v7, v4, v10}, Landroidx/recyclerview/widget/RecyclerView$o;->D(IIIIZ)I

    move-result v1

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$o;->N()I

    move-result v4

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v11, 0x0

    .line 68
    invoke-static {v2, v4, v11, v7, v11}, Landroidx/recyclerview/widget/RecyclerView$o;->D(IIIIZ)I

    move-result v2

    .line 69
    invoke-direct {v6, v15, v1, v2, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C1(Landroid/view/View;IIZ)V

    .line 70
    :goto_e
    iget v1, v8, Landroidx/recyclerview/widget/p;->e:I

    if-ne v1, v10, :cond_17

    .line 71
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v1, :cond_14

    invoke-direct {v6, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x1(I)I

    move-result v1

    goto :goto_f

    .line 72
    :cond_14
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v1

    .line 73
    :goto_f
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    if-eqz v3, :cond_16

    .line 74
    iget-boolean v4, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_16

    .line 75
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 76
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    new-array v7, v7, [I

    iput-object v7, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:[I

    const/4 v7, 0x0

    .line 77
    :goto_10
    iget v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v7, v11, :cond_15

    .line 78
    iget-object v11, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:[I

    iget-object v12, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v12, v12, v7

    invoke-virtual {v12, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v12

    sub-int v12, v1, v12

    aput v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_15
    const/4 v7, -0x1

    .line 79
    iput v7, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:I

    .line 80
    iput v0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 81
    iget-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_16
    move v4, v1

    move v7, v2

    goto :goto_13

    .line 82
    :cond_17
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v1, :cond_18

    invoke-direct {v6, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y1(I)I

    move-result v1

    goto :goto_11

    .line 83
    :cond_18
    invoke-virtual {v9, v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v1

    .line 84
    :goto_11
    iget-object v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v2, v15}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    if-eqz v3, :cond_1a

    .line 85
    iget-boolean v4, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v4, :cond_1a

    .line 86
    new-instance v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 87
    iget v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    new-array v7, v7, [I

    iput-object v7, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:[I

    const/4 v7, 0x0

    .line 88
    :goto_12
    iget v11, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v7, v11, :cond_19

    .line 89
    iget-object v11, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:[I

    iget-object v12, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v12, v12, v7

    invoke-virtual {v12, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v12

    sub-int/2addr v12, v1

    aput v12, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 90
    :cond_19
    iput v10, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:I

    .line 91
    iput v0, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 92
    iget-object v7, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_1a
    move v7, v1

    move v4, v2

    .line 93
    :goto_13
    iget-boolean v1, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v1, :cond_21

    iget v1, v8, Landroidx/recyclerview/widget/p;->d:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_21

    if-eqz v3, :cond_1b

    .line 94
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Z

    goto :goto_18

    .line 95
    :cond_1b
    iget v1, v8, Landroidx/recyclerview/widget/p;->e:I

    if-ne v1, v10, :cond_1d

    .line 96
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/high16 v11, -0x80000000

    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v1

    const/4 v2, 0x1

    .line 97
    :goto_14
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v2, v3, :cond_1f

    .line 98
    iget-object v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v2

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v3

    if-eq v3, v1, :cond_1c

    goto :goto_16

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1d
    const/high16 v11, -0x80000000

    .line 99
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v1

    const/4 v2, 0x1

    .line 100
    :goto_15
    iget v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v2, v3, :cond_1f

    .line 101
    iget-object v3, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v3, v3, v2

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v3

    if-eq v3, v1, :cond_1e

    :goto_16
    const/4 v1, 0x0

    goto :goto_17

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    const/4 v1, 0x1

    :goto_17
    xor-int/2addr v1, v10

    if-eqz v1, :cond_22

    .line 102
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 103
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->f(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 104
    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->e:Z

    .line 105
    :cond_20
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Z

    goto :goto_19

    :cond_21
    :goto_18
    const/high16 v11, -0x80000000

    .line 106
    :cond_22
    :goto_19
    iget v0, v8, Landroidx/recyclerview/widget/p;->e:I

    if-ne v0, v10, :cond_24

    .line 107
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_23

    .line 108
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    :goto_1a
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_26

    .line 109
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    goto :goto_1a

    .line 110
    :cond_23
    iget-object v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a(Landroid/view/View;)V

    goto :goto_1c

    .line 111
    :cond_24
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_25

    .line 112
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    :goto_1b
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_26

    .line 113
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->o(Landroid/view/View;)V

    goto :goto_1b

    .line 114
    :cond_25
    iget-object v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->o(Landroid/view/View;)V

    .line 115
    :cond_26
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne v0, v10, :cond_28

    .line 116
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_27

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    goto :goto_1d

    :cond_27
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    .line 117
    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    sub-int/2addr v1, v10

    iget v2, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    .line 118
    :goto_1d
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v12, v0

    move v3, v1

    goto :goto_1f

    .line 119
    :cond_28
    iget-boolean v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_29

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->k()I

    move-result v0

    goto :goto_1e

    :cond_29
    iget v0, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    mul-int v0, v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    .line 120
    invoke-virtual {v1}, Landroidx/recyclerview/widget/w;->k()I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :goto_1e
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->u:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1, v15}, Landroidx/recyclerview/widget/w;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v12, v1

    .line 122
    :goto_1f
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne v0, v10, :cond_2a

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v3

    move v3, v4

    move v4, v12

    move-object v12, v5

    move v5, v7

    .line 123
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->l0(Landroid/view/View;IIII)V

    move-object v7, v12

    goto :goto_20

    :cond_2a
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v4

    move v4, v7

    move-object v7, v5

    move v5, v12

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$o;->l0(Landroid/view/View;IIII)V

    .line 125
    :goto_20
    iget-boolean v0, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_2b

    .line 126
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v0, v0, Landroidx/recyclerview/widget/p;->e:I

    invoke-direct {v6, v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->M1(II)V

    goto :goto_21

    .line 127
    :cond_2b
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v0, v0, Landroidx/recyclerview/widget/p;->e:I

    invoke-direct {v6, v9, v0, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O1(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;II)V

    .line 128
    :goto_21
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    move-object/from16 v1, p1

    invoke-direct {v6, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;)V

    .line 129
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/p;->h:Z

    if-eqz v0, :cond_2d

    invoke-virtual {v15}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 130
    iget-boolean v0, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v0, :cond_2c

    .line 131
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_22

    .line 132
    :cond_2c
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A:Ljava/util/BitSet;

    iget v2, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_23

    :cond_2d
    :goto_22
    const/4 v3, 0x0

    :goto_23
    move-object v7, v1

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_2e
    move-object v1, v7

    const/4 v3, 0x0

    if-nez v0, :cond_2f

    .line 133
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    invoke-direct {v6, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;)V

    .line 134
    :cond_2f
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v0, v0, Landroidx/recyclerview/widget/p;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    .line 135
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->k()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y1(I)I

    move-result v0

    .line 136
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/w;->k()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_24

    .line 137
    :cond_30
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x1(I)I

    move-result v0

    .line 138
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/w;->g()I

    move-result v1

    sub-int v1, v0, v1

    :goto_24
    if-lez v1, :cond_31

    .line 139
    iget v0, v8, Landroidx/recyclerview/widget/p;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_25

    :cond_31
    const/4 v9, 0x0

    :goto_25
    return v9
.end method

.method private t1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x1(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/w;->p(I)V

    :cond_1
    return-void
.end method

.method private u1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V
    .locals 2

    const v0, 0x7fffffff

    .line 1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y1(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->k()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 3
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    neg-int p2, v1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/w;->p(I)V

    :cond_1
    return-void
.end method

.method private x1(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private y1(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private z1(III)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, p1

    .line 2
    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->g(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->i(II)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->h(II)V

    goto :goto_3

    .line 5
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->i(II)V

    goto :goto_3

    .line 6
    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->h(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    .line 7
    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    :cond_8
    return-void
.end method


# virtual methods
.method A1()Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 2
    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 3
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    .line 4
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    .line 5
    :goto_0
    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v6, :cond_1

    const/4 v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, -0x1

    :goto_2
    if-eq v0, v6, :cond_11

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 8
    iget-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 9
    iget-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    .line 10
    iget-boolean v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    const/high16 v12, -0x80000000

    if-eqz v11, :cond_4

    .line 11
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    if-eq v11, v12, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b()V

    .line 13
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    .line 14
    :goto_3
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/w;->g()I

    move-result v12

    if-ge v11, v12, :cond_6

    .line 15
    iget-object v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 16
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->k(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v10

    .line 17
    iget-boolean v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    goto :goto_5

    .line 18
    :cond_4
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    if-eq v11, v12, :cond_5

    goto :goto_4

    .line 19
    :cond_5
    invoke-virtual {v10}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c()V

    .line 20
    iget v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    .line 21
    :goto_4
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/w;->k()I

    move-result v12

    if-le v11, v12, :cond_6

    .line 22
    iget-object v11, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 23
    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->k(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v10

    .line 24
    iget-boolean v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    :goto_5
    xor-int/2addr v10, v1

    goto :goto_6

    :cond_6
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_7

    return-object v8

    .line 25
    :cond_7
    iget-object v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    invoke-virtual {v2, v10}, Ljava/util/BitSet;->clear(I)V

    .line 26
    :cond_8
    iget-boolean v10, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz v10, :cond_9

    goto :goto_b

    :cond_9
    add-int v10, v0, v7

    if-eq v10, v6, :cond_10

    .line 27
    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v10

    .line 28
    iget-boolean v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v11, :cond_b

    .line 29
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;)I

    move-result v11

    .line 30
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;)I

    move-result v12

    if-ge v11, v12, :cond_a

    return-object v8

    :cond_a
    if-ne v11, v12, :cond_d

    goto :goto_7

    .line 31
    :cond_b
    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v11

    .line 32
    iget-object v12, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v12, v10}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v12

    if-le v11, v12, :cond_c

    return-object v8

    :cond_c
    if-ne v11, v12, :cond_d

    :goto_7
    const/4 v11, 0x1

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_10

    .line 33
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 34
    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    iget-object v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    iget v10, v10, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    sub-int/2addr v9, v10

    if-gez v9, :cond_e

    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    const/4 v9, 0x0

    :goto_9
    if-gez v3, :cond_f

    const/4 v10, 0x1

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    :goto_a
    if-eq v9, v10, :cond_10

    return-object v8

    :cond_10
    :goto_b
    add-int/2addr v0, v7

    goto/16 :goto_2

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public B0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z1(III)V

    return-void
.end method

.method B1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->P()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public C0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    return-void
.end method

.method public D0(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    const/16 p1, 0x8

    .line 1
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z1(III)V

    return-void
.end method

.method public E(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->E(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public E0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z1(III)V

    return-void
.end method

.method F1(ILandroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result v1

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v2

    move v1, v2

    const/4 v2, -0x1

    .line 3
    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iput-boolean v0, v3, Landroidx/recyclerview/widget/p;->a:Z

    .line 4
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N1(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 5
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L1(I)V

    .line 6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v0, p2, Landroidx/recyclerview/widget/p;->d:I

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/p;->c:I

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p2, Landroidx/recyclerview/widget/p;->b:I

    return-void
.end method

.method public G0(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    .line 1
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z1(III)V

    return-void
.end method

.method public H0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Z)V

    return-void
.end method

.method public I0(Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 0

    const/4 p1, -0x1

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b()V

    return-void
.end method

.method K1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F1(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p3

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v0, v0, Landroidx/recyclerview/widget/p;->b:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    .line 5
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/w;->p(I)V

    .line 6
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    .line 7
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iput v1, p3, Landroidx/recyclerview/widget/p;->b:I

    .line 8
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public M0(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    :cond_0
    return-void
.end method

.method public N0()Landroid/os/Parcelable;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 4
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 5
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 6
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G:Z

    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->k:Z

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v3, :cond_1

    .line 8
    iput-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->g:[I

    .line 9
    array-length v3, v3

    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:I

    .line 10
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->h:Ljava/util/List;

    goto :goto_0

    .line 11
    :cond_1
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->f:I

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v1

    const/4 v3, -0x1

    if-lez v1, :cond_7

    .line 13
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result v1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v1

    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 15
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r1(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s1(Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v3

    .line 18
    :goto_3
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 19
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:I

    .line 20
    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:[I

    .line 21
    :goto_4
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v2, v1, :cond_8

    .line 22
    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 24
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/w;->g()I

    move-result v3

    goto :goto_5

    .line 25
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 26
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/w;->k()I

    move-result v3

    :goto_5
    sub-int/2addr v1, v3

    .line 27
    :cond_6
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 28
    :cond_7
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 29
    iput v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 30
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:I

    :cond_8
    return-object v0
.end method

.method public O0(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->m1()Z

    :cond_0
    return-void
.end method

.method public X0(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public Y0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->e:[I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->d:I

    const/4 v1, -0x1

    .line 4
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 5
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 6
    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B:I

    const/high16 p1, -0x80000000

    .line 7
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->C:I

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    return-void
.end method

.method public Z0(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->K1(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->l1(I)I

    move-result p1

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    int-to-float p1, p1

    .line 4
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 5
    iput v2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 6
    :cond_1
    iput v2, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    .line 7
    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public a0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-nez v0, :cond_0

    .line 2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->a0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public c1(Landroid/graphics/Rect;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->U()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->V()I

    move-result v1

    add-int/2addr v1, v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->T()I

    move-result v2

    add-int/2addr v2, v0

    .line 3
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->R()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->l(III)I

    move-result p1

    .line 6
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    mul-int p3, p3, v0

    add-int/2addr p3, v1

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->S()I

    move-result v0

    .line 8
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->l(III)I

    move-result p2

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->S()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->l(III)I

    move-result p2

    .line 11
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    mul-int p1, p1, v0

    add-int/2addr p1, v2

    .line 12
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->R()I

    move-result v0

    .line 13
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->l(III)I

    move-result p1

    .line 14
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$300(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g0()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/q;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/q;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$x;->j(I)V

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->j1(Landroidx/recyclerview/widget/RecyclerView$x;)V

    return-void
.end method

.method public j()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public k(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    return p1
.end method

.method public k1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->H:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(IILandroidx/recyclerview/widget/RecyclerView$y;Landroidx/recyclerview/widget/RecyclerView$o$c;)V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result p2

    if-eqz p2, :cond_8

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F1(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge p1, p2, :cond_3

    .line 5
    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:[I

    :cond_3
    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 6
    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge p2, v1, :cond_6

    .line 7
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v2, v1, Landroidx/recyclerview/widget/p;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget v1, v1, Landroidx/recyclerview/widget/p;->f:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, p2

    .line 8
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->l(I)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v2, v2, p2

    iget v1, v1, Landroidx/recyclerview/widget/p;->g:I

    .line 9
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->i(I)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v2, v2, Landroidx/recyclerview/widget/p;->g:I

    :goto_2
    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    .line 10
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 11
    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    const/4 p2, 0x0

    :goto_3
    if-ge p2, v0, :cond_8

    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    .line 13
    iget v1, v1, Landroidx/recyclerview/widget/p;->c:I

    if-ltz v1, :cond_7

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$y;->b()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_8

    .line 14
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v1, v1, Landroidx/recyclerview/widget/p;->c:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N:[I

    aget v2, v2, p2

    move-object v3, p4

    check-cast v3, Landroidx/recyclerview/widget/m$b;

    invoke-virtual {v3, v1, v2}, Landroidx/recyclerview/widget/m$b;->a(II)V

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v2, v1, Landroidx/recyclerview/widget/p;->c:I

    iget v3, v1, Landroidx/recyclerview/widget/p;->d:I

    add-int/2addr v2, v3

    iput v2, v1, Landroidx/recyclerview/widget/p;->c:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    return-void
.end method

.method m1()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E:I

    if-eqz v0, :cond_7

    .line 2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->i:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->A1()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->b()V

    .line 10
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->h:Z

    .line 11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    return v3

    .line 12
    :cond_2
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Z

    if-nez v4, :cond_3

    return v1

    .line 13
    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    .line 14
    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    .line 15
    invoke-virtual {v6, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->e(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    if-nez v6, :cond_5

    .line 16
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L:Z

    .line 17
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)I

    return v1

    .line 18
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    mul-int/lit8 v4, v4, -0x1

    .line 19
    invoke-virtual {v1, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->e(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)I

    goto :goto_2

    .line 21
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)I

    .line 22
    :goto_2
    iput-boolean v3, p0, Landroidx/recyclerview/widget/RecyclerView$o;->h:Z

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->W0()V

    return v3

    :cond_7
    :goto_3
    return v1
.end method

.method public n0(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    .line 5
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    .line 6
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    .line 7
    :cond_1
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    if-eq v2, v3, :cond_2

    add-int/2addr v2, p1

    .line 8
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public o(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public o0(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v0, v1, :cond_3

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v1, v1, v0

    .line 5
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    add-int/2addr v2, p1

    .line 6
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->b:I

    .line 7
    :cond_1
    iget v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    if-eq v2, v3, :cond_2

    add-int/2addr v2, p1

    .line 8
    iput v2, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->c:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public p(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o1(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p1(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->n1(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method r1(Z)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->k()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/w;->g()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    .line 4
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v4

    .line 5
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v5

    .line 6
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->o1(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method s1(Z)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/w;->k()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/w;->g()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 4
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v5

    .line 5
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/w;->e(Landroid/view/View;)I

    move-result v6

    .line 6
    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/w;->b(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$y;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->p1(Landroidx/recyclerview/widget/RecyclerView$y;)I

    move-result p1

    return p1
.end method

.method public t0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->s0()V

    .line 2
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->O:Ljava/lang/Runnable;

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge p2, v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->d()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public u0(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;)Landroid/view/View;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->v(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->J1()V

    const/4 v0, -0x1

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    if-eq p2, v3, :cond_b

    const/4 v4, 0x2

    if-eq p2, v4, :cond_9

    const/16 v4, 0x11

    if-eq p2, v4, :cond_8

    const/16 v4, 0x21

    if-eq p2, v4, :cond_6

    const/16 v4, 0x42

    if-eq p2, v4, :cond_5

    const/16 v4, 0x82

    if-eq p2, v4, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne p2, v3, :cond_4

    :cond_3
    :goto_0
    const/4 p2, 0x1

    goto :goto_5

    :cond_4
    :goto_1
    const/high16 p2, -0x80000000

    goto :goto_5

    .line 5
    :cond_5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-nez p2, :cond_4

    goto :goto_0

    .line 6
    :cond_6
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne p2, v3, :cond_4

    :cond_7
    :goto_2
    const/4 p2, -0x1

    goto :goto_5

    .line 7
    :cond_8
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-nez p2, :cond_4

    :goto_3
    goto :goto_2

    .line 8
    :cond_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne p2, v3, :cond_a

    goto :goto_0

    .line 9
    :cond_a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_4

    .line 10
    :cond_b
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    if-ne p2, v3, :cond_c

    :goto_4
    goto :goto_3

    .line 11
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B1()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_0

    :goto_5
    if-ne p2, v2, :cond_d

    return-object v1

    .line 12
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 13
    iget-boolean v4, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    .line 14
    iget-object v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    if-ne p2, v3, :cond_e

    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->w1()I

    move-result v5

    goto :goto_6

    .line 16
    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v1()I

    move-result v5

    .line 17
    :goto_6
    invoke-direct {p0, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->N1(ILandroidx/recyclerview/widget/RecyclerView$y;)V

    .line 18
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->L1(I)V

    .line 19
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iget v7, v6, Landroidx/recyclerview/widget/p;->d:I

    add-int/2addr v7, v5

    iput v7, v6, Landroidx/recyclerview/widget/p;->c:I

    const v7, 0x3eaaaaab

    .line 20
    iget-object v8, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->t:Landroidx/recyclerview/widget/w;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/w;->l()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v7

    float-to-int v7, v8

    iput v7, v6, Landroidx/recyclerview/widget/p;->b:I

    .line 21
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->x:Landroidx/recyclerview/widget/p;

    iput-boolean v3, v6, Landroidx/recyclerview/widget/p;->h:Z

    const/4 v7, 0x0

    .line 22
    iput-boolean v7, v6, Landroidx/recyclerview/widget/p;->a:Z

    .line 23
    invoke-direct {p0, p3, v6, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->q1(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/p;Landroidx/recyclerview/widget/RecyclerView$y;)I

    .line 24
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->z:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v4, :cond_f

    .line 25
    invoke-virtual {v2, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->j(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_f

    if-eq p3, p1, :cond_f

    return-object p3

    .line 26
    :cond_f
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E1(I)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 27
    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    sub-int/2addr p3, v3

    :goto_7
    if-ltz p3, :cond_13

    .line 28
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p3

    invoke-virtual {p4, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->j(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_10

    if-eq p4, p1, :cond_10

    return-object p4

    :cond_10
    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    :cond_11
    const/4 p3, 0x0

    .line 29
    :goto_8
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge p3, p4, :cond_13

    .line 30
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p3

    invoke-virtual {p4, v5, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->j(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_12

    if-eq p4, p1, :cond_12

    return-object p4

    :cond_12
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    .line 31
    :cond_13
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->y:Z

    xor-int/2addr p3, v3

    if-ne p2, v0, :cond_14

    const/4 p4, 0x1

    goto :goto_9

    :cond_14
    const/4 p4, 0x0

    :goto_9
    if-ne p3, p4, :cond_15

    const/4 p3, 0x1

    goto :goto_a

    :cond_15
    const/4 p3, 0x0

    :goto_a
    if-nez v4, :cond_17

    if-eqz p3, :cond_16

    .line 32
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()I

    move-result p4

    goto :goto_b

    .line 33
    :cond_16
    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f()I

    move-result p4

    .line 34
    :goto_b
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->w(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_17

    if-eq p4, p1, :cond_17

    return-object p4

    .line 35
    :cond_17
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->E1(I)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 36
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    sub-int/2addr p2, v3

    :goto_c
    if-ltz p2, :cond_1e

    .line 37
    iget p4, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    if-ne p2, p4, :cond_18

    goto :goto_e

    :cond_18
    if-eqz p3, :cond_19

    .line 38
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p2

    .line 39
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()I

    move-result p4

    goto :goto_d

    :cond_19
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p4, p4, p2

    .line 40
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f()I

    move-result p4

    .line 41
    :goto_d
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->w(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_1a

    if-eq p4, p1, :cond_1a

    return-object p4

    :cond_1a
    :goto_e
    add-int/lit8 p2, p2, -0x1

    goto :goto_c

    .line 42
    :cond_1b
    :goto_f
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    if-ge v7, p2, :cond_1e

    if-eqz p3, :cond_1c

    .line 43
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p2, p2, v7

    .line 44
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e()I

    move-result p2

    goto :goto_10

    :cond_1c
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    aget-object p2, p2, v7

    .line 45
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f()I

    move-result p2

    .line 46
    :goto_10
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$o;->w(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1d

    if-eq p2, p1, :cond_1d

    return-object p2

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_1e
    return-object v1
.end method

.method public v0(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$o;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$o;->w0(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->s1(Z)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r1(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v1

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method v1()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method w1()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$o;->C()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->B(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->X(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public x()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public y(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public z(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public z0(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$y;Landroid/view/View;Ln3;)V
    .locals 7

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$o;->y0(Landroid/view/View;Ln3;)V

    return-void

    .line 4
    :cond_0
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 5
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->v:I

    const/4 p3, 0x1

    const/4 v0, -0x1

    if-nez p2, :cond_3

    .line 6
    iget-object p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    if-nez p2, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    move v1, v0

    .line 8
    :goto_0
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz p1, :cond_2

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    move v2, p3

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    invoke-static/range {v1 .. v6}, Ln3$c;->a(IIIIZZ)Ln3$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Ln3;->U(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    const/4 p2, -0x1

    const/4 v1, -0x1

    .line 10
    iget-object v2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    if-nez v2, :cond_4

    const/4 v2, -0x1

    goto :goto_2

    .line 11
    :cond_4
    iget v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->e:I

    move v2, v0

    .line 12
    :goto_2
    iget-boolean p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->f:Z

    if-eqz p1, :cond_5

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r:I

    move v3, p3

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    :goto_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p2

    .line 13
    invoke-static/range {v0 .. v5}, Ln3$c;->a(IIIIZZ)Ln3$c;

    move-result-object p1

    invoke-virtual {p4, p1}, Ln3;->U(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method
