.class public Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->b:Landroid/graphics/Paint;

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->c:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->d:I

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->b:Landroid/graphics/Paint;

    .line 8
    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->c:I

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->d:I

    .line 10
    invoke-direct {p0, p2, p3}, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/camerasideas/collagemaker/R$styleable;->g:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->c:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v0, v3}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->g:F

    const v0, 0x7f0500a2

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->e:I

    const v0, 0x7f050138

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->f:I

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->d:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->c:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->d:I

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->e:I

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->f:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x40400000    # 3.0f

    .line 3
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->g:F

    mul-float v2, v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float v2, v2, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->g:F

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->g:F

    const/high16 p2, 0x40400000    # 3.0f

    mul-float v0, p1, p2

    float-to-int v0, v0

    .line 3
    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/PreviewBottomRoundView;->c:I

    int-to-float v1, v1

    mul-float p1, p1, p2

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
