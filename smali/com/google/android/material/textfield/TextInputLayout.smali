.class public Lcom/google/android/material/textfield/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/TextInputLayout$d;,
        Lcom/google/android/material/textfield/TextInputLayout$SavedState;,
        Lcom/google/android/material/textfield/TextInputLayout$f;,
        Lcom/google/android/material/textfield/TextInputLayout$e;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private final C:Landroid/graphics/Rect;

.field private final D:Landroid/graphics/Rect;

.field private final E:Landroid/graphics/RectF;

.field private final F:Lcom/google/android/material/internal/CheckableImageButton;

.field private G:Landroid/content/res/ColorStateList;

.field private H:Z

.field private I:Landroid/graphics/PorterDuff$Mode;

.field private J:Z

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Landroid/view/View$OnLongClickListener;

.field private final M:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$e;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private final O:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/textfield/n;",
            ">;"
        }
    .end annotation
.end field

.field private final P:Lcom/google/android/material/internal/CheckableImageButton;

.field private final Q:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private R:Landroid/content/res/ColorStateList;

.field private S:Z

.field private T:Landroid/graphics/PorterDuff$Mode;

.field private U:Z

.field private V:Landroid/graphics/drawable/Drawable;

.field private W:Landroid/graphics/drawable/Drawable;

.field private final a0:Lcom/google/android/material/internal/CheckableImageButton;

.field private final b:Landroid/widget/FrameLayout;

.field private b0:Landroid/view/View$OnLongClickListener;

.field private final c:Landroid/widget/FrameLayout;

.field private c0:Landroid/content/res/ColorStateList;

.field d:Landroid/widget/EditText;

.field private d0:Landroid/content/res/ColorStateList;

.field private e:Ljava/lang/CharSequence;

.field private final e0:I

.field private final f:Lcom/google/android/material/textfield/o;

.field private final f0:I

.field g:Z

.field private g0:I

.field private h:I

.field private h0:I

.field private i:Z

.field private final i0:I

.field private j:Landroid/widget/TextView;

.field private final j0:I

.field private k:I

.field private final k0:I

.field private l:I

.field private l0:Z

.field private m:Landroid/content/res/ColorStateList;

.field final m0:Lcom/google/android/material/internal/a;

.field private n:Landroid/content/res/ColorStateList;

.field private n0:Z

.field private o:Z

.field private o0:Landroid/animation/ValueAnimator;

.field private p:Ljava/lang/CharSequence;

.field private p0:Z

.field private q:Z

.field private q0:Z

.field private r:Lmy;

.field private s:Lmy;

.field private t:Lqy;

.field private final u:I

.field private v:I

.field private final w:I

