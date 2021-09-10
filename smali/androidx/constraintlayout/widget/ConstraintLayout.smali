.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    }
.end annotation


# instance fields
.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lr0;",
            ">;"
        }
    .end annotation
.end field

.field e:Ls0;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:Landroidx/constraintlayout/widget/a;

.field private m:I

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    .line 5
    new-instance p1, Ls0;

    invoke-direct {p1}, Ls0;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 7
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const p1, 0x7fffffff

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 9
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/4 p1, 0x7

    .line 11
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/a;

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 15
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 16
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 17
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    .line 22
    new-instance p1, Ls0;

    invoke-direct {p1}, Ls0;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    const p1, 0x7fffffff

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 26
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/4 p1, 0x7

    .line 28
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/a;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 31
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 32
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 33
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 34
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final c(I)Lr0;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Lr0;

    :goto_0
    return-object p1
.end method

.method private e(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v0, p0}, Lr0;->J(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/a;

    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->a:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 6
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 7
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    goto :goto_2

    :cond_0
    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 8
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 9
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 10
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    :cond_3
    const/16 v5, 0x3b

    if-ne v4, v5, :cond_4

    .line 11
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    goto :goto_2

    :cond_4
    const/16 v5, 0x8

    if-ne v4, v5, :cond_5

    .line 12
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 13
    :try_start_0
    new-instance v5, Landroidx/constraintlayout/widget/a;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/a;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/a;

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroidx/constraintlayout/widget/a;->e(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 15
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/a;

    .line 16
    :goto_1
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    :cond_7
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {p1, v0}, Ls0;->C0(I)V

    return-void
.end method

.method private f(II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x8

    const/4 v10, -0x2

    if-ge v7, v3, :cond_a

    .line 4
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 5
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-ne v13, v8, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    iget-object v13, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Lr0;

    .line 8
    iget-boolean v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v14, :cond_9

    iget-boolean v14, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v14, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    invoke-virtual {v13, v14}, Lr0;->g0(I)V

    .line 10
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v14, :cond_8

    if-nez v15, :cond_2

    goto :goto_3

    :cond_2
    if-ne v14, v10, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    .line 12
    :goto_1
    invoke-static {v1, v5, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    if-ne v15, v10, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 13
    :goto_2
    invoke-static {v2, v4, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 14
    invoke-virtual {v12, v6, v9}, Landroid/view/View;->measure(II)V

    .line 15
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 16
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 17
    invoke-virtual {v13, v6}, Lr0;->h0(I)V

    .line 18
    invoke-virtual {v13, v9}, Lr0;->N(I)V

    if-eqz v16, :cond_5

    .line 19
    invoke-virtual {v13, v6}, Lr0;->j0(I)V

    :cond_5
    if-eqz v11, :cond_6

    .line 20
    invoke-virtual {v13, v9}, Lr0;->i0(I)V

    .line 21
    :cond_6
    iget-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v10, :cond_7

    .line 22
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 23
    invoke-virtual {v13, v10}, Lr0;->I(I)V

    .line 24
    :cond_7
    iget-boolean v10, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-eqz v10, :cond_9

    iget-boolean v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v8, :cond_9

    .line 25
    invoke-virtual {v13}, Lr0;->s()Ly0;

    move-result-object v8

    invoke-virtual {v8, v6}, Ly0;->f(I)V

    .line 26
    invoke-virtual {v13}, Lr0;->r()Ly0;

    move-result-object v6

    invoke-virtual {v6, v9}, Ly0;->f(I)V

    goto :goto_4

    .line 27
    :cond_8
    :goto_3
    invoke-virtual {v13}, Lr0;->s()Ly0;

    move-result-object v6

    invoke-virtual {v6}, Lz0;->b()V

    .line 28
    invoke-virtual {v13}, Lr0;->r()Ly0;

    move-result-object v6

    invoke-virtual {v6}, Lz0;->b()V

    :cond_9
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 29
    :cond_a
    iget-object v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v6}, Ls0;->E0()V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v3, :cond_24

    .line 30
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v8, :cond_b

    goto/16 :goto_11

    .line 32
    :cond_b
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 33
    iget-object v12, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Lr0;

    .line 34
    iget-boolean v13, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v13, :cond_22

    iget-boolean v13, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v13, :cond_c

    goto/16 :goto_11

    .line 35
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    invoke-virtual {v12, v13}, Lr0;->g0(I)V

    .line 36
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 37
    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v13, :cond_d

    if-eqz v14, :cond_d

    goto/16 :goto_11

    .line 38
    :cond_d
    sget-object v15, Lq0$b;->c:Lq0$b;

    invoke-virtual {v12, v15}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lq0;->d()Lx0;

    move-result-object v16

    .line 39
    sget-object v8, Lq0$b;->e:Lq0$b;

    invoke-virtual {v12, v8}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lq0;->d()Lx0;

    move-result-object v17

    .line 40
    invoke-virtual {v12, v15}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v15

    invoke-virtual {v15}, Lq0;->g()Lq0;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 41
    invoke-virtual {v12, v8}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v8

    invoke-virtual {v8}, Lq0;->g()Lq0;

    move-result-object v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    .line 42
    :goto_6
    sget-object v15, Lq0$b;->d:Lq0$b;

    invoke-virtual {v12, v15}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lq0;->d()Lx0;

    move-result-object v18

    .line 43
    sget-object v11, Lq0$b;->f:Lq0$b;

    invoke-virtual {v12, v11}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lq0;->d()Lx0;

    move-result-object v19

    .line 44
    invoke-virtual {v12, v15}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v15

    invoke-virtual {v15}, Lq0;->g()Lq0;

    move-result-object v15

    if-eqz v15, :cond_f

    .line 45
    invoke-virtual {v12, v11}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v11

    invoke-virtual {v11}, Lq0;->g()Lq0;

    move-result-object v11

    if-eqz v11, :cond_f

    const/4 v11, 0x1

    goto :goto_7

    :cond_f
    const/4 v11, 0x0

    :goto_7
    if-nez v13, :cond_10

    if-nez v14, :cond_10

    if-eqz v8, :cond_10

    if-eqz v11, :cond_10

    goto/16 :goto_11

    .line 46
    :cond_10
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v15}, Lr0;->p()Lr0$a;

    move-result-object v15

    sget-object v10, Lr0$a;->c:Lr0$a;

    move/from16 v20, v3

    if-eq v15, v10, :cond_11

    const/4 v15, 0x1

    goto :goto_8

    :cond_11
    const/4 v15, 0x0

    .line 47
    :goto_8
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3}, Lr0;->u()Lr0$a;

    move-result-object v3

    if-eq v3, v10, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    :goto_9
    if-nez v15, :cond_13

    .line 48
    invoke-virtual {v12}, Lr0;->s()Ly0;

    move-result-object v10

    invoke-virtual {v10}, Lz0;->b()V

    :cond_13
    if-nez v3, :cond_14

    .line 49
    invoke-virtual {v12}, Lr0;->r()Ly0;

    move-result-object v10

    invoke-virtual {v10}, Lz0;->b()V

    :cond_14
    if-nez v13, :cond_16

    if-eqz v15, :cond_15

    .line 50
    invoke-virtual {v12}, Lr0;->D()Z

    move-result v10

    if-eqz v10, :cond_15

    if-eqz v8, :cond_15

    invoke-virtual/range {v16 .. v16}, Lz0;->c()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-virtual/range {v17 .. v17}, Lz0;->c()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 51
    invoke-virtual/range {v17 .. v17}, Lx0;->i()F

    move-result v8

    invoke-virtual/range {v16 .. v16}, Lx0;->i()F

    move-result v10

    sub-float/2addr v8, v10

    float-to-int v13, v8

    .line 52
    invoke-virtual {v12}, Lr0;->s()Ly0;

    move-result-object v8

    invoke-virtual {v8, v13}, Ly0;->f(I)V

    .line 53
    invoke-static {v1, v5, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    goto :goto_a

    :cond_15
    const/4 v8, -0x2

    .line 54
    invoke-static {v1, v5, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    move v8, v10

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto :goto_c

    :cond_16
    const/4 v8, -0x2

    const/4 v10, -0x1

    if-ne v13, v10, :cond_17

    .line 55
    invoke-static {v1, v5, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v8, v16

    :goto_a
    const/4 v10, 0x0

    goto :goto_c

    :cond_17
    if-ne v13, v8, :cond_18

    const/4 v8, 0x1

    goto :goto_b

    :cond_18
    const/4 v8, 0x0

    .line 56
    :goto_b
    invoke-static {v1, v5, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    move/from16 v22, v10

    move v10, v8

    move/from16 v8, v22

    :goto_c
    if-nez v14, :cond_1a

    if-eqz v3, :cond_19

    .line 57
    invoke-virtual {v12}, Lr0;->C()Z

    move-result v16

    if-eqz v16, :cond_19

    if-eqz v11, :cond_19

    invoke-virtual/range {v18 .. v18}, Lz0;->c()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-virtual/range {v19 .. v19}, Lz0;->c()Z

    move-result v11

    if-eqz v11, :cond_19

    .line 58
    invoke-virtual/range {v19 .. v19}, Lx0;->i()F

    move-result v11

    invoke-virtual/range {v18 .. v18}, Lx0;->i()F

    move-result v14

    sub-float/2addr v11, v14

    float-to-int v14, v11

    .line 59
    invoke-virtual {v12}, Lr0;->r()Ly0;

    move-result-object v11

    invoke-virtual {v11, v14}, Ly0;->f(I)V

    .line 60
    invoke-static {v2, v4, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    move/from16 v21, v14

    const/16 v16, 0x0

    move v14, v11

    const/4 v11, -0x2

    goto :goto_e

    :cond_19
    const/4 v11, -0x2

    .line 61
    invoke-static {v2, v4, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    move/from16 v21, v14

    const/16 v16, 0x1

    move v14, v3

    const/4 v3, 0x0

    goto :goto_e

    :cond_1a
    const/4 v11, -0x1

    if-ne v14, v11, :cond_1b

    .line 62
    invoke-static {v2, v4, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v16

    move/from16 v21, v14

    move/from16 v14, v16

    const/4 v11, -0x2

    const/16 v16, 0x0

    goto :goto_e

    :cond_1b
    const/4 v11, -0x2

    if-ne v14, v11, :cond_1c

    const/16 v16, 0x1

    goto :goto_d

    :cond_1c
    const/16 v16, 0x0

    .line 63
    :goto_d
    invoke-static {v2, v4, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v21, v14

    move/from16 v14, v17

    .line 64
    :goto_e
    invoke-virtual {v7, v8, v14}, Landroid/view/View;->measure(II)V

    move/from16 v14, v21

    .line 65
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 67
    invoke-virtual {v12, v8}, Lr0;->h0(I)V

    .line 68
    invoke-virtual {v12, v13}, Lr0;->N(I)V

    if-eqz v10, :cond_1d

    .line 69
    invoke-virtual {v12, v8}, Lr0;->j0(I)V

    :cond_1d
    if-eqz v16, :cond_1e

    .line 70
    invoke-virtual {v12, v13}, Lr0;->i0(I)V

    :cond_1e
    if-eqz v15, :cond_1f

    .line 71
    invoke-virtual {v12}, Lr0;->s()Ly0;

    move-result-object v10

    invoke-virtual {v10, v8}, Ly0;->f(I)V

    goto :goto_f

    .line 72
    :cond_1f
    invoke-virtual {v12}, Lr0;->s()Ly0;

    move-result-object v8

    invoke-virtual {v8}, Ly0;->e()V

    :goto_f
    if-eqz v3, :cond_20

    .line 73
    invoke-virtual {v12}, Lr0;->r()Ly0;

    move-result-object v3

    invoke-virtual {v3, v13}, Ly0;->f(I)V

    goto :goto_10

    .line 74
    :cond_20
    invoke-virtual {v12}, Lr0;->r()Ly0;

    move-result-object v3

    invoke-virtual {v3}, Ly0;->e()V

    .line 75
    :goto_10
    iget-boolean v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v3, :cond_21

    .line 76
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_23

    .line 77
    invoke-virtual {v12, v3}, Lr0;->I(I)V

    goto :goto_12

    :cond_21
    const/4 v7, -0x1

    goto :goto_12

    :cond_22
    :goto_11
    move/from16 v20, v3

    const/4 v7, -0x1

    const/4 v11, -0x2

    :cond_23
    :goto_12
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v20

    const/16 v8, 0x8

    const/4 v10, -0x2

    goto/16 :goto_5

    :cond_24
    return-void
.end method


# virtual methods
.method protected a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return p1
.end method

.method public final d(Landroid/view/View;)Lr0;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Lr0;

    :goto_0
    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44870000    # 1080.0f

    const/high16 v4, 0x44f00000    # 1920.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_2

    move-object/from16 v7, p0

    .line 6
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 9
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 10
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 11
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 12
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 13
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 14
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 15
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 16
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v3

    mul-float v9, v9, v1

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v4

    mul-float v10, v10, v2

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v3

    mul-float v11, v11, v1

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float v8, v8, v2

    float-to-int v8, v8

    .line 17
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 18
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 19
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 20
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 21
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 22
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 23
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 24
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 25
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v7, p0

    return-void
.end method

.method public g(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    .line 4
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->a()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected h()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v0}, Ls0;->p0()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Lr0;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lr0;->m()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Lr0;->n()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Lr0;->w()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, Lr0;->o()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_2

    .line 14
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 15
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->a()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 16
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 20
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 51

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget-object v9, Lq0$b;->f:Lq0$b;

    sget-object v10, Lq0$b;->e:Lq0$b;

    sget-object v11, Lr0$a;->c:Lr0$a;

    sget-object v12, Lr0$a;->b:Lr0$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 8
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3, v7}, Lr0;->k0(I)V

    .line 9
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3, v6}, Lr0;->l0(I)V

    .line 10
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {v3, v4}, Lr0;->V(I)V

    .line 11
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {v3, v4}, Lr0;->U(I)V

    .line 12
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v16, v11

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ls0;->D0(Z)V

    .line 13
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 14
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v19

    add-int v19, v19, v18

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v20

    add-int v20, v20, v18

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move/from16 v18, v15

    const/high16 v15, -0x80000000

    move/from16 v21, v14

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v3, v15, :cond_3

    if-eqz v3, :cond_2

    if-eq v3, v14, :cond_1

    move-object v3, v12

    goto :goto_1

    .line 20
    :cond_1
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, v3, v20

    move-object v3, v12

    goto :goto_2

    :cond_2
    move-object/from16 v3, v16

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v3, v16

    :goto_2
    if-eq v5, v15, :cond_6

    if-eqz v5, :cond_5

    if-eq v5, v14, :cond_4

    move-object v5, v12

    goto :goto_3

    .line 21
    :cond_4
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v5, v19

    move v11, v5

    move-object v5, v12

    goto :goto_4

    :cond_5
    move-object/from16 v5, v16

    :goto_3
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v5, v16

    .line 22
    :goto_4
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lr0;->X(I)V

    .line 23
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v14, v15}, Lr0;->W(I)V

    .line 24
    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v14, v3}, Lr0;->R(Lr0$a;)V

    .line 25
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3, v4}, Lr0;->h0(I)V

    .line 26
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3, v5}, Lr0;->d0(Lr0$a;)V

    .line 27
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3, v11}, Lr0;->N(I)V

    .line 28
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lr0;->X(I)V

    .line 29
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lr0;->W(I)V

    .line 30
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3}, Lr0;->w()I

    move-result v11

    .line 31
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3}, Lr0;->o()I

    move-result v14

    .line 32
    iget-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    .line 33
    iput-boolean v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_8

    .line 35
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 36
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->isLayoutRequested()Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_35

    .line 37
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 38
    sget-object v4, Lr0$a;->e:Lr0$a;

    sget-object v3, Lr0$a;->d:Lr0$a;

    sget-object v15, Lq0$b;->c:Lq0$b;

    sget-object v5, Lq0$b;->d:Lq0$b;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v29

    move/from16 v30, v13

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    move-object/from16 v31, v3

    if-eqz v29, :cond_a

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v13, :cond_a

    .line 40
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v32, v4

    .line 41
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v33, v5

    :try_start_1
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v34, v6

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v0, v6, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v5, 0x2f

    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    add-int/lit8 v5, v5, 0x1

    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    :cond_9
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v5

    invoke-virtual {v5, v4}, Lr0;->K(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_0
    move-object/from16 v33, v5

    :catch_1
    move/from16 v34, v6

    :catch_2
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v32

    move-object/from16 v5, v33

    move/from16 v6, v34

    goto :goto_7

    :cond_a
    move-object/from16 v32, v4

    move-object/from16 v33, v5

    move/from16 v34, v6

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v13, :cond_c

    .line 46
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 47
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(Landroid/view/View;)Lr0;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_a

    .line 48
    :cond_b
    invoke-virtual {v4}, Lr0;->E()V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 49
    :cond_c
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_f

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v13, :cond_f

    .line 50
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    if-ne v5, v6, :cond_e

    instance-of v5, v4, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v5, :cond_e

    .line 52
    check-cast v4, Landroidx/constraintlayout/widget/Constraints;

    .line 53
    iget-object v5, v4, Landroidx/constraintlayout/widget/Constraints;->b:Landroidx/constraintlayout/widget/a;

    if-nez v5, :cond_d

    .line 54
    new-instance v5, Landroidx/constraintlayout/widget/a;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/a;-><init>()V

    iput-object v5, v4, Landroidx/constraintlayout/widget/Constraints;->b:Landroidx/constraintlayout/widget/a;

    .line 55
    :cond_d
    iget-object v5, v4, Landroidx/constraintlayout/widget/Constraints;->b:Landroidx/constraintlayout/widget/a;

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/widget/a;->b(Landroidx/constraintlayout/widget/Constraints;)V

    .line 56
    iget-object v4, v4, Landroidx/constraintlayout/widget/Constraints;->b:Landroidx/constraintlayout/widget/a;

    .line 57
    iput-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/a;

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 58
    :cond_f
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Landroidx/constraintlayout/widget/a;

    if-eqz v3, :cond_10

    .line 59
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/a;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 60
    :cond_10
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3}, Lb1;->r0()V

    .line 61
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_11

    .line 62
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 63
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v13, :cond_13

    .line 64
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 65
    instance-of v5, v4, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_12

    .line 66
    check-cast v4, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/Placeholder;->d(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_13
    const/4 v6, 0x0

    :goto_e
    if-ge v6, v13, :cond_34

    .line 67
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 68
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(Landroid/view/View;)Lr0;

    move-result-object v5

    if-nez v5, :cond_14

    move/from16 v35, v6

    move/from16 v36, v7

    move/from16 v37, v8

    goto/16 :goto_10

    .line 69
    :cond_14
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 70
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()V

    if-eqz v29, :cond_15

    move/from16 v35, v6

    .line 71
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v36, v7

    :try_start_4
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    move/from16 v37, v8

    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v0, v8, v6, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v7, "id/"

    .line 73
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v7

    invoke-direct {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v7

    invoke-virtual {v7, v6}, Lr0;->K(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_f

    :catch_3
    nop

    goto :goto_f

    :cond_15
    move/from16 v35, v6

    :catch_4
    move/from16 v36, v7

    :catch_5
    move/from16 v37, v8

    .line 75
    :goto_f
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Lr0;->g0(I)V

    .line 76
    iget-boolean v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    if-eqz v6, :cond_16

    const/16 v6, 0x8

    .line 77
    invoke-virtual {v5, v6}, Lr0;->g0(I)V

    .line 78
    :cond_16
    invoke-virtual {v5, v3}, Lr0;->J(Ljava/lang/Object;)V

    .line 79
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3, v5}, Lb1;->o0(Lr0;)V

    .line 80
    iget-boolean v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v3, :cond_17

    iget-boolean v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-nez v3, :cond_18

    .line 81
    :cond_17
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_18
    iget-boolean v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v3, :cond_1b

    .line 83
    check-cast v5, Lu0;

    .line 84
    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 85
    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:I

    .line 86
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_19

    .line 87
    invoke-virtual {v5, v4}, Lu0;->q0(F)V

    goto :goto_10

    :cond_19
    const/4 v7, -0x1

    if-eq v3, v7, :cond_1a

    .line 88
    invoke-virtual {v5, v3}, Lu0;->o0(I)V

    goto :goto_10

    :cond_1a
    if-eq v6, v7, :cond_1c

    .line 89
    invoke-virtual {v5, v6}, Lu0;->p0(I)V

    goto :goto_10

    :cond_1b
    const/4 v7, -0x1

    .line 90
    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-ne v3, v7, :cond_1d

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v3, v7, :cond_1d

    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v3, v7, :cond_1c

    goto :goto_11

    :cond_1c
    :goto_10
    move-object v2, v12

    move/from16 v39, v13

    move-object/from16 v1, v31

    move-object/from16 v3, v33

    move/from16 v43, v37

    move/from16 v31, v11

    move-object/from16 v11, v32

    move/from16 v32, v14

    goto/16 :goto_1d

    .line 91
    :cond_1d
    :goto_11
    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:I

    .line 92
    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:I

    .line 93
    iget v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 94
    iget v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    move/from16 v38, v8

    .line 95
    iget v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    move/from16 v39, v13

    .line 96
    iget v13, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 97
    iget v2, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:F

    move/from16 v40, v7

    .line 98
    iget v7, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    const/4 v1, -0x1

    if-eq v7, v1, :cond_1f

    .line 99
    invoke-direct {v0, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 100
    iget v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    invoke-virtual {v5, v2, v3, v6}, Lr0;->e(Lr0;FI)V

    :cond_1e
    move-object/from16 v41, v12

    move-object/from16 v1, v31

    move-object/from16 v3, v33

    move/from16 v43, v37

    move/from16 v31, v11

    move-object/from16 v11, v32

    move/from16 v32, v14

    move-object v14, v4

    goto/16 :goto_18

    :cond_1f
    if-eq v3, v1, :cond_21

    .line 101
    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v24

    if-eqz v24, :cond_20

    .line 102
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v22, v5

    move-object/from16 v23, v15

    move-object/from16 v25, v15

    move/from16 v26, v1

    move/from16 v27, v8

    invoke-virtual/range {v22 .. v27}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    :cond_20
    move-object/from16 v17, v5

    move-object/from16 v41, v12

    move-object/from16 v1, v31

    move/from16 v43, v37

    move/from16 v12, v38

    move/from16 v42, v40

    const/4 v3, -0x1

    move/from16 v31, v11

    move-object/from16 v11, v32

    move/from16 v32, v14

    move-object v14, v4

    goto :goto_13

    :cond_21
    if-eq v6, v1, :cond_22

    .line 103
    invoke-direct {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 104
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v1, v31

    move-object v3, v5

    move/from16 v31, v11

    move-object/from16 v11, v32

    move/from16 v32, v14

    move-object v14, v4

    move-object v4, v15

    move-object/from16 v17, v5

    move-object/from16 v41, v12

    const/4 v12, -0x1

    move-object v5, v6

    move-object v6, v10

    move/from16 v42, v40

    move/from16 v43, v37

    move/from16 v12, v38

    invoke-virtual/range {v3 .. v8}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    goto :goto_12

    :cond_22
    move-object/from16 v17, v5

    move-object/from16 v41, v12

    move-object/from16 v1, v31

    move/from16 v43, v37

    move/from16 v12, v38

    move/from16 v42, v40

    move/from16 v31, v11

    move-object/from16 v11, v32

    move/from16 v32, v14

    move-object v14, v4

    :goto_12
    const/4 v3, -0x1

    :goto_13
    if-eq v12, v3, :cond_23

    .line 105
    invoke-direct {v0, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 106
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v3, v17

    move-object v4, v10

    move-object v6, v15

    move v8, v13

    invoke-virtual/range {v3 .. v8}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    goto :goto_14

    :cond_23
    move/from16 v3, v42

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    .line 107
    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 108
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move-object/from16 v3, v17

    move-object v4, v10

    move-object v6, v10

    move v8, v13

    invoke-virtual/range {v3 .. v8}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    .line 109
    :cond_24
    :goto_14
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_25

    .line 110
    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v24

    if-eqz v24, :cond_26

    .line 111
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object/from16 v22, v17

    move-object/from16 v23, v33

    move-object/from16 v25, v33

    move/from16 v26, v3

    move/from16 v27, v4

    invoke-virtual/range {v22 .. v27}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    goto :goto_15

    .line 112
    :cond_25
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_26

    .line 113
    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v5

    if-eqz v5, :cond_26

    .line 114
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    move-object/from16 v3, v17

    move-object/from16 v4, v33

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    .line 115
    :cond_26
    :goto_15
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_27

    .line 116
    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 117
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object/from16 v3, v17

    move-object v4, v9

    move-object/from16 v6, v33

    invoke-virtual/range {v3 .. v8}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    goto :goto_16

    .line 118
    :cond_27
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 119
    invoke-direct {v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 120
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    move-object/from16 v3, v17

    move-object v4, v9

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lr0;->z(Lq0$b;Lr0;Lq0$b;II)V

    .line 121
    :cond_28
    :goto_16
    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 122
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 123
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    invoke-direct {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(I)Lr0;

    move-result-object v4

    if-eqz v4, :cond_29

    if-eqz v3, :cond_29

    .line 124
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v5, :cond_29

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v5, 0x1

    .line 126
    iput-boolean v5, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 127
    iput-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 128
    sget-object v3, Lq0$b;->g:Lq0$b;

    move-object/from16 v5, v17

    invoke-virtual {v5, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v44

    .line 129
    invoke-virtual {v4, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v45

    const/16 v46, 0x0

    const/16 v47, -0x1

    .line 130
    sget-object v48, Lq0$a;->c:Lq0$a;

    const/16 v49, 0x0

    const/16 v50, 0x1

    invoke-virtual/range {v44 .. v50}, Lq0;->a(Lq0;IILq0$a;IZ)Z

    move-object/from16 v3, v33

    .line 131
    invoke-virtual {v5, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v4

    invoke-virtual {v4}, Lq0;->i()V

    .line 132
    invoke-virtual {v5, v9}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v4

    invoke-virtual {v4}, Lq0;->i()V

    goto :goto_17

    :cond_29
    move-object/from16 v5, v17

    move-object/from16 v3, v33

    :goto_17
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-ltz v7, :cond_2a

    cmpl-float v7, v2, v4

    if-eqz v7, :cond_2a

    .line 133
    invoke-virtual {v5, v2}, Lr0;->O(F)V

    .line 134
    :cond_2a
    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_2b

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2b

    .line 135
    invoke-virtual {v5, v2}, Lr0;->a0(F)V

    :cond_2b
    :goto_18
    if-eqz v29, :cond_2d

    .line 136
    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2c

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    if-eq v6, v4, :cond_2e

    .line 137
    :cond_2c
    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    invoke-virtual {v5, v2, v6}, Lr0;->Z(II)V

    goto :goto_19

    :cond_2d
    const/4 v4, -0x1

    .line 138
    :cond_2e
    :goto_19
    iget-boolean v2, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-nez v2, :cond_30

    .line 139
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v4, :cond_2f

    .line 140
    invoke-virtual {v5, v11}, Lr0;->R(Lr0$a;)V

    .line 141
    invoke-virtual {v5, v15}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v2

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Lq0;->e:I

    .line 142
    invoke-virtual {v5, v10}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v2

    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v4, v2, Lq0;->e:I

    goto :goto_1a

    .line 143
    :cond_2f
    invoke-virtual {v5, v1}, Lr0;->R(Lr0$a;)V

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v5, v2}, Lr0;->h0(I)V

    :goto_1a
    move-object/from16 v2, v41

    goto :goto_1b

    :cond_30
    move-object/from16 v2, v41

    .line 145
    invoke-virtual {v5, v2}, Lr0;->R(Lr0$a;)V

    .line 146
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v5, v4}, Lr0;->h0(I)V

    .line 147
    :goto_1b
    iget-boolean v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v4, :cond_32

    .line 148
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_31

    .line 149
    invoke-virtual {v5, v11}, Lr0;->d0(Lr0$a;)V

    .line 150
    invoke-virtual {v5, v3}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v4

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v6, v4, Lq0;->e:I

    .line 151
    invoke-virtual {v5, v9}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v4

    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v6, v4, Lq0;->e:I

    goto :goto_1c

    .line 152
    :cond_31
    invoke-virtual {v5, v1}, Lr0;->d0(Lr0$a;)V

    const/4 v4, 0x0

    .line 153
    invoke-virtual {v5, v4}, Lr0;->N(I)V

    goto :goto_1c

    .line 154
    :cond_32
    invoke-virtual {v5, v2}, Lr0;->d0(Lr0$a;)V

    .line 155
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v5, v4}, Lr0;->N(I)V

    .line 156
    :goto_1c
    iget-object v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    if-eqz v4, :cond_33

    .line 157
    invoke-virtual {v5, v4}, Lr0;->L(Ljava/lang/String;)V

    .line 158
    :cond_33
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    invoke-virtual {v5, v4}, Lr0;->T(F)V

    .line 159
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    invoke-virtual {v5, v4}, Lr0;->f0(F)V

    .line 160
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    invoke-virtual {v5, v4}, Lr0;->P(I)V

    .line 161
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    invoke-virtual {v5, v4}, Lr0;->b0(I)V

    .line 162
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    invoke-virtual {v5, v4, v6, v7, v8}, Lr0;->S(IIIF)V

    .line 163
    iget v4, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    iget v8, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    invoke-virtual {v5, v4, v6, v7, v8}, Lr0;->e0(IIIF)V

    :goto_1d
    add-int/lit8 v6, v35, 0x1

    move-object v12, v2

    move-object/from16 v33, v3

    move/from16 v14, v32

    move/from16 v7, v36

    move/from16 v13, v39

    move/from16 v8, v43

    move/from16 v2, p2

    move-object/from16 v32, v11

    move/from16 v11, v31

    move-object/from16 v31, v1

    move/from16 v1, p1

    goto/16 :goto_e

    :cond_34
    move/from16 v36, v7

    move/from16 v43, v8

    move/from16 v31, v11

    move-object v2, v12

    goto :goto_1e

    :cond_35
    move/from16 v34, v6

    move/from16 v36, v7

    move/from16 v43, v8

    move/from16 v31, v11

    move-object v2, v12

    move/from16 v30, v13

    :goto_1e
    move/from16 v32, v14

    const/4 v5, 0x1

    goto :goto_1f

    :cond_36
    move/from16 v34, v6

    move/from16 v36, v7

    move/from16 v43, v8

    move/from16 v31, v11

    move-object v2, v12

    move/from16 v30, v13

    move/from16 v32, v14

    const/4 v5, 0x0

    .line 164
    :goto_1f
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_37

    const/4 v1, 0x1

    goto :goto_20

    :cond_37
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_38

    .line 165
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v4}, Ls0;->A0()V

    .line 166
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    move/from16 v6, v31

    move/from16 v7, v32

    invoke-virtual {v4, v6, v7}, Ls0;->y0(II)V

    .line 167
    invoke-direct/range {p0 .. p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(II)V

    goto/16 :goto_2c

    :cond_38
    move/from16 v6, v31

    move/from16 v7, v32

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v4

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v11

    add-int/2addr v11, v4

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v12, 0x0

    :goto_21
    if-ge v12, v4, :cond_4a

    .line 171
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 172
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_39

    goto/16 :goto_2a

    .line 173
    :cond_39
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 174
    iget-object v15, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Lr0;

    .line 175
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-nez v3, :cond_48

    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v3, :cond_3a

    goto/16 :goto_2a

    .line 176
    :cond_3a
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v15, v3}, Lr0;->g0(I)V

    .line 177
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v22, v4

    .line 178
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v32, v7

    .line 179
    iget-boolean v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    move/from16 v31, v6

    if-nez v7, :cond_3d

    iget-boolean v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v6, :cond_3d

    if-nez v7, :cond_3b

    iget v7, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    move-object/from16 v23, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3e

    goto :goto_22

    :cond_3b
    move-object/from16 v23, v9

    const/4 v9, 0x1

    :goto_22
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3e

    if-nez v6, :cond_3c

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    if-eq v6, v9, :cond_3e

    if-ne v4, v7, :cond_3c

    goto :goto_23

    :cond_3c
    const/4 v6, 0x0

    goto :goto_24

    :cond_3d
    move-object/from16 v23, v9

    :cond_3e
    :goto_23
    const/4 v6, 0x1

    :goto_24
    if-eqz v6, :cond_45

    if-nez v3, :cond_3f

    move/from16 v6, p1

    const/4 v7, -0x2

    .line 180
    invoke-static {v6, v11, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    const/4 v9, -0x1

    const/16 v24, 0x1

    goto :goto_26

    :cond_3f
    move/from16 v6, p1

    const/4 v7, -0x2

    const/4 v9, -0x1

    if-ne v3, v9, :cond_40

    .line 181
    invoke-static {v6, v11, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    const/16 v24, 0x0

    goto :goto_26

    :cond_40
    if-ne v3, v7, :cond_41

    const/16 v17, 0x1

    goto :goto_25

    :cond_41
    const/16 v17, 0x0

    .line 182
    :goto_25
    invoke-static {v6, v11, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    move/from16 v24, v17

    :goto_26
    if-nez v4, :cond_42

    move/from16 v9, p2

    .line 183
    invoke-static {v9, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    const/4 v7, 0x1

    goto :goto_28

    :cond_42
    move/from16 v9, p2

    const/4 v7, -0x1

    if-ne v4, v7, :cond_43

    .line 184
    invoke-static {v9, v8, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    const/4 v7, 0x0

    goto :goto_28

    :cond_43
    const/4 v7, -0x2

    if-ne v4, v7, :cond_44

    const/4 v7, 0x1

    goto :goto_27

    :cond_44
    const/4 v7, 0x0

    .line 185
    :goto_27
    invoke-static {v9, v8, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    .line 186
    :goto_28
    invoke-virtual {v13, v3, v4}, Landroid/view/View;->measure(II)V

    .line 187
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 188
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_29

    :cond_45
    move/from16 v6, p1

    move/from16 v9, p2

    const/4 v7, 0x0

    const/16 v24, 0x0

    .line 189
    :goto_29
    invoke-virtual {v15, v3}, Lr0;->h0(I)V

    .line 190
    invoke-virtual {v15, v4}, Lr0;->N(I)V

    if-eqz v24, :cond_46

    .line 191
    invoke-virtual {v15, v3}, Lr0;->j0(I)V

    :cond_46
    if-eqz v7, :cond_47

    .line 192
    invoke-virtual {v15, v4}, Lr0;->i0(I)V

    .line 193
    :cond_47
    iget-boolean v3, v14, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v3, :cond_49

    .line 194
    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_49

    .line 195
    invoke-virtual {v15, v3}, Lr0;->I(I)V

    goto :goto_2b

    :cond_48
    :goto_2a
    move/from16 v22, v4

    move/from16 v31, v6

    move/from16 v32, v7

    move-object/from16 v23, v9

    move/from16 v6, p1

    move/from16 v9, p2

    :cond_49
    :goto_2b
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v22

    move-object/from16 v9, v23

    move/from16 v6, v31

    move/from16 v7, v32

    goto/16 :goto_21

    :cond_4a
    move/from16 v31, v6

    move/from16 v32, v7

    :goto_2c
    move-object/from16 v23, v9

    move/from16 v6, p1

    move/from16 v9, p2

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_4c

    .line 197
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 198
    instance-of v8, v7, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v8, :cond_4b

    .line 199
    check-cast v7, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Placeholder;->c()V

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 200
    :cond_4c
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4d

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v3, :cond_4d

    .line 201
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 202
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->f()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 203
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4e

    if-eqz v5, :cond_4e

    .line 204
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-static {v3}, Ln0;->c(Ls0;)V

    .line 205
    :cond_4e
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget-boolean v4, v3, Ls0;->r0:Z

    if-eqz v4, :cond_54

    .line 206
    iget-boolean v4, v3, Ls0;->s0:Z

    if-eqz v4, :cond_51

    move/from16 v4, v30

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_50

    .line 207
    iget v5, v3, Ls0;->u0:I

    move/from16 v7, v21

    if-ge v5, v7, :cond_4f

    .line 208
    invoke-virtual {v3, v5}, Lr0;->h0(I)V

    .line 209
    :cond_4f
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    .line 210
    invoke-virtual {v3, v2}, Lr0;->R(Lr0$a;)V

    goto :goto_2f

    :cond_50
    move/from16 v7, v21

    goto :goto_2f

    :cond_51
    move/from16 v7, v21

    move/from16 v4, v30

    .line 211
    :goto_2f
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget-boolean v5, v3, Ls0;->t0:Z

    if-eqz v5, :cond_53

    move/from16 v5, v18

    const/high16 v8, -0x80000000

    if-ne v5, v8, :cond_55

    .line 212
    iget v8, v3, Ls0;->v0:I

    move/from16 v11, v43

    if-ge v8, v11, :cond_52

    .line 213
    invoke-virtual {v3, v8}, Lr0;->N(I)V

    .line 214
    :cond_52
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    .line 215
    invoke-virtual {v3, v2}, Lr0;->d0(Lr0$a;)V

    goto :goto_31

    :cond_53
    move/from16 v5, v18

    goto :goto_30

    :cond_54
    move/from16 v5, v18

    move/from16 v7, v21

    move/from16 v4, v30

    :cond_55
    :goto_30
    move/from16 v11, v43

    .line 216
    :goto_31
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5b

    .line 217
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v2}, Lr0;->w()I

    move-result v2

    .line 218
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3}, Lr0;->o()I

    move-result v3

    .line 219
    iget v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    if-eq v8, v2, :cond_56

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v4, v8, :cond_57

    .line 220
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget-object v4, v4, Ls0;->q0:Ljava/util/List;

    const/4 v12, 0x0

    invoke-static {v4, v12, v2}, Ln0;->h(Ljava/util/List;II)V

    goto :goto_32

    :cond_56
    const/high16 v8, 0x40000000    # 2.0f

    .line 221
    :cond_57
    :goto_32
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    if-eq v2, v3, :cond_58

    if-ne v5, v8, :cond_58

    .line 222
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget-object v2, v2, Ls0;->q0:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Ln0;->h(Ljava/util/List;II)V

    .line 223
    :cond_58
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget-boolean v3, v2, Ls0;->s0:Z

    if-eqz v3, :cond_59

    iget v3, v2, Ls0;->u0:I

    if-le v3, v7, :cond_59

    .line 224
    iget-object v2, v2, Ls0;->q0:Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v2, v15, v7}, Ln0;->h(Ljava/util/List;II)V

    goto :goto_33

    :cond_59
    const/4 v15, 0x0

    .line 225
    :goto_33
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    iget-boolean v3, v2, Ls0;->t0:Z

    if-eqz v3, :cond_5a

    iget v3, v2, Ls0;->v0:I

    if-le v3, v11, :cond_5a

    .line 226
    iget-object v2, v2, Ls0;->q0:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v2, v3, v11}, Ln0;->h(Ljava/util/List;II)V

    goto :goto_34

    :cond_5a
    const/4 v3, 0x1

    goto :goto_34

    :cond_5b
    const/4 v3, 0x1

    const/4 v15, 0x0

    .line 227
    :goto_34
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5c

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->h()V

    .line 229
    :cond_5c
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int v4, v4, v34

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int v5, v5, v36

    if-lez v2, :cond_78

    .line 232
    iget-object v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v7}, Lr0;->p()Lr0$a;

    move-result-object v7

    move-object/from16 v8, v16

    if-ne v7, v8, :cond_5d

    const/4 v7, 0x1

    goto :goto_35

    :cond_5d
    const/4 v7, 0x0

    .line 233
    :goto_35
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v11}, Lr0;->u()Lr0$a;

    move-result-object v11

    if-ne v11, v8, :cond_5e

    const/4 v8, 0x1

    goto :goto_36

    :cond_5e
    const/4 v8, 0x0

    .line 234
    :goto_36
    iget-object v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v11}, Lr0;->w()I

    move-result v11

    iget v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 235
    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v12}, Lr0;->o()I

    move-result v12

    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v13, v12

    const/4 v3, 0x0

    const/4 v14, 0x0

    move v12, v11

    const/4 v11, 0x0

    :goto_37
    if-ge v14, v2, :cond_6e

    .line 236
    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr0;

    .line 237
    invoke-virtual {v15}, Lr0;->j()Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_5f

    move/from16 v16, v11

    goto/16 :goto_3e

    .line 238
    :cond_5f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move/from16 v16, v11

    .line 239
    iget-boolean v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-nez v11, :cond_6d

    iget-boolean v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    if-eqz v11, :cond_60

    goto/16 :goto_3e

    .line 240
    :cond_60
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v20, v14

    const/16 v14, 0x8

    if-ne v11, v14, :cond_61

    :goto_38
    goto/16 :goto_3f

    :cond_61
    if-eqz v1, :cond_62

    .line 241
    invoke-virtual {v15}, Lr0;->s()Ly0;

    move-result-object v11

    invoke-virtual {v11}, Lz0;->c()Z

    move-result v11

    if-eqz v11, :cond_62

    .line 242
    invoke-virtual {v15}, Lr0;->r()Ly0;

    move-result-object v11

    invoke-virtual {v11}, Lz0;->c()Z

    move-result v11

    if-eqz v11, :cond_62

    goto :goto_38

    .line 243
    :cond_62
    iget v11, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v14, -0x2

    if-ne v11, v14, :cond_63

    iget-boolean v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Z

    if-eqz v14, :cond_63

    .line 244
    invoke-static {v6, v5, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v11

    goto :goto_39

    .line 245
    :cond_63
    invoke-virtual {v15}, Lr0;->w()I

    move-result v11

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 246
    :goto_39
    iget v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v6, -0x2

    if-ne v14, v6, :cond_64

    iget-boolean v6, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-eqz v6, :cond_64

    .line 247
    invoke-static {v9, v4, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    goto :goto_3a

    .line 248
    :cond_64
    invoke-virtual {v15}, Lr0;->o()I

    move-result v6

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v6, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 249
    :goto_3a
    invoke-virtual {v2, v11, v6}, Landroid/view/View;->measure(II)V

    .line 250
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 251
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 252
    invoke-virtual {v15}, Lr0;->w()I

    move-result v14

    if-eq v6, v14, :cond_67

    .line 253
    invoke-virtual {v15, v6}, Lr0;->h0(I)V

    if-eqz v1, :cond_65

    .line 254
    invoke-virtual {v15}, Lr0;->s()Ly0;

    move-result-object v14

    invoke-virtual {v14, v6}, Ly0;->f(I)V

    :cond_65
    if-eqz v7, :cond_66

    .line 255
    invoke-virtual {v15}, Lr0;->t()I

    move-result v6

    if-le v6, v12, :cond_66

    .line 256
    invoke-virtual {v15}, Lr0;->t()I

    move-result v6

    .line 257
    invoke-virtual {v15, v10}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v14

    invoke-virtual {v14}, Lq0;->c()I

    move-result v14

    add-int/2addr v14, v6

    .line 258
    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_66
    const/16 v16, 0x1

    .line 259
    :cond_67
    invoke-virtual {v15}, Lr0;->o()I

    move-result v6

    if-eq v11, v6, :cond_6a

    .line 260
    invoke-virtual {v15, v11}, Lr0;->N(I)V

    if-eqz v1, :cond_68

    .line 261
    invoke-virtual {v15}, Lr0;->r()Ly0;

    move-result-object v6

    invoke-virtual {v6, v11}, Ly0;->f(I)V

    :cond_68
    if-eqz v8, :cond_69

    .line 262
    invoke-virtual {v15}, Lr0;->i()I

    move-result v6

    if-le v6, v13, :cond_69

    .line 263
    invoke-virtual {v15}, Lr0;->i()I

    move-result v6

    move-object/from16 v11, v23

    .line 264
    invoke-virtual {v15, v11}, Lr0;->g(Lq0$b;)Lq0;

    move-result-object v14

    invoke-virtual {v14}, Lq0;->c()I

    move-result v14

    add-int/2addr v14, v6

    .line 265
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v13, v6

    goto :goto_3b

    :cond_69
    move-object/from16 v11, v23

    :goto_3b
    const/16 v16, 0x1

    goto :goto_3c

    :cond_6a
    move-object/from16 v11, v23

    .line 266
    :goto_3c
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-eqz v0, :cond_6b

    .line 267
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_6c

    .line 268
    invoke-virtual {v15}, Lr0;->h()I

    move-result v14

    if-eq v0, v14, :cond_6c

    .line 269
    invoke-virtual {v15, v0}, Lr0;->I(I)V

    const/16 v16, 0x1

    goto :goto_3d

    :cond_6b
    const/4 v6, -0x1

    .line 270
    :cond_6c
    :goto_3d
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v3, v0}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v0

    move v3, v0

    goto :goto_40

    :cond_6d
    :goto_3e
    move/from16 v20, v14

    :goto_3f
    move-object/from16 v11, v23

    const/4 v6, -0x1

    :goto_40
    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v23, v11

    move/from16 v11, v16

    move/from16 v2, v18

    const/4 v15, 0x0

    goto/16 :goto_37

    :cond_6e
    move/from16 v18, v2

    move/from16 v16, v11

    move-object/from16 v0, p0

    if-eqz v16, :cond_72

    .line 271
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    move/from16 v6, v31

    invoke-virtual {v2, v6}, Lr0;->h0(I)V

    .line 272
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    move/from16 v6, v32

    invoke-virtual {v2, v6}, Lr0;->N(I)V

    if-eqz v1, :cond_6f

    .line 273
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v1}, Ls0;->E0()V

    .line 274
    :cond_6f
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->h()V

    .line 275
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v1}, Lr0;->w()I

    move-result v1

    if-ge v1, v12, :cond_70

    .line 276
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v1, v12}, Lr0;->h0(I)V

    const/4 v1, 0x1

    goto :goto_41

    :cond_70
    const/4 v1, 0x0

    .line 277
    :goto_41
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v2}, Lr0;->o()I

    move-result v2

    if-ge v2, v13, :cond_71

    .line 278
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v1, v13}, Lr0;->N(I)V

    const/16 v28, 0x1

    goto :goto_42

    :cond_71
    move/from16 v28, v1

    :goto_42
    if-eqz v28, :cond_72

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->h()V

    :cond_72
    move/from16 v1, v18

    const/4 v11, 0x0

    :goto_43
    if-ge v11, v1, :cond_77

    .line 280
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0;

    .line 281
    invoke-virtual {v2}, Lr0;->j()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_75

    :cond_73
    const/16 v8, 0x8

    :cond_74
    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_44

    .line 282
    :cond_75
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v2}, Lr0;->w()I

    move-result v8

    if-ne v7, v8, :cond_76

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2}, Lr0;->o()I

    move-result v8

    if-eq v7, v8, :cond_73

    .line 283
    :cond_76
    invoke-virtual {v2}, Lr0;->v()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_74

    .line 284
    invoke-virtual {v2}, Lr0;->w()I

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 285
    invoke-virtual {v2}, Lr0;->o()I

    move-result v2

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 286
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->measure(II)V

    :goto_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_43

    :cond_77
    move v11, v3

    goto :goto_45

    :cond_78
    const/4 v11, 0x0

    .line 287
    :goto_45
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v1}, Lr0;->w()I

    move-result v1

    add-int/2addr v1, v5

    .line 288
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v2}, Lr0;->o()I

    move-result v2

    add-int/2addr v2, v4

    move/from16 v3, p1

    .line 289
    invoke-static {v1, v3, v11}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v3, v11, 0x10

    .line 290
    invoke-static {v2, v9, v3}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    .line 291
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 292
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 293
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3}, Ls0;->w0()Z

    move-result v3

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_79

    or-int/2addr v1, v4

    .line 294
    :cond_79
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v3}, Ls0;->v0()Z

    move-result v3

    if-eqz v3, :cond_7a

    or-int/2addr v2, v4

    .line 295
    :cond_7a
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 296
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 297
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(Landroid/view/View;)Lr0;

    move-result-object v0

    .line 3
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    instance-of v0, v0, Lu0;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 6
    new-instance v1, Lu0;

    invoke-direct {v1}, Lu0;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:Lr0;

    .line 7
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 8
    check-cast v1, Lu0;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    invoke-virtual {v1, v0}, Lu0;->r0(I)V

    .line 9
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->h()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 13
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(Landroid/view/View;)Lr0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Ls0;

    invoke-virtual {v1, v0}, Lb1;->q0(Lr0;)V

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
