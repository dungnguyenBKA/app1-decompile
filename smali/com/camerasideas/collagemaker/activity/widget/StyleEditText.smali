.class public Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

.field private g:Landroid/graphics/RectF;

.field private h:I

.field private i:I

.field private j:Landroid/graphics/BlurMaskFilter;

.field private k:Landroid/graphics/Shader;

.field private l:Landroid/graphics/Shader;

.field private m:Landroid/graphics/Shader;

.field private n:Landroid/graphics/Canvas;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/graphics/Canvas;

.field private q:Landroid/graphics/Bitmap;

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/PaintFlagsDrawFilter;

.field private v:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

.field private w:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->g:Landroid/graphics/RectF;

    .line 4
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-direct {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;-><init>()V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    .line 6
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->u:Landroid/graphics/PaintFlagsDrawFilter;

    .line 7
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->h:I

    .line 8
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lc2;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->s:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 14
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    const-string p2, "Roboto-Medium.ttf"

    invoke-virtual {p1, p2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->M(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-static {p1, p2}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->j:Landroid/graphics/BlurMaskFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->j:Landroid/graphics/BlurMaskFilter;

    :goto_0
    return-void
.end method

.method private c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private f(Landroid/text/TextPaint;Ljava/lang/String;)F
    .locals 5

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private i()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public A(Landroid/text/Layout$Alignment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->E(Landroid/text/Layout$Alignment;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public B(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->X(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public C(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->I(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Y(I)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->k:Landroid/graphics/Shader;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public E(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Z(I)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i()I

    move-result v1

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-static {v3, p1}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->k:Landroid/graphics/Shader;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x()F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    sub-float v1, p1, v0

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    add-float v1, p1, v0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->B(F)V

    .line 7
    new-instance v0, Lcom/camerasideas/collagemaker/activity/widget/c;

    invoke-direct {v0, p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/c;-><init>(Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;F)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public F(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->N(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public G(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->v:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    return-void
.end method

.method public H(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b0(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public I(Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->w:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;

    return-void
.end method

.method public a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-static {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a(Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;)V

    .line 2
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x41e55555

    .line 6
    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->setTextSize(F)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->setTextSize(F)V

    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->k:Landroid/graphics/Shader;

    .line 9
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i()I

    move-result v2

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v3

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->z()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->k:Landroid/graphics/Shader;

    .line 13
    :cond_3
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l:Landroid/graphics/Shader;

    .line 14
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i()I

    move-result v2

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v3

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->t()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 17
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l:Landroid/graphics/Shader;

    .line 18
    :cond_4
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->m:Landroid/graphics/Shader;

    .line 19
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i()I

    move-result v2

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v3

    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->j()I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->m:Landroid/graphics/Shader;

    .line 23
    :cond_5
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->t:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->n(I)V

    .line 26
    :cond_6
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->J()V

    .line 27
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public b()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    return-object v0
.end method

.method public e()Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->v:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/j;

    return-object v0
.end method

.method public k(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->X(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public l(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->F(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->G(I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->t:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public n(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->H(I)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "StyleEditText"

    const-string v0, "onSelectedGradientChanged failed: drawable == null"

    .line 3
    invoke-static {p1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lrn;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 6
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqn;

    if-eqz v4, :cond_3

    .line 7
    invoke-virtual {v4}, Lpn;->a()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 8
    invoke-virtual {v4}, Lqn;->c()Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lhp;->a(Landroid/graphics/drawable/GradientDrawable$Orientation;F)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object p1

    invoke-virtual {v4}, Lqn;->b()[I

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 9
    array-length v1, v0

    if-gtz v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    move-object v0, p1

    .line 11
    :goto_2
    nop

    instance-of p1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_4

    .line 12
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 13
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->h:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_4
    :goto_3
    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->t:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {p1, v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->J(I)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->m:Landroid/graphics/Shader;

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->u:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/16 v3, 0x15

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    .line 7
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v2

    int-to-float v2, v2

    .line 8
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v6

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/2addr v6, v4

    int-to-float v6, v6

    sub-float/2addr v6, v2

    .line 9
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v7

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v8

    add-int/2addr v7, v8

    div-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v7, v2

    .line 10
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_0

    neg-float v6, v2

    .line 11
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v2

    .line 12
    :cond_0
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v8, v9, :cond_1

    const/16 v8, 0x13

    .line 13
    invoke-virtual {p0, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 14
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->g:Landroid/graphics/RectF;

    neg-float v9, v2

    .line 15
    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 16
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v11

    iget v12, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    mul-float v2, v2, v10

    add-float/2addr v2, v11

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 17
    invoke-virtual {v8, v9, v6, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0

    .line 18
    :cond_1
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_2

    const/16 v8, 0x11

    .line 19
    invoke-virtual {p0, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 20
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->g:Landroid/graphics/RectF;

    .line 21
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v11

    sub-float/2addr v9, v11

    div-float/2addr v9, v10

    iget v11, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    int-to-float v11, v11

    sub-float/2addr v9, v11

    sub-float/2addr v9, v2

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 22
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v0, v12}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v12

    add-float/2addr v11, v12

    div-float/2addr v11, v10

    iget v10, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    int-to-float v10, v10

    add-float/2addr v11, v10

    add-float/2addr v11, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 23
    invoke-virtual {v8, v9, v6, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 24
    :cond_2
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->e()Landroid/text/Layout$Alignment;

    move-result-object v8

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v8, v9, :cond_3

    .line 25
    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 26
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->g:Landroid/graphics/RectF;

    .line 27
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v0, v11}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f(Landroid/text/TextPaint;Ljava/lang/String;)F

    move-result v11

    sub-float/2addr v9, v11

    iget v11, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    mul-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v9, v11

    mul-float v10, v10, v2

    sub-float/2addr v9, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 28
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 29
    invoke-virtual {v8, v9, v6, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 30
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->D()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    .line 31
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setPaintFlags(I)V

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaintFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    or-int/2addr v2, v6

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setPaintFlags(I)V

    .line 33
    :goto_1
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->C()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->B()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 34
    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 35
    :cond_5
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->C()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 36
    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 37
    :cond_6
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->B()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 38
    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_2

    .line 39
    :cond_7
    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    :goto_2
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->c()Z

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v7, 0x437f0000    # 255.0f

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 41
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    .line 42
    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->g:Landroid/graphics/RectF;

    iget v9, v8, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    iget v10, v8, Landroid/graphics/RectF;->top:F

    float-to-int v10, v10

    iget v11, v8, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    float-to-int v8, v8

    invoke-virtual {v2, v9, v10, v11, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 43
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->t:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 44
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 45
    :cond_8
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->g()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->f()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v4

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_9

    .line 49
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->g:Landroid/graphics/RectF;

    iget v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->h:I

    int-to-float v9, v8

    int-to-float v8, v8

    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v9, v8, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 50
    :cond_9
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->g:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 51
    :cond_a
    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_b

    .line 52
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->m()F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setLetterSpacing(F)V

    .line 53
    :cond_b
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->o()F

    move-result v2

    invoke-virtual {p0, v5, v2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    .line 54
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 55
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 56
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v9}, Lcm;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    .line 57
    invoke-static {v2}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 58
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->p:Landroid/graphics/Canvas;

    .line 59
    :cond_c
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v8

    if-ge v2, v8, :cond_d

    .line 60
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v8, v9}, Lcm;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    .line 61
    invoke-static {v2}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 62
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    invoke-direct {v2, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->p:Landroid/graphics/Canvas;

    .line 63
    :cond_d
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 64
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 65
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->s()I

    move-result v2

    const/16 v8, 0x64

    if-gt v2, v8, :cond_e

    .line 66
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->j:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_4

    .line 67
    :cond_e
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 68
    :goto_4
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 70
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->s:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q()F

    move-result v8

    mul-float v8, v8, v7

    float-to-int v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l:Landroid/graphics/Shader;

    if-nez v2, :cond_f

    .line 72
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->r()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 73
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->q()F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 74
    :cond_f
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    move-result v2

    int-to-float v2, v2

    const/high16 v8, 0x42480000    # 50.0f

    div-float/2addr v2, v8

    iget-object v9, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v9

    int-to-float v9, v9

    mul-float v2, v2, v9

    iget-object v9, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v9}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    iget-object v10, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v10}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v10

    int-to-float v10, v10

    mul-float v9, v9, v10

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    invoke-virtual {p0, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 76
    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->p:Landroid/graphics/Canvas;

    invoke-super {p0, v2}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 78
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 79
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->q:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->s:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->u()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget-object v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v2}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->v()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v8}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v8

    int-to-float v8, v8

    mul-float v2, v2, v8

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    :cond_10
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->b()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 82
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 83
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9}, Lcm;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    .line 84
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 85
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->n:Landroid/graphics/Canvas;

    .line 86
    :cond_11
    invoke-virtual {p0}, Landroid/widget/EditText;->getHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v8

    if-ge v1, v8, :cond_12

    .line 87
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9}, Lcm;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    .line 88
    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 89
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v8, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->n:Landroid/graphics/Canvas;

    .line 90
    :cond_12
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 91
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 92
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->k()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v1, v1, v4

    .line 94
    iget-object v4, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-static {v4, v1}, Lc2;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 95
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 96
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->m:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 97
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->m:Landroid/graphics/Shader;

    if-nez v1, :cond_13

    .line 98
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->i()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 99
    :cond_13
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 100
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->n:Landroid/graphics/Canvas;

    invoke-super {p0, v1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->o:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    :cond_14
    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    .line 103
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->k:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->y()I

    move-result v0

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->x()F

    move-result v1

    mul-float v1, v1, v7

    float-to-int v1, v1

    const v2, 0xffffff

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 106
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->w:Lcom/camerasideas/collagemaker/activity/widget/StyleEditText$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/activity/fragment/imagefragment/ImageTextFragment;->G1(Landroid/view/MotionEvent;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public p(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->K(I)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i()I

    move-result v1

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-static {v3, p1}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->m:Landroid/graphics/Shader;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->L(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StyleEditText"

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->M(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lmm;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "typeface = "

    .line 5
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    const-string p1, "typeface is null "

    .line 7
    invoke-static {v1, p1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->O(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->a0(I)V

    .line 2
    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v0

    add-int/2addr v0, p1

    iget p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    iget-object v1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result v1

    add-int/2addr v1, p1

    iget v2, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i:I

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 3
    iget-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->A()I

    move-result p1

    int-to-float p1, p1

    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    return-void
.end method

.method public t(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->P(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public u(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->Q(F)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->S(I)V

    .line 2
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->J()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->R(I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l:Landroid/graphics/Shader;

    .line 5
    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->J()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public x(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->T(I)V

    .line 2
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->i()I

    move-result v1

    invoke-direct {p0}, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->c()I

    move-result v2

    iget-object v3, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->e:Landroid/content/Context;

    invoke-static {v3, p1}, Landroidx/core/app/b;->T(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcm;->q(Landroid/content/Context;IILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcm;->l(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->l:Landroid/graphics/Shader;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->U(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public z(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/camerasideas/collagemaker/activity/widget/StyleEditText;->f:Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;

    invoke-virtual {v0, p1}, Lcom/camerasideas/collagemaker/photoproc/graphicsitems/k;->V(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
