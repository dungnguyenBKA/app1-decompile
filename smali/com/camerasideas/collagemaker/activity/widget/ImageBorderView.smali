.class public Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private d:Landroid/graphics/Paint;

.field private e:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->d:Landroid/graphics/Paint;

    .line 3
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->e:Landroid/text/TextPaint;

    .line 4
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->d:Landroid/graphics/Paint;

    const v0, 0x7f050045

    invoke-static {p1, v0}, Landroidx/core/content/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lc2;->b(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->e:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 8
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->e:Landroid/text/TextPaint;

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lc2;->c(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 9
    iget-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/ImageBorderView;->e:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "Roboto-Medium.ttf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageBorderView"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
