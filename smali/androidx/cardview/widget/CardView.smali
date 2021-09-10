.class public Landroidx/cardview/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final i:[I

.field private static final j:Landroidx/cardview/widget/e;


# instance fields
.field private b:Z

.field private c:Z

.field d:I

.field e:I

.field final f:Landroid/graphics/Rect;

.field final g:Landroid/graphics/Rect;

.field private final h:Landroidx/cardview/widget/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    .line 1
    sput-object v0, Landroidx/cardview/widget/CardView;->i:[I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/cardview/widget/b;

    invoke-direct {v0}, Landroidx/cardview/widget/b;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/cardview/widget/a;

    invoke-direct {v0}, Landroidx/cardview/widget/a;-><init>()V

    sput-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    .line 5
    :goto_0
    sget-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    invoke-interface {v0}, Landroidx/cardview/widget/e;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030079

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/cardview/widget/CardView;->g:Landroid/graphics/Rect;

    .line 5
    new-instance v3, Landroidx/cardview/widget/CardView$a;

    invoke-direct {v3, p0}, Landroidx/cardview/widget/CardView$a;-><init>(Landroidx/cardview/widget/CardView;)V

    iput-object v3, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    .line 6
    sget-object v1, Landroidx/cardview/R$styleable;->a:[I

    const v2, 0x7f0f00de

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_0
    move-object v5, p3

    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Landroidx/cardview/widget/CardView;->i:[I

    invoke-virtual {v1, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    new-array v1, v2, [F

    .line 12
    invoke-static {v5, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 13
    aget p3, v1, p3

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p3, p3, v1

    if-lez p3, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f05004d

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f05004c

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 16
    :goto_1
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :goto_2
    const/4 p3, 0x0

    .line 17
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    const/4 v1, 0x4

    .line 18
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    const/4 v1, 0x5

    .line 19
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    const/4 v1, 0x7

    .line 20
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->b:Z

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 21
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/cardview/widget/CardView;->c:Z

    const/16 v1, 0x8

    .line 22
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/16 v8, 0xa

    .line 23
    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->left:I

    const/16 v8, 0xc

    .line 24
    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->top:I

    const/16 v8, 0xb

    .line 25
    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v0, Landroid/graphics/Rect;->right:I

    const/16 v8, 0x9

    .line 26
    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v7, p3

    if-lez v0, :cond_2

    move v8, v7

    goto :goto_3

    :cond_2
    move v8, p3

    .line 27
    :goto_3
    invoke-virtual {p2, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/cardview/widget/CardView;->d:I

    .line 28
    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/cardview/widget/CardView;->e:I

    .line 29
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    sget-object v2, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, Landroidx/cardview/widget/e;->a(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method static synthetic g(Landroidx/cardview/widget/CardView;IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic l(Landroidx/cardview/widget/CardView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method static synthetic m(Landroidx/cardview/widget/CardView;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method


# virtual methods
.method public n()Landroid/content/res/ColorStateList;
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->e(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public o()F
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->b(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    instance-of v1, v0, Landroidx/cardview/widget/b;

    if-nez v1, :cond_2

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    invoke-interface {v0, v4}, Landroidx/cardview/widget/e;->i(Landroidx/cardview/widget/d;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 5
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    invoke-interface {v0, v2}, Landroidx/cardview/widget/e;->h(Landroidx/cardview/widget/d;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 9
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 10
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/cardview/widget/CardView;->e:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/cardview/widget/CardView;->d:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public t()F
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->d(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->c:Z

    return v0
.end method

.method public v()F
    .locals 2

    .line 1
    sget-object v0, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    iget-object v1, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    invoke-interface {v0, v1}, Landroidx/cardview/widget/e;->c(Landroidx/cardview/widget/d;)F

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/cardview/widget/CardView;->b:Z

    return v0
.end method

.method public x(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    sget-object p1, Landroidx/cardview/widget/CardView;->j:Landroidx/cardview/widget/e;

    iget-object p2, p0, Landroidx/cardview/widget/CardView;->h:Landroidx/cardview/widget/d;

    invoke-interface {p1, p2}, Landroidx/cardview/widget/e;->f(Landroidx/cardview/widget/d;)V

    return-void
.end method