.field private x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0302ef

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v9, 0x7f0f0257

    move-object/from16 v1, p1

    .line 2
    invoke-static {v1, v7, v8, v9}, Lcom/google/android/material/internal/i;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v10, Lcom/google/android/material/textfield/o;

    invoke-direct {v10, v0}, Lcom/google/android/material/textfield/o;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v10, v0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/graphics/Rect;

    .line 6
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/graphics/RectF;

    .line 7
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->M:Ljava/util/LinkedHashSet;

    const/4 v11, 0x0

    .line 8
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 9
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/google/android/material/textfield/TextInputLayout;->O:Landroid/util/SparseArray;

    .line 10
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Ljava/util/LinkedHashSet;

    .line 11
    new-instance v13, Lcom/google/android/material/internal/a;

    invoke-direct {v13, v0}, Lcom/google/android/material/internal/a;-><init>(Landroid/view/View;)V

    iput-object v13, v0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    .line 13
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 15
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setAddStatesFromChildren(Z)V

    .line 16
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {v6, v15}, Landroid/widget/FrameLayout;->setAddStatesFromChildren(Z)V

    .line 18
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v14}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/FrameLayout;

    .line 20
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const v3, 0x800015

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 22
    sget-object v1, Ljx;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v13, v1}, Lcom/google/android/material/internal/a;->J(Landroid/animation/TimeInterpolator;)V

    .line 23
    invoke-virtual {v13, v1}, Lcom/google/android/material/internal/a;->G(Landroid/animation/TimeInterpolator;)V

    const v1, 0x800033

    .line 24
    invoke-virtual {v13, v1}, Lcom/google/android/material/internal/a;->v(I)V

    .line 25
    sget-object v3, Lcom/google/android/material/R$styleable;->J:[I

    const/4 v4, 0x5

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    const v16, 0x7f0f0257

    move-object v1, v14

    move-object/from16 v17, v2

    move-object/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v18, v5

    move/from16 v5, v16

    move-object/from16 v19, v6

    move-object/from16 v6, v17

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/i;->g(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/i0;

    move-result-object v1

    const/16 v2, 0x23

    .line 27
    invoke-virtual {v1, v2, v15}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    .line 28
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->I(Ljava/lang/CharSequence;)V

    const/16 v2, 0x22

    .line 29
    invoke-virtual {v1, v2, v15}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z

    .line 30
    new-instance v2, Lgy;

    int-to-float v3, v11

    invoke-direct {v2, v3}, Lgy;-><init>(F)V

    invoke-static {v14, v7, v8, v9, v2}, Lqy;->c(Landroid/content/Context;Landroid/util/AttributeSet;IILiy;)Lqy$b;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lqy$b;->m()Lqy;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lqy;

    .line 32
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06032a

    .line 33
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->u:I

    const/4 v2, 0x4

    .line 34
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/i0;->e(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    .line 35
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06032b

    .line 36
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/16 v3, 0xa

    .line 37
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    .line 38
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06032c

    .line 39
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0xb

    .line 40
    invoke-virtual {v1, v4, v3}, Landroidx/appcompat/widget/i0;->f(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    .line 41
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    const/16 v2, 0x8

    const/high16 v3, -0x40800000    # -1.0f

    .line 42
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->d(IF)F

    move-result v4

    const/4 v5, 0x7

    .line 43
    invoke-virtual {v1, v5, v3}, Landroidx/appcompat/widget/i0;->d(IF)F

    move-result v5

    const/4 v6, 0x5

    .line 44
    invoke-virtual {v1, v6, v3}, Landroidx/appcompat/widget/i0;->d(IF)F

    move-result v6

    const/4 v7, 0x6

    .line 45
    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/widget/i0;->d(IF)F

    move-result v3

    .line 46
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lqy;

    .line 47
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v8, Lqy$b;

    invoke-direct {v8, v7}, Lqy$b;-><init>(Lqy;)V

    const/4 v7, 0x0

    cmpl-float v9, v4, v7

    if-ltz v9, :cond_0

    .line 49
    invoke-virtual {v8, v4}, Lqy$b;->x(F)Lqy$b;

    :cond_0
    cmpl-float v4, v5, v7

    if-ltz v4, :cond_1

    .line 50
    invoke-virtual {v8, v5}, Lqy$b;->A(F)Lqy$b;

    :cond_1
    cmpl-float v4, v6, v7

    if-ltz v4, :cond_2

    .line 51
    invoke-virtual {v8, v6}, Lqy$b;->t(F)Lqy$b;

    :cond_2
    cmpl-float v4, v3, v7

    if-ltz v4, :cond_3

    .line 52
    invoke-virtual {v8, v3}, Lqy$b;->q(F)Lqy$b;

    .line 53
    :cond_3
    invoke-virtual {v8}, Lqy$b;->m()Lqy;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lqy;

    const/4 v3, 0x2

    .line 54
    invoke-static {v14, v1, v3}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const v5, 0x1010367

    const v6, -0x101009e

    const/4 v7, -0x1

    if-eqz v4, :cond_5

    .line 55
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:I

    .line 56
    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 57
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_4

    new-array v8, v15, [I

    aput v6, v8, v11

    .line 58
    invoke-virtual {v4, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:I

    new-array v8, v15, [I

    aput v5, v8, v11

    .line 59
    invoke-virtual {v4, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    goto :goto_0

    :cond_4
    const v4, 0x7f0500ec

    .line 60
    invoke-static {v14, v4}, Ld;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-array v8, v15, [I

    aput v6, v8, v11

    .line 61
    invoke-virtual {v4, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v8

    iput v8, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:I

    new-array v8, v15, [I

    aput v5, v8, v11

    .line 62
    invoke-virtual {v4, v8, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    goto :goto_0

    .line 63
    :cond_5
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 64
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->h0:I

    .line 65
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->i0:I

    .line 66
    iput v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    .line 67
    :goto_0
    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 68
    invoke-virtual {v1, v11}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/content/res/ColorStateList;

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/content/res/ColorStateList;

    :cond_6
    const/16 v4, 0x9

    .line 69
    invoke-static {v14, v1, v4}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 70
    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 71
    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    new-array v4, v15, [I

    aput v6, v4, v11

    .line 72
    invoke-virtual {v8, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    new-array v4, v15, [I

    aput v5, v4, v11

    .line 73
    invoke-virtual {v8, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->f0:I

    new-array v4, v15, [I

    const v5, 0x101009c

    aput v5, v4, v11

    .line 74
    invoke-virtual {v8, v4, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    goto :goto_1

    .line 75
    :cond_7
    invoke-virtual {v1, v4, v11}, Landroidx/appcompat/widget/i0;->b(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    const v4, 0x7f0500fe

    .line 76
    invoke-static {v14, v4}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    const v4, 0x7f0500ff

    .line 77
    invoke-static {v14, v4}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    const v4, 0x7f050102

    .line 78
    invoke-static {v14, v4}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->f0:I

    :goto_1
    const/16 v4, 0x24

    .line 79
    invoke-virtual {v1, v4, v7}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v5

    if-eq v5, v7, :cond_8

    .line 80
    invoke-virtual {v1, v4, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v4

    .line 81
    invoke-virtual {v13, v4}, Lcom/google/android/material/internal/a;->t(I)V

    .line 82
    invoke-virtual {v13}, Lcom/google/android/material/internal/a;->h()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/content/res/ColorStateList;

    .line 83
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v4, :cond_8

    .line 84
    invoke-direct {v0, v11, v11}, Lcom/google/android/material/textfield/TextInputLayout;->T(ZZ)V

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->R()V

    :cond_8
    const/16 v4, 0x1c

    .line 86
    invoke-virtual {v1, v4, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v4

    const/16 v5, 0x18

    .line 87
    invoke-virtual {v1, v5, v11}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v5

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f0b0041

    move-object/from16 v9, v19

    .line 89
    invoke-virtual {v6, v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v6, v0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Lcom/google/android/material/internal/CheckableImageButton;

    .line 90
    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v8, 0x19

    .line 92
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 93
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/textfield/TextInputLayout;->G(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    const/16 v8, 0x1a

    .line 94
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 95
    invoke-static {v14, v1, v8}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 96
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-eqz v16, :cond_a

    .line 97
    invoke-static/range {v16 .. v16}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 98
    invoke-static {v15, v8}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_a
    move-object/from16 v15, v16

    .line 99
    :goto_2
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eq v8, v15, :cond_b

    .line 100
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    const/16 v8, 0x1b

    .line 101
    invoke-virtual {v1, v8}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v15

    const/4 v2, 0x0

    if-eqz v15, :cond_d

    .line 102
    invoke-virtual {v1, v8, v7}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v8

    .line 103
    invoke-static {v8, v2}, Lcom/google/android/material/internal/j;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    .line 104
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 105
    invoke-static {v15}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 106
    invoke-static {v15, v8}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 107
    :cond_c
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eq v8, v15, :cond_d

    .line 108
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v15, 0x7f0e0060

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 110
    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    sget v8, Lc3;->g:I

    .line 112
    invoke-virtual {v6, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 113
    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 114
    invoke-virtual {v6, v11}, Lcom/google/android/material/internal/CheckableImageButton;->k(Z)V

    .line 115
    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const/16 v6, 0x20

    .line 116
    invoke-virtual {v1, v6, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v6

    const/16 v8, 0x1f

    .line 117
    invoke-virtual {v1, v8, v11}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v8

    const/16 v15, 0x1e

    .line 118
    invoke-virtual {v1, v15}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v3, 0xc

    .line 119
    invoke-virtual {v1, v3, v11}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v3

    const/16 v2, 0xd

    .line 120
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    .line 121
    iget v11, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    if-eq v11, v2, :cond_f

    if-lez v2, :cond_e

    .line 122
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    goto :goto_3

    .line 123
    :cond_e
    iput v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    .line 124
    :goto_3
    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Z

    if-eqz v2, :cond_f

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->M()V

    :cond_f
    const/16 v2, 0x10

    const/4 v11, 0x0

    .line 126
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    const/16 v2, 0xe

    .line 127
    invoke-virtual {v1, v2, v11}, Landroidx/appcompat/widget/i0;->n(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v7, 0x7f0b0042

    .line 129
    invoke-virtual {v2, v7, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    .line 130
    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v7, 0x8

    .line 131
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/view/View$OnLongClickListener;

    const/4 v9, 0x0

    .line 133
    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-static {v2, v7}, Lcom/google/android/material/textfield/TextInputLayout;->J(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 135
    iput-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/view/View$OnLongClickListener;

    .line 136
    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    invoke-static {v2, v9}, Lcom/google/android/material/textfield/TextInputLayout;->J(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    const/16 v7, 0x2f

    .line 138
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 139
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 140
    invoke-virtual {v2, v7}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    .line 141
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->K(Z)V

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    goto :goto_4

    :cond_10
    const/4 v7, 0x0

    .line 143
    invoke-virtual {v0, v7}, Lcom/google/android/material/textfield/TextInputLayout;->K(Z)V

    .line 144
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/view/View$OnLongClickListener;

    const/4 v9, 0x0

    .line 145
    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {v2, v7}, Lcom/google/android/material/textfield/TextInputLayout;->J(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 147
    iput-object v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->L:Landroid/view/View$OnLongClickListener;

    .line 148
    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 149
    invoke-static {v2, v9}, Lcom/google/android/material/textfield/TextInputLayout;->J(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    .line 150
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 151
    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_4
    const/16 v7, 0x2e

    .line 152
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 153
    invoke-virtual {v1, v7}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 154
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    if-eq v9, v7, :cond_12

    .line 155
    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_12
    const/16 v7, 0x2d

    const/4 v9, 0x1

    .line 156
    invoke-virtual {v1, v7, v9}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v7

    .line 157
    invoke-virtual {v2, v7}, Lcom/google/android/material/internal/CheckableImageButton;->e(Z)V

    goto :goto_5

    :cond_13
    const/4 v9, 0x1

    :goto_5
    const/16 v2, 0x30

    .line 158
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 159
    invoke-static {v14, v1, v2}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 160
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/content/res/ColorStateList;

    if-eq v7, v2, :cond_14

    .line 161
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/content/res/ColorStateList;

    .line 162
    iput-boolean v9, v0, Lcom/google/android/material/textfield/TextInputLayout;->H:Z

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    :cond_14
    const/16 v2, 0x31

    .line 164
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, -0x1

    .line 165
    invoke-virtual {v1, v2, v7}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    const/4 v7, 0x0

    .line 166
    invoke-static {v2, v7}, Lcom/google/android/material/internal/j;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 167
    iget-object v7, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/graphics/PorterDuff$Mode;

    if-eq v7, v2, :cond_15

    .line 168
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x1

    .line 169
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->h()V

    .line 171
    :cond_15
    invoke-virtual {v10, v8}, Lcom/google/android/material/textfield/o;->u(Z)V

    .line 172
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 173
    invoke-virtual {v10}, Lcom/google/android/material/textfield/o;->o()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v10, v2}, Lcom/google/android/material/textfield/o;->u(Z)V

    goto :goto_6

    .line 175
    :cond_16
    invoke-virtual {v10}, Lcom/google/android/material/textfield/o;->o()Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    .line 176
    invoke-virtual {v10, v2}, Lcom/google/android/material/textfield/o;->u(Z)V

    .line 177
    :cond_17
    invoke-virtual {v10, v15}, Lcom/google/android/material/textfield/o;->y(Ljava/lang/CharSequence;)V

    .line 178
    :cond_18
    :goto_6
    invoke-virtual {v10, v6}, Lcom/google/android/material/textfield/o;->t(I)V

    .line 179
    invoke-virtual {v10, v5}, Lcom/google/android/material/textfield/o;->q(Z)V

    .line 180
    invoke-virtual {v10, v4}, Lcom/google/android/material/textfield/o;->r(I)V

    .line 181
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    if-eq v2, v2, :cond_19

    .line 182
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    .line 184
    :cond_19
    iget v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    if-eq v2, v2, :cond_1a

    .line 185
    iput v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    .line 186
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    :cond_1a
    const/16 v2, 0x1d

    .line 187
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 188
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 189
    invoke-virtual {v10, v2}, Lcom/google/android/material/textfield/o;->s(Landroid/content/res/ColorStateList;)V

    :cond_1b
    const/16 v2, 0x21

    .line 190
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 191
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 192
    invoke-virtual {v10, v2}, Lcom/google/android/material/textfield/o;->v(Landroid/content/res/ColorStateList;)V

    :cond_1c
    const/16 v2, 0x25

    .line 193
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 194
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 195
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_1e

    .line 196
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1d

    .line 197
    invoke-virtual {v13, v2}, Lcom/google/android/material/internal/a;->u(Landroid/content/res/ColorStateList;)V

    .line 198
    :cond_1d
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/content/res/ColorStateList;

    .line 199
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    .line 200
    invoke-direct {v0, v2, v2}, Lcom/google/android/material/textfield/TextInputLayout;->T(ZZ)V

    :cond_1e
    const/16 v2, 0x11

    .line 201
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 202
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 203
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_1f

    .line 204
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/content/res/ColorStateList;

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    :cond_1f
    const/16 v2, 0xf

    .line 206
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 207
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 208
    iget-object v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    if-eq v4, v2, :cond_20

    .line 209
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    .line 211
    :cond_20
    iget-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Z

    if-eq v2, v3, :cond_22

    if-eqz v3, :cond_21

    .line 212
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 213
    invoke-direct {v2, v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    const v4, 0x7f0802ba

    .line 215
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setId(I)V

    .line 216
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 217
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v10, v2, v4}, Lcom/google/android/material/textfield/o;->d(Landroid/widget/TextView;I)V

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->M()V

    goto :goto_7

    :cond_21
    const/4 v4, 0x2

    .line 220
    iget-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v10, v2, v4}, Lcom/google/android/material/textfield/o;->p(Landroid/widget/TextView;I)V

    const/4 v2, 0x0

    .line 221
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    .line 222
    :goto_7
    iput-boolean v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->g:Z

    :cond_22
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v4

    .line 224
    iget v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-ne v4, v3, :cond_23

    goto :goto_8

    .line 225
    :cond_23
    iput v4, v0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    .line 226
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v3, :cond_24

    .line 227
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 228
    :cond_24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v4, v18

    const v5, 0x7f0b0041

    const/4 v6, 0x0

    .line 229
    invoke-virtual {v3, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    .line 230
    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v4, 0x8

    .line 231
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 232
    new-instance v4, Lcom/google/android/material/textfield/f;

    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/f;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v5, -0x1

    invoke-virtual {v12, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 233
    new-instance v4, Lcom/google/android/material/textfield/p;

    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/p;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v12, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 234
    new-instance v4, Lcom/google/android/material/textfield/q;

    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/q;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v5, 0x1

    invoke-virtual {v12, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 235
    new-instance v4, Lcom/google/android/material/textfield/a;

    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    const/4 v5, 0x2

    invoke-virtual {v12, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 236
    new-instance v4, Lcom/google/android/material/textfield/h;

    invoke-direct {v4, v0}, Lcom/google/android/material/textfield/h;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v12, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v2, 0x15

    .line 237
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    const/16 v5, 0x28

    if-eqz v4, :cond_27

    const/4 v4, 0x0

    .line 238
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->C(I)V

    const/16 v2, 0x14

    .line 239
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 240
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 241
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    const/16 v2, 0x13

    .line 242
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 243
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->A(Ljava/lang/CharSequence;)V

    :cond_26
    const/16 v2, 0x12

    const/4 v4, 0x1

    .line 245
    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v2

    .line 246
    invoke-virtual {v3, v2}, Lcom/google/android/material/internal/CheckableImageButton;->e(Z)V

    goto :goto_9

    .line 247
    :cond_27
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    .line 248
    invoke-virtual {v1, v5, v2}, Landroidx/appcompat/widget/i0;->a(IZ)Z

    move-result v2

    .line 249
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->C(I)V

    const/16 v2, 0x27

    .line 250
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 251
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x26

    .line 252
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->p(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 253
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->A(Ljava/lang/CharSequence;)V

    const/16 v2, 0x29

    .line 254
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 255
    invoke-static {v14, v1, v2}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 256
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_28

    .line 257
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    .line 258
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Z

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    :cond_28
    const/16 v2, 0x2a

    .line 260
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, -0x1

    .line 261
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    const/4 v3, 0x0

    .line 262
    invoke-static {v2, v3}, Lcom/google/android/material/internal/j;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 263
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v2, :cond_29

    .line 264
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x1

    .line 265
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    .line 266
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 267
    :cond_29
    :goto_9
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-nez v2, :cond_2b

    const/16 v2, 0x16

    .line 268
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 269
    invoke-static {v14, v1, v2}, Lyx;->b(Landroid/content/Context;Landroidx/appcompat/widget/i0;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 270
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    if-eq v3, v2, :cond_2a

    .line 271
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    .line 272
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->S:Z

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    :cond_2a
    const/16 v2, 0x17

    .line 274
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/i0;->r(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x17

    const/4 v3, -0x1

    .line 275
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/i0;->k(II)I

    move-result v2

    const/4 v3, 0x0

    .line 276
    invoke-static {v2, v3}, Lcom/google/android/material/internal/j;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 277
    iget-object v3, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/PorterDuff$Mode;

    if-eq v3, v2, :cond_2b

    .line 278
    iput-object v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x1

    .line 279
    iput-boolean v2, v0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 281
    :cond_2b
    invoke-virtual {v1}, Landroidx/appcompat/widget/i0;->v()V

    const/4 v1, 0x2

    .line 282
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0xe
        0x1c
        0x20
        0x24
    .end array-data
.end method

.method private H(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->Q()Z

    :cond_2
    return-void
.end method

.method private static J(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 1
    sget v0, Lc3;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 3
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->k(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    .line 7
    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->N(I)V

    :cond_1
    return-void
.end method

.method private O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->k:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l:I

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->L(Landroid/widget/TextView;I)V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method

.method private Q()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    .line 8
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 9
    invoke-virtual {v6}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    .line 10
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v6

    add-int/2addr v0, v6

    .line 12
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 14
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15
    aget-object v6, v0, v1

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_5

    .line 16
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    aget-object v8, v0, v2

    aget-object v9, v0, v5

    aget-object v0, v0, v3

    .line 17
    invoke-virtual {v6, v7, v8, v9, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 20
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 21
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    aget-object v7, v0, v2

    aget-object v8, v0, v5

    aget-object v0, v0, v3

    .line 22
    invoke-virtual {v6, v4, v7, v8, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 23
    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->K:Landroid/graphics/drawable/Drawable;

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 24
    :goto_3
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 25
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Lcom/google/android/material/internal/CheckableImageButton;

    goto :goto_4

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 27
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    goto :goto_4

    :cond_7
    move-object v6, v4

    :goto_4
    if-eqz v6, :cond_a

    .line 28
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_a

    .line 29
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 30
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v4

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 32
    invoke-virtual {v7}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    .line 33
    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 34
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    add-int/2addr v4, v6

    .line 35
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    :cond_8
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 37
    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 38
    aget-object v6, v4, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/drawable/Drawable;

    if-eq v6, v7, :cond_9

    .line 39
    aget-object v0, v4, v5

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/drawable/Drawable;

    .line 40
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    aget-object v1, v4, v1

    aget-object v5, v4, v2

    aget-object v3, v4, v3

    .line 41
    invoke-virtual {v0, v1, v5, v7, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_9
    move v2, v0

    goto :goto_6

    .line 42
    :cond_a
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    .line 43
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 44
    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 45
    aget-object v5, v6, v5

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/drawable/Drawable;

    if-ne v5, v7, :cond_b

    .line 46
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    aget-object v1, v6, v1

    aget-object v5, v6, v2

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->W:Landroid/graphics/drawable/Drawable;

    aget-object v3, v6, v3

    .line 47
    invoke-virtual {v0, v1, v5, v7, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_b
    move v2, v0

    .line 48
    :goto_5
    iput-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->V:Landroid/graphics/drawable/Drawable;

    :goto_6
    move v0, v2

    :cond_c
    return v0
.end method

.method private R()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()I

    move-result v1

    .line 4
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v2, :cond_0

    .line 5
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private T(ZZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/widget/EditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->h()Z

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 6
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v7, v6}, Lcom/google/android/material/internal/a;->u(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Lcom/google/android/material/internal/a;->A(Landroid/content/res/ColorStateList;)V

    :cond_2
    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/a;->u(Landroid/content/res/ColorStateList;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    iget v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/a;->A(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v6}, Lcom/google/android/material/textfield/o;->l()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/internal/a;->u(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 12
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/internal/a;->u(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d0:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_6

    .line 14
    iget-object v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v6, v0}, Lcom/google/android/material/internal/a;->u(Landroid/content/res/ColorStateList;)V

    :cond_6
    :goto_2
    if-nez v1, :cond_c

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v4, :cond_c

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    if-nez p2, :cond_8

    .line 16
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    if-nez p2, :cond_10

    .line 17
    :cond_8
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 18
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    const/4 p2, 0x0

    if-eqz p1, :cond_a

    .line 19
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z

    if-eqz p1, :cond_a

    .line 20
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->e(F)V

    goto :goto_3

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->E(F)V

    .line 22
    :goto_3
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    check-cast p1, Lcom/google/android/material/textfield/g;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/g;->U()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 23
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 24
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    check-cast p1, Lcom/google/android/material/textfield/g;

    .line 25
    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/google/android/material/textfield/g;->V(FFFF)V

    .line 26
    :cond_b
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    goto :goto_6

    :cond_c
    :goto_4
    if-nez p2, :cond_d

    .line 27
    iget-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    if-eqz p2, :cond_10

    .line 28
    :cond_d
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 29
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_e
    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_f

    .line 30
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->n0:Z

    if-eqz p1, :cond_f

    .line 31
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout;->e(F)V

    goto :goto_5

    .line 32
    :cond_f
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->E(F)V

    .line 33
    :goto_5
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 35
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    :cond_10
    :goto_6
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/TextInputLayout;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    return-object p0
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->S:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->R:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->U:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->T:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->g(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private g(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    if-eqz p4, :cond_2

    .line 2
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 3
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 4
    invoke-static {v0, p5}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eq p2, v0, :cond_3

    .line 6
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->H:Z

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->G:Landroid/content/res/ColorStateList;

    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->J:Z

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->I:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/TextInputLayout;->g(Lcom/google/android/material/internal/CheckableImageButton;ZLandroid/content/res/ColorStateList;ZLandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private i()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->i()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->i()F

    move-result v0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    instance-of v0, v0, Lcom/google/android/material/textfield/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()Lcom/google/android/material/textfield/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/n;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->O:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/n;

    :goto_0
    return-object v0
.end method

.method private s()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private v()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    instance-of v0, v0, Lcom/google/android/material/textfield/g;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/material/textfield/g;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lqy;

    invoke-direct {v0, v3}, Lcom/google/android/material/textfield/g;-><init>(Lqy;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lmy;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lqy;

    invoke-direct {v0, v3}, Lmy;-><init>(Lqy;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lmy;

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    const-string v3, " is illegal; only @BoxBackgroundMode constants are supported."

    invoke-static {v1, v2, v3}, Lic;->k(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_2
    new-instance v0, Lmy;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lqy;

    invoke-direct {v0, v1}, Lmy;-><init>(Lqy;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    .line 8
    new-instance v0, Lmy;

    invoke-direct {v0}, Lmy;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lmy;

    goto :goto_1

    .line 9
    :cond_3
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    .line 10
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lmy;

    .line 11
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    .line 13
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    .line 14
    sget v2, Lc3;->g:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    .line 17
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-eqz v0, :cond_6

    .line 18
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->R()V

    :cond_6
    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/a;->g(Landroid/graphics/RectF;)V

    .line 4
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    check-cast v1, Lcom/google/android/material/textfield/g;

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/material/textfield/g;->V(FFFF)V

    return-void
.end method

.method private static x(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->x(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public B(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public C(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    .line 2
    iput p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->F(Z)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Lcom/google/android/material/textfield/n;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/n;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Lcom/google/android/material/textfield/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/n;->a()V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$f;

    .line 8
    invoke-interface {v1, p0, v0}, Lcom/google/android/material/textfield/TextInputLayout$f;->a(Lcom/google/android/material/textfield/TextInputLayout;I)V

    goto :goto_1

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The current box background mode "

    invoke-static {v1}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported by the end icon mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public D(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/view/View$OnLongClickListener;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->J(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public E(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->b0:Landroid/view/View$OnLongClickListener;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->J(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public F(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->t()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->Q()Z

    :cond_1
    return-void
.end method

.method public G(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/o;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->H(Z)V

    return-void
.end method

.method public I(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->I(Ljava/lang/CharSequence;)V

    .line 5
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    :cond_0
    const/16 p1, 0x800

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public K(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->Q()Z

    :cond_2
    return-void
.end method

.method L(Landroid/widget/TextView;I)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/widget/c;->h(Landroid/widget/TextView;I)V

    .line 2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, -0xff01

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    const p2, 0x7f0f0134

    .line 4
    invoke-static {p1, p2}, Landroidx/core/widget/c;->h(Landroid/widget/TextView;I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f050088

    invoke-static {p2, v0}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method N(I)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    .line 2
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    goto :goto_2

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    .line 7
    sget v3, Lc3;->g:I

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 11
    :cond_1
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    if-le p1, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    iget-boolean v6, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v6, :cond_3

    const v6, 0x7f0e0038

    goto :goto_1

    :cond_3
    const v6, 0x7f0e0037

    :goto_1
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v3

    .line 15
    invoke-virtual {v1, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 17
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eq v0, v1, :cond_4

    .line 18
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->O()V

    .line 19
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 22
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0039

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :goto_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eq v0, p1, :cond_5

    .line 26
    invoke-direct {p0, v2, v2}, Lcom/google/android/material/textfield/TextInputLayout;->T(ZZ)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()V

    :cond_5
    return-void
.end method

.method P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {v0}, Landroidx/appcompat/widget/o;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/o;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/textfield/o;->k()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 8
    invoke-static {v1, v2}, Landroidx/appcompat/widget/e;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 12
    invoke-static {v1, v2}, Landroidx/appcompat/widget/e;->e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->refreshDrawableState()V

    :cond_5
    :goto_0
    return-void
.end method

.method S(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->T(ZZ)V

    return-void
.end method

.method U()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isHovered()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/EditText;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 4
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->k0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    goto :goto_4

    .line 6
    :cond_5
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/o;->h()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v4}, Lcom/google/android/material/textfield/o;->k()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    goto :goto_4

    .line 8
    :cond_6
    iget-boolean v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    .line 9
    invoke-virtual {v4}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    .line 10
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->g0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    goto :goto_4

    :cond_8
    if-eqz v3, :cond_9

    .line 11
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    goto :goto_4

    .line 12
    :cond_9
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->e0:I

    iput v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    .line 13
    :goto_4
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    .line 14
    invoke-virtual {v4}, Lcom/google/android/material/textfield/o;->h()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 15
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->o()Lcom/google/android/material/textfield/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/material/textfield/n;->c()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_b

    .line 16
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 17
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 18
    invoke-static {v4}, Landroidx/core/graphics/drawable/a;->j(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/material/textfield/o;->k()I

    move-result v5

    .line 21
    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;I)V

    .line 22
    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v5, v4}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 23
    :cond_b
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 24
    :goto_6
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 25
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/material/textfield/o;->n()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    .line 27
    invoke-virtual {v4}, Lcom/google/android/material/textfield/o;->h()Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    .line 28
    :goto_7
    invoke-direct {p0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->H(Z)V

    if-nez v3, :cond_d

    if-eqz v0, :cond_e

    .line 29
    :cond_d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 30
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    goto :goto_8

    .line 31
    :cond_e
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->y:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    .line 32
    :goto_8
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-ne v0, v2, :cond_11

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 34
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    goto :goto_9

    :cond_f
    if-eqz v3, :cond_10

    .line 35
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    goto :goto_9

    .line 36
    :cond_10
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->h0:I

    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 37
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    if-nez v0, :cond_12

    goto/16 :goto_d

    .line 38
    :cond_12
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->t:Lqy;

    invoke-virtual {v0, v3}, Lmy;->e(Lqy;)V

    .line 39
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-ne v0, v3, :cond_14

    .line 40
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    if-le v0, v4, :cond_13

    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_15

    .line 41
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    int-to-float v3, v3

    iget v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    invoke-virtual {v0, v3, v5}, Lmy;->N(FI)V

    .line 42
    :cond_15
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 43
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-ne v3, v2, :cond_16

    const v0, 0x7f0300c0

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroidx/core/app/b;->G(Landroid/content/Context;II)I

    move-result v0

    .line 45
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 46
    invoke-static {v3, v0}, Lk1;->b(II)I

    move-result v0

    .line 47
    :cond_16
    iput v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    .line 48
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 49
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    .line 50
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 51
    :cond_17
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lmy;

    if-nez v0, :cond_18

    goto :goto_c

    .line 52
    :cond_18
    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    if-le v3, v4, :cond_19

    iget v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    if-eqz v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    if-eqz v1, :cond_1a

    .line 53
    iget v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->A:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmy;->F(Landroid/content/res/ColorStateList;)V

    .line 54
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 55
    :goto_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1b
    :goto_d
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 2
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/lit8 v0, v0, 0x10

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->R()V

    .line 7
    check-cast p1, Landroid/widget/EditText;

    .line 8
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-nez p2, :cond_7

    .line 9
    iget p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->N:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    instance-of p2, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-nez p2, :cond_0

    const-string p2, "TextInputLayout"

    const-string p3, "EditText added is not a TextInputEditText. Please switch to using that class instead."

    .line 10
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 12
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->v()V

    .line 13
    new-instance p1, Lcom/google/android/material/textfield/TextInputLayout$d;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$d;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 14
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    .line 15
    invoke-static {p2, p1}, Lc3;->u(Landroid/view/View;Ln2;)V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->K(Landroid/graphics/Typeface;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/a;->C(F)V

    .line 18
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getGravity()I

    move-result p1

    .line 19
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    and-int/lit8 p3, p1, -0x71

    or-int/lit8 p3, p3, 0x30

    invoke-virtual {p2, p3}, Lcom/google/android/material/internal/a;->v(I)V

    .line 20
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/a;->B(I)V

    .line 21
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    new-instance p2, Lcom/google/android/material/textfield/r;

    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/r;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 22
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c0:Landroid/content/res/ColorStateList;

    .line 24
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->I(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 29
    :cond_3
    iput-boolean p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    .line 30
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 31
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->N(I)V

    .line 32
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()V

    .line 33
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/o;->e()V

    .line 34
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->bringToFront()V

    .line 35
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 36
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->a0:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->bringToFront()V

    .line 37
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textfield/TextInputLayout$e;

    .line 38
    invoke-interface {p3, p0}, Lcom/google/android/material/textfield/TextInputLayout$e;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->T(ZZ)V

    goto :goto_1

    .line 40
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "We already have an EditText, can only have one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public c(Lcom/google/android/material/textfield/TextInputLayout$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->M:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout$e;->a(Lcom/google/android/material/textfield/TextInputLayout;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/material/textfield/TextInputLayout$f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->Q:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    .line 4
    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 10
    iput-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    .line 11
    throw p1

    .line 12
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->q0:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/a;->f(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lmy;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 7
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lmy;

    invoke-virtual {v0, p1}, Lmy;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Z

    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/a;->H([I)Z

    move-result v1

    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    sget v2, Lc3;->g:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 10
    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->T(ZZ)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->P()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->U()V

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 14
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->p0:Z

    return-void
.end method

.method e(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v0}, Lcom/google/android/material/internal/a;->l()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    .line 4
    sget-object v1, Ljx;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$c;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/TextInputLayout$c;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {v3}, Lcom/google/android/material/internal/a;->l()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 8
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o0:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getBaseline()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method k()Lmy;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Lmy;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->B:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    return v0
.end method

.method n()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz p1, :cond_8

    .line 3
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->C:Landroid/graphics/Rect;

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/android/material/internal/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->s:Lmy;

    if-eqz p1, :cond_0

    .line 6
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->z:I

    sub-int p4, p3, p4

    .line 7
    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, p5, p4, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz p1, :cond_8

    .line 9
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    .line 10
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz p3, :cond_7

    .line 11
    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/graphics/Rect;

    .line 12
    iget p5, p2, Landroid/graphics/Rect;->bottom:I

    iput p5, p4, Landroid/graphics/Rect;->bottom:I

    .line 13
    iget p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    const/4 v1, 0x2

    if-eq p5, v1, :cond_1

    .line 14
    iget p5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p3

    add-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->left:I

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p3

    iput p3, p4, Landroid/graphics/Rect;->top:I

    .line 16
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 17
    :cond_1
    iget p5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->left:I

    .line 18
    iget p3, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->i()I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->top:I

    .line 19
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 20
    :cond_2
    iget p5, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result p3

    add-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->left:I

    .line 21
    iget p3, p2, Landroid/graphics/Rect;->top:I

    iget p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->w:I

    add-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->top:I

    .line 22
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    iput p3, p4, Landroid/graphics/Rect;->right:I

    .line 23
    :goto_0
    invoke-virtual {p1, p4}, Lcom/google/android/material/internal/a;->s(Landroid/graphics/Rect;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    .line 25
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    if-eqz p3, :cond_6

    .line 26
    iget-object p3, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Landroid/graphics/Rect;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->k()F

    move-result p4

    .line 28
    iget p5, p2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v1, p5

    iput v1, p3, Landroid/graphics/Rect;->left:I

    .line 29
    iget p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-ne p5, v0, :cond_3

    iget-object p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    .line 30
    invoke-virtual {p5}, Landroid/widget/EditText;->getMinLines()I

    move-result p5

    if-gt p5, v0, :cond_3

    const/4 p5, 0x1

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    if-eqz p5, :cond_4

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p5

    int-to-float p5, p5

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p4, v1

    sub-float/2addr p5, v1

    float-to-int p5, p5

    goto :goto_2

    .line 32
    :cond_4
    iget p5, p2, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v1

    add-int/2addr p5, v1

    .line 33
    :goto_2
    iput p5, p3, Landroid/graphics/Rect;->top:I

    .line 34
    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr p5, v1

    iput p5, p3, Landroid/graphics/Rect;->right:I

    .line 35
    iget p5, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:I

    if-ne p5, v0, :cond_5

    .line 36
    iget p2, p3, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    float-to-int p2, p2

    goto :goto_3

    .line 37
    :cond_5
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget-object p4, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    .line 38
    :goto_3
    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    .line 39
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/a;->y(Landroid/graphics/Rect;)V

    .line 40
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m0:Lcom/google/android/material/internal/a;

    invoke-virtual {p1}, Lcom/google/android/material/internal/a;->p()V

    .line 41
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->l0:Z

    if-nez p1, :cond_8

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->w()V

    goto :goto_4

    .line 43
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 44
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->F:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 6
    iget-object p2, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    const/4 p2, 0x1

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->Q()Z

    move-result p1

    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->d:Landroid/widget/EditText;

    new-instance p2, Lcom/google/android/material/textfield/TextInputLayout$b;

    invoke-direct {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout$b;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->d:Ljava/lang/CharSequence;

    .line 6
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/o;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/o;->q(Z)V

    .line 9
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/o;->x(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->m()V

    .line 12
    :goto_0
    iget-boolean p1, p1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->e:Z

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v0, Lcom/google/android/material/textfield/TextInputLayout$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->j()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-object v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->d:Ljava/lang/CharSequence;

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputLayout;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout$SavedState;->e:Z

    return-object v1
.end method

.method p()Lcom/google/android/material/internal/CheckableImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    return-object v0
.end method

.method public q()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:Lcom/google/android/material/textfield/o;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/o;->j()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public r()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->x(Landroid/view/ViewGroup;Z)V

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->q:Z

    return v0
.end method

.method public y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V

    return-void
.end method

.method public z(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout;->P:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->e(Z)V

    return-void
.end method
