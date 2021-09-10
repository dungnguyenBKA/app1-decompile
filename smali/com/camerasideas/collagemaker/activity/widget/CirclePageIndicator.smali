.class public Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator$SavedState;
    }
.end annotation


# instance fields
.field private b:F

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private f:I

.field private g:I

.field private h:F

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:F

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f030332

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 4
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 5
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->e:Landroid/graphics/Paint;

    const/high16 v5, -0x40800000    # -1.0f

    .line 6
    iput v5, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->n:F

    const/4 v5, -0x1

    .line 7
    iput v5, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->o:I

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050068

    .line 10
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const v7, 0x7f050067

    .line 11
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    const v8, 0x7f09000d

    .line 12
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f050069

    .line 13
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const v10, 0x7f0601e9

    .line 14
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const v11, 0x7f0601e8

    .line 15
    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    const v12, 0x7f040005

    .line 16
    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    const v13, 0x7f040006

    .line 17
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 18
    sget-object v13, Lcom/camerasideas/collagemaker/R$styleable;->a:[I

    const/4 v14, 0x0

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    move/from16 v16, v5

    move/from16 v5, p3

    invoke-virtual {v15, v2, v13, v5, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v5, 0x2

    .line 19
    invoke-virtual {v2, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->k:Z

    .line 20
    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->j:I

    .line 21
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v5, 0x4

    .line 22
    invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x7

    .line 24
    invoke-virtual {v2, v1, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x8

    .line 25
    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x3

    .line 27
    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x5

    .line 28
    invoke-virtual {v2, v1, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->b:F

    const/4 v1, 0x6

    move/from16 v3, v16

    .line 29
    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->l:Z

    const/4 v1, 0x1

    .line 30
    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 34
    sget v2, Lg3;->b:I

    .line 35
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    .line 36
    iput v1, v0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->m:I

    return-void
.end method

.method private d(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->b:F

    mul-float v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->f:I

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->h:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->i:I

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->l:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->i:I

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->f:I

    .line 3
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->g:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->j:I

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-direct {p0, p2}, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->d(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->d(I)I

    move-result p1

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator$SavedState;->b:I

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->f:I

    .line 4
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->g:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator;->f:I

    iput v0, v1, Lcom/camerasideas/collagemaker/activity/widget/CirclePageIndicator$SavedState;->b:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
