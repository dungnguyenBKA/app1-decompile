.class public Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:I

.field private g:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->b:Landroid/graphics/Paint;

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->c:Landroid/graphics/Paint;

    .line 4
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->d:Landroid/graphics/Paint;

    .line 5
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->e:Landroid/graphics/Paint;

    .line 6
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->b:Landroid/graphics/Paint;

    .line 9
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->c:Landroid/graphics/Paint;

    .line 10
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->d:Landroid/graphics/Paint;

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->e:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->g:Landroid/graphics/PaintFlagsDrawFilter;

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-static {p1, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->f:I

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->f:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->c:Landroid/graphics/Paint;

    const v2, 0x7f050045

    invoke-static {p1, v2}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->f:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 12
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->d:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->f:I

    shr-int/lit8 v1, v2, 0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->e:Landroid/graphics/Paint;

    const v1, 0x7f050053

    invoke-static {p1, v1}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->g:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    int-to-float v5, v1

    mul-float v5, v5, v3

    div-float/2addr v5, v4

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 6
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/CircleColorView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
