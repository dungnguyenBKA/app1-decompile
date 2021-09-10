.class Lcom/google/android/material/button/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final r:Z


# instance fields
.field private final a:Lcom/google/android/material/button/MaterialButton;

.field private b:Lqy;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/PorterDuff$Mode;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/content/res/ColorStateList;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/a;->r:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lqy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->n:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    .line 4
    iput-object p1, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 5
    iput-object p2, p0, Lcom/google/android/material/button/a;->b:Lqy;

    return-void
.end method

.method private c(Z)Lmy;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/google/android/material/button/a;->r:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lmy;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lmy;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private h()Lmy;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lmy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lty;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lty;

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lty;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method b()Lmy;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lmy;

    move-result-object v0

    return-object v0
.end method

.method d()Lqy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lqy;

    return-object v0
.end method

.method e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/a;->h:I

    return v0
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method g()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    return v0
.end method

.method j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    return v0
.end method

.method k(Landroid/content/res/TypedArray;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, v0, Lcom/google/android/material/button/a;->c:I

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, v0, Lcom/google/android/material/button/a;->d:I

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/material/button/a;->e:I

    const/4 v5, 0x3

    .line 4
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/button/a;->f:I

    const/4 v6, 0x7

    .line 5
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_0

    .line 6
    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/button/a;->g:I

    .line 7
    iget-object v7, v0, Lcom/google/android/material/button/a;->b:Lqy;

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Lqy;->o(F)Lqy;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/button/a;->n(Lqy;)V

    :cond_0
    const/16 v6, 0x13

    .line 8
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v0, Lcom/google/android/material/button/a;->h:I

    const/4 v6, 0x6

    .line 9
    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 10
    invoke-static {v6, v7}, Lcom/google/android/material/internal/j;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iget-object v6, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 12
    invoke-virtual {v6}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x5

    .line 13
    invoke-static {v6, v1, v7}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    .line 14
    iget-object v6, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 15
    invoke-virtual {v6}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x12

    .line 16
    invoke-static {v6, v1, v7}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 17
    iget-object v6, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 18
    invoke-virtual {v6}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0xf

    .line 19
    invoke-static {v6, v1, v7}, Lyx;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    const/4 v6, 0x4

    .line 20
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v0, Lcom/google/android/material/button/a;->p:Z

    const/16 v6, 0x8

    .line 21
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 22
    iget-object v6, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 23
    sget v7, Lc3;->g:I

    .line 24
    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    .line 25
    iget-object v7, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v7}, Landroid/widget/Button;->getPaddingTop()I

    move-result v7

    .line 26
    iget-object v9, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 27
    invoke-virtual {v9}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    .line 28
    iget-object v10, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v10}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v10

    .line 29
    iget-object v11, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 30
    new-instance v12, Lmy;

    iget-object v13, v0, Lcom/google/android/material/button/a;->b:Lqy;

    invoke-direct {v12, v13}, Lmy;-><init>(Lqy;)V

    .line 31
    iget-object v13, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v13}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 32
    invoke-virtual {v12, v13}, Lmy;->A(Landroid/content/Context;)V

    .line 33
    iget-object v13, v0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    invoke-static {v12, v13}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 34
    iget-object v13, v0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v13, :cond_1

    .line 35
    invoke-static {v12, v13}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 36
    :cond_1
    iget v13, v0, Lcom/google/android/material/button/a;->h:I

    int-to-float v13, v13

    iget-object v14, v0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v12, v13, v14}, Lmy;->O(FLandroid/content/res/ColorStateList;)V

    .line 37
    new-instance v13, Lmy;

    iget-object v14, v0, Lcom/google/android/material/button/a;->b:Lqy;

    invoke-direct {v13, v14}, Lmy;-><init>(Lqy;)V

    .line 38
    invoke-virtual {v13, v2}, Lmy;->setTint(I)V

    .line 39
    iget v14, v0, Lcom/google/android/material/button/a;->h:I

    int-to-float v14, v14

    iget-boolean v15, v0, Lcom/google/android/material/button/a;->n:Z

    if-eqz v15, :cond_2

    iget-object v15, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    const v5, 0x7f0300c0

    .line 40
    invoke-static {v15, v5}, Landroidx/core/app/b;->H(Landroid/view/View;I)I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 41
    :goto_0
    invoke-virtual {v13, v14, v5}, Lmy;->N(FI)V

    .line 42
    sget-boolean v5, Lcom/google/android/material/button/a;->r:Z

    if-eqz v5, :cond_3

    .line 43
    new-instance v5, Lmy;

    iget-object v14, v0, Lcom/google/android/material/button/a;->b:Lqy;

    invoke-direct {v5, v14}, Lmy;-><init>(Lqy;)V

    iput-object v5, v0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-static {v5, v8}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;I)V

    .line 45
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    iget-object v8, v0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 46
    invoke-static {v8}, Ldy;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v8

    new-instance v15, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v13, v4, v2

    aput-object v12, v4, v3

    invoke-direct {v15, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget v3, v0, Lcom/google/android/material/button/a;->c:I

    iget v4, v0, Lcom/google/android/material/button/a;->e:I

    iget v12, v0, Lcom/google/android/material/button/a;->d:I

    iget v13, v0, Lcom/google/android/material/button/a;->f:I

    move-object v14, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v12

    move/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 48
    iget-object v3, v0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v8, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_1

    .line 49
    :cond_3
    new-instance v5, Lcy;

    iget-object v8, v0, Lcom/google/android/material/button/a;->b:Lqy;

    invoke-direct {v5, v8}, Lcy;-><init>(Lqy;)V

    iput-object v5, v0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v8, v0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 51
    invoke-static {v8}, Ldy;->c(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 52
    invoke-static {v5, v8}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 53
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v13, v8, v2

    aput-object v12, v8, v3

    iget-object v2, v0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    aput-object v2, v8, v4

    invoke-direct {v5, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v0, Lcom/google/android/material/button/a;->q:Landroid/graphics/drawable/LayerDrawable;

    .line 54
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget v3, v0, Lcom/google/android/material/button/a;->c:I

    iget v4, v0, Lcom/google/android/material/button/a;->e:I

    iget v8, v0, Lcom/google/android/material/button/a;->d:I

    iget v12, v0, Lcom/google/android/material/button/a;->f:I

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v8

    move/from16 v22, v12

    invoke-direct/range {v17 .. v22}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v5, v2

    .line 55
    :goto_1
    invoke-virtual {v11, v5}, Lcom/google/android/material/button/MaterialButton;->p(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object v2

    if-eqz v2, :cond_4

    int-to-float v1, v1

    .line 57
    invoke-virtual {v2, v1}, Lmy;->E(F)V

    .line 58
    :cond_4
    iget-object v1, v0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    iget v2, v0, Lcom/google/android/material/button/a;->c:I

    add-int/2addr v6, v2

    iget v2, v0, Lcom/google/android/material/button/a;->e:I

    add-int/2addr v7, v2

    iget v2, v0, Lcom/google/android/material/button/a;->d:I

    add-int/2addr v9, v2

    iget v2, v0, Lcom/google/android/material/button/a;->f:I

    add-int/2addr v10, v2

    .line 59
    invoke-virtual {v1, v6, v7, v9, v10}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method l()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->h(Landroid/content/res/ColorStateList;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->j(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->p:Z

    return-void
.end method

.method n(Lqy;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/material/button/a;->b:Lqy;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmy;->e(Lqy;)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/a;->h()Lmy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/material/button/a;->h()Lmy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmy;->e(Lqy;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->a()Lty;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->a()Lty;

    move-result-object v0

    invoke-interface {v0, p1}, Lty;->e(Lqy;)V

    :cond_2
    return-void
.end method

.method o(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->n:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/button/a;->h()Lmy;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 4
    iget v1, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1, v2}, Lmy;->O(FLandroid/content/res/ColorStateList;)V

    if-eqz v0, :cond_1

    .line 5
    iget p1, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float p1, p1

    iget-boolean v1, p0, Lcom/google/android/material/button/a;->n:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/button/a;->a:Lcom/google/android/material/button/MaterialButton;

    const v2, 0x7f0300c0

    .line 6
    invoke-static {v1, v2}, Landroidx/core/app/b;->H(Landroid/view/View;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, p1, v1}, Lmy;->N(FI)V

    :cond_1
    return-void
.end method

.method p(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method q(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Lmy;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/button/a;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method r(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/google/android/material/button/a;->c:I

    iget v2, p0, Lcom/google/android/material/button/a;->e:I

    iget v3, p0, Lcom/google/android/material/button/a;->d:I

    sub-int/2addr p2, v3

    iget v3, p0, Lcom/google/android/material/button/a;->f:I

    sub-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method
