.class public Lcom/camerasideas/collagemaker/activity/widget/FontTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/graphics/PaintFlagsDrawFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 2
    iput-object p3, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->e:Ljava/lang/String;

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->f:Z

    .line 4
    iput-boolean p3, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->g:Z

    .line 5
    iput p3, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->h:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/camerasideas/collagemaker/R$styleable;->f:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x6

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->e:Ljava/lang/String;

    const/4 v0, 0x7

    .line 8
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->f:Z

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->g:Z

    .line 10
    invoke-virtual {p2, p3, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->h:I

    const/4 v0, 0x4

    .line 11
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->i:I

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->j:I

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    :cond_0
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-eq v2, v0, :cond_1

    const-string v2, "Roboto-Regular.ttf"

    .line 17
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "Roboto-Medium.ttf"

    .line 18
    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->e:Ljava/lang/String;

    .line 19
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 21
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->e:Ljava/lang/String;

    invoke-static {p1, p2}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 23
    :cond_2
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->f:Z

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 25
    :cond_3
    iget-boolean p1, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->g:Z

    if-eqz p1, :cond_4

    .line 26
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 27
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 28
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    invoke-direct {p1, p3, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->k:Landroid/graphics/PaintFlagsDrawFilter;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->k:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->h:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget v0, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/camerasideas/collagemaker/activity/widget/FontTextView;->j:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
