.class public Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field protected g:Landroid/graphics/Bitmap;

.field private h:I

.field private i:I

.field private j:Z

.field private k:F

.field private l:I

.field private m:I

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/Path;

.field private p:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->e:I

    const/16 p2, 0x32

    .line 3
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    const/4 p2, 0x4

    .line 5
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->m:I

    .line 6
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x64

    .line 8
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->e:I

    const/16 p2, 0x32

    .line 9
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    const/4 p2, 0x4

    .line 11
    iput p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->m:I

    .line 12
    invoke-direct {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    div-int/lit8 v2, v1, 0x2

    if-gt v0, v2, :cond_0

    .line 2
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    div-int/lit8 v3, v1, 0x2

    sub-int v3, v2, v3

    if-lt v0, v3, :cond_1

    .line 4
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->d:Landroid/graphics/Paint;

    const-string v1, "#D0FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070232

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->g:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    .line 6
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->i:I

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->n:Landroid/graphics/RectF;

    .line 8
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->m:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lc2;->b(Landroid/content/Context;F)I

    .line 9
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->o:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public c(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->p:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    .line 3
    :cond_0
    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->o:Landroid/graphics/Path;

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->o:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->o:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->o:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    int-to-float v1, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->e:I

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    sub-int v4, v3, v4

    iget v5, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    sub-int/2addr v5, v0

    mul-int v5, v5, v4

    div-int/2addr v5, v3

    int-to-float v0, v5

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    .line 7
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->o:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->c:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    int-to-float v1, v1

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x9

    int-to-float v3, v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->g:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->n:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 13
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->c:I

    .line 4
    iget p2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 5
    div-int/lit8 p1, p1, 0x2

    .line 6
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->j:Z

    if-eqz v0, :cond_7

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    .line 4
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->a()V

    .line 5
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->e:I

    int-to-double v5, v0

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    int-to-double v7, v2

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    int-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    sub-int/2addr v3, v2

    int-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v2

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-int v0, v5

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->k:F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->p:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;

    if-eqz p1, :cond_1

    .line 9
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {p1, p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->C1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->j:Z

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->p:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;

    if-eqz p1, :cond_7

    .line 13
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {p1, p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->F1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V

    goto/16 :goto_1

    .line 14
    :cond_3
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->k:F

    float-to-int p1, p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    .line 15
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->a()V

    .line 16
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->e:I

    int-to-double v5, p1

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    int-to-double v7, v0

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    int-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->b:I

    sub-int/2addr v2, v0

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-int p1, v5

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    .line 17
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->p:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;

    if-eqz v0, :cond_7

    .line 18
    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->C1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V

    .line 19
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->p:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;

    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    check-cast p1, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {p1, p0, v0}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->F1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->c:I

    div-int/2addr v3, v2

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->i:I

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->c:I

    div-int/2addr v3, v2

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->i:I

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    int-to-float v3, v4

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    div-int/2addr v4, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->l:I

    iget v4, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->h:I

    div-int/2addr v4, v2

    add-int/2addr v4, v3

    int-to-float v2, v4

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->j:Z

    .line 23
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->p:Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar$a;

    if-eqz v0, :cond_6

    .line 24
    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->f:I

    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {v0, p0, v2}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->E1(Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;I)V

    .line 25
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/VerticalSeekBar;->k:F

    :cond_7
    :goto_1
    return v1
.end method
