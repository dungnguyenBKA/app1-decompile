.class public Lcom/github/chrisbanes/photoview/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/chrisbanes/photoview/c$f;,
        Lcom/github/chrisbanes/photoview/c$e;
    }
.end annotation


# instance fields
.field private b:Landroid/view/animation/Interpolator;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/GestureDetector;

.field private k:Lcom/github/chrisbanes/photoview/a;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Matrix;

.field private final o:Landroid/graphics/RectF;

.field private final p:[F

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnLongClickListener;

.field private s:Lcom/github/chrisbanes/photoview/c$f;

.field private t:I

.field private u:Z

.field private v:Landroid/widget/ImageView$ScaleType;

.field private w:Lcom/github/chrisbanes/photoview/b;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/c;->b:Landroid/view/animation/Interpolator;

    const/16 v0, 0xc8

    .line 3
    iput v0, p0, Lcom/github/chrisbanes/photoview/c;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/github/chrisbanes/photoview/c;->d:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 5
    iput v0, p0, Lcom/github/chrisbanes/photoview/c;->e:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 6
    iput v0, p0, Lcom/github/chrisbanes/photoview/c;->f:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/c;->g:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/c;->h:Z

    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    .line 10
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/c;->m:Landroid/graphics/Matrix;

    .line 11
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    .line 12
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/chrisbanes/photoview/c;->o:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 13
    iput-object v1, p0, Lcom/github/chrisbanes/photoview/c;->p:[F

    const/4 v1, 0x2

    .line 14
    iput v1, p0, Lcom/github/chrisbanes/photoview/c;->t:I

    .line 15
    iput-boolean v0, p0, Lcom/github/chrisbanes/photoview/c;->u:Z

    .line 16
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    .line 17
    new-instance v0, Lcom/github/chrisbanes/photoview/c$a;

    invoke-direct {v0, p0}, Lcom/github/chrisbanes/photoview/c$a;-><init>(Lcom/github/chrisbanes/photoview/c;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/c;->w:Lcom/github/chrisbanes/photoview/b;

    .line 18
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 21
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    new-instance v0, Lcom/github/chrisbanes/photoview/a;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/github/chrisbanes/photoview/c;->w:Lcom/github/chrisbanes/photoview/b;

    invoke-direct {v0, v1, v2}, Lcom/github/chrisbanes/photoview/a;-><init>(Landroid/content/Context;Lcom/github/chrisbanes/photoview/b;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/c;->k:Lcom/github/chrisbanes/photoview/a;

    .line 23
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/github/chrisbanes/photoview/c$b;

    invoke-direct {v1, p0}, Lcom/github/chrisbanes/photoview/c$b;-><init>(Lcom/github/chrisbanes/photoview/c;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/chrisbanes/photoview/c;->j:Landroid/view/GestureDetector;

    .line 24
    new-instance p1, Lcom/github/chrisbanes/photoview/c$c;

    invoke-direct {p1, p0}, Lcom/github/chrisbanes/photoview/c$c;-><init>(Lcom/github/chrisbanes/photoview/c;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method private F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->s()V

    .line 4
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->w()Landroid/graphics/Matrix;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 6
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->t()Z

    return-void
.end method

.method private L(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/c;->z(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/github/chrisbanes/photoview/c;->y(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 6
    iget-object v5, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 7
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 8
    :cond_1
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 10
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 11
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 12
    :cond_2
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 14
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 15
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 16
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 17
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    float-to-int v0, v4

    .line 18
    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_4

    .line 19
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 20
    :cond_4
    sget-object p1, Lcom/github/chrisbanes/photoview/c$d;->a:[I

    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 25
    :goto_0
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->F()V

    return-void
.end method

.method static synthetic a(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->k:Lcom/github/chrisbanes/photoview/a;

    return-object p0
.end method

.method static synthetic b(Lcom/github/chrisbanes/photoview/c;Landroid/widget/ImageView;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/c;->y(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/github/chrisbanes/photoview/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/chrisbanes/photoview/c;->f:F

    return p0
.end method

.method static synthetic d(Lcom/github/chrisbanes/photoview/c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/chrisbanes/photoview/c;->d:F

    return p0
.end method

.method static synthetic e(Lcom/github/chrisbanes/photoview/c;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->r:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic f(Lcom/github/chrisbanes/photoview/c;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->q:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic g(Lcom/github/chrisbanes/photoview/c;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic h(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->w:Lcom/github/chrisbanes/photoview/b;

    return-object p0
.end method

.method static synthetic i(Lcom/github/chrisbanes/photoview/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/chrisbanes/photoview/c;->c:I

    return p0
.end method

.method static synthetic j(Lcom/github/chrisbanes/photoview/c;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->b:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic k(Lcom/github/chrisbanes/photoview/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->s()V

    return-void
.end method

.method static synthetic l(Lcom/github/chrisbanes/photoview/c;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic m(Lcom/github/chrisbanes/photoview/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/github/chrisbanes/photoview/c;->g:Z

    return p0
.end method

.method static synthetic n(Lcom/github/chrisbanes/photoview/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/github/chrisbanes/photoview/c;->h:Z

    return p0
.end method

.method static synthetic o(Lcom/github/chrisbanes/photoview/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/github/chrisbanes/photoview/c;->t:I

    return p0
.end method

.method static synthetic p(Lcom/github/chrisbanes/photoview/c;)Lcom/github/chrisbanes/photoview/c$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/github/chrisbanes/photoview/c;->s:Lcom/github/chrisbanes/photoview/c$f;

    return-object p0
.end method

.method static synthetic q(Lcom/github/chrisbanes/photoview/c;Lcom/github/chrisbanes/photoview/c$f;)Lcom/github/chrisbanes/photoview/c$f;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c;->s:Lcom/github/chrisbanes/photoview/c$f;

    return-object p1
.end method

.method static synthetic r(Lcom/github/chrisbanes/photoview/c;Landroid/widget/ImageView;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/c;->z(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method private s()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->w()Landroid/graphics/Matrix;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private t()Z
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->w()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/c;->v(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/github/chrisbanes/photoview/c;->y(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    cmpg-float v9, v2, v4

    if-gtz v9, :cond_3

    .line 4
    sget-object v9, Lcom/github/chrisbanes/photoview/c$d;->a:[I

    iget-object v10, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v7, :cond_2

    if-eq v9, v6, :cond_1

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    .line 5
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_1
    sub-float/2addr v4, v2

    .line 6
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v4, v2

    goto :goto_2

    .line 7
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    .line 8
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v2, v8

    if-lez v9, :cond_4

    :goto_1
    neg-float v4, v2

    goto :goto_2

    .line 9
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v9, v2, v4

    if-gez v9, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 10
    :goto_2
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/github/chrisbanes/photoview/c;->z(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    const/4 v9, 0x1

    cmpg-float v10, v3, v2

    if-gtz v10, :cond_8

    .line 11
    sget-object v1, Lcom/github/chrisbanes/photoview/c$d;->a:[I

    iget-object v8, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 12
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :cond_6
    sub-float/2addr v2, v3

    .line 13
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_3
    sub-float/2addr v2, v0

    move v8, v2

    goto :goto_4

    .line 14
    :cond_7
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v8, v0

    .line 15
    :goto_4
    iput v7, p0, Lcom/github/chrisbanes/photoview/c;->t:I

    goto :goto_5

    .line 16
    :cond_8
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v8

    if-lez v5, :cond_9

    .line 17
    iput v1, p0, Lcom/github/chrisbanes/photoview/c;->t:I

    neg-float v8, v3

    goto :goto_5

    .line 18
    :cond_9
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_a

    sub-float v8, v2, v0

    .line 19
    iput v9, p0, Lcom/github/chrisbanes/photoview/c;->t:I

    goto :goto_5

    :cond_a
    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/github/chrisbanes/photoview/c;->t:I

    .line 21
    :goto_5
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v9
.end method

.method private v(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->o:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private w()Landroid/graphics/Matrix;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private y(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private z(Landroid/widget/ImageView;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public A()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/c;->f:F

    return v0
.end method

.method public B()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/c;->e:F

    return v0
.end method

.method public C()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/c;->d:F

    return v0
.end method

.method public D()F
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    .line 2
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->p:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->p:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    .line 5
    iget-object v4, p0, Lcom/github/chrisbanes/photoview/c;->p:[F

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 6
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->p:[F

    const/4 v4, 0x3

    aget v1, v1, v4

    float-to-double v4, v1

    .line 7
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public E()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public G(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c;->q:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public H(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c;->r:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public I(FFFZ)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/github/chrisbanes/photoview/c;->d:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/github/chrisbanes/photoview/c;->f:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 2
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    new-instance v6, Lcom/github/chrisbanes/photoview/c$e;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/github/chrisbanes/photoview/c$e;-><init>(Lcom/github/chrisbanes/photoview/c;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/github/chrisbanes/photoview/c;->n:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 4
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->s()V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public J(Landroid/widget/ImageView$ScaleType;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/github/chrisbanes/photoview/d;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c;->v:Landroid/widget/ImageView$ScaleType;

    .line 4
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->K()V

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix scale type is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/c;->u:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/c;->L(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->F()V

    :goto_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/chrisbanes/photoview/c;->L(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/github/chrisbanes/photoview/c;->u:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v0

    iget v3, p0, Lcom/github/chrisbanes/photoview/c;->d:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->u()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    new-instance v9, Lcom/github/chrisbanes/photoview/c$e;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v5

    iget v6, p0, Lcom/github/chrisbanes/photoview/c;->d:F

    .line 7
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/chrisbanes/photoview/c$e;-><init>(Lcom/github/chrisbanes/photoview/c;FFFF)V

    .line 8
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v0

    iget v3, p0, Lcom/github/chrisbanes/photoview/c;->f:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->u()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    new-instance v9, Lcom/github/chrisbanes/photoview/c$e;

    invoke-virtual {p0}, Lcom/github/chrisbanes/photoview/c;->D()F

    move-result v5

    iget v6, p0, Lcom/github/chrisbanes/photoview/c;->f:F

    .line 12
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/github/chrisbanes/photoview/c$e;-><init>(Lcom/github/chrisbanes/photoview/c;FFFF)V

    .line 13
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_1
    const/4 p1, 0x1

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->s:Lcom/github/chrisbanes/photoview/c$f;

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/c$f;->a()V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c;->s:Lcom/github/chrisbanes/photoview/c$f;

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 19
    :goto_3
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->k:Lcom/github/chrisbanes/photoview/a;

    if-eqz v0, :cond_9

    .line 20
    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/a;->e()Z

    move-result p1

    .line 21
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->k:Lcom/github/chrisbanes/photoview/a;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/a;->d()Z

    move-result v0

    .line 22
    iget-object v3, p0, Lcom/github/chrisbanes/photoview/c;->k:Lcom/github/chrisbanes/photoview/a;

    invoke-virtual {v3, p2}, Lcom/github/chrisbanes/photoview/a;->f(Landroid/view/MotionEvent;)Z

    if-nez p1, :cond_6

    .line 23
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->k:Lcom/github/chrisbanes/photoview/a;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/a;->e()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-nez v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->k:Lcom/github/chrisbanes/photoview/a;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/a;->d()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 25
    :cond_8
    iput-boolean v1, p0, Lcom/github/chrisbanes/photoview/c;->h:Z

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    move v1, p1

    .line 26
    :goto_6
    iget-object p1, p0, Lcom/github/chrisbanes/photoview/c;->j:Landroid/view/GestureDetector;

    if-eqz p1, :cond_a

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public u()Landroid/graphics/RectF;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->t()Z

    .line 2
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/c;->w()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/chrisbanes/photoview/c;->v(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public x()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/c;->m:Landroid/graphics/Matrix;

    return-object v0
.end method
