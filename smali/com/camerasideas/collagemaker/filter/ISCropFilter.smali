.class public Lcom/camerasideas/collagemaker/filter/ISCropFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/camerasideas/collagemaker/filter/ISFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/camerasideas/collagemaker/filter/ISCropFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Landroid/graphics/Matrix;

.field private h:Z

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter$a;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/filter/ISCropFilter$a;-><init>()V

    sput-object v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    .line 3
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    .line 5
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    .line 6
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    .line 7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->h:Z

    .line 9
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->i:Z

    .line 10
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->j:F

    .line 11
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k:F

    .line 12
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l:F

    .line 13
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m:F

    .line 14
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n:F

    return-void
.end method

.method public constructor <init>(FFFFF)V
    .locals 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    .line 17
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    .line 19
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    .line 20
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    .line 21
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    .line 22
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->h:Z

    .line 23
    iput-boolean v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->i:Z

    .line 24
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->j:F

    .line 25
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k:F

    .line 26
    iput v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l:F

    .line 27
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m:F

    .line 28
    iput v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n:F

    .line 29
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k:F

    .line 30
    iput p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    iput p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l:F

    .line 31
    iput p3, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    iput p3, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m:F

    .line 32
    iput p4, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    iput p4, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n:F

    .line 33
    iput p5, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    return-void
.end method

.method static synthetic a(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    return p1
.end method

.method static synthetic b(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m:F

    return p1
.end method

.method static synthetic c(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    return p1
.end method

.method static synthetic d(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n:F

    return p1
.end method

.method static synthetic e(Lcom/camerasideas/collagemaker/filter/ISCropFilter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->o:I

    return p1
.end method

.method static synthetic f(Lcom/camerasideas/collagemaker/filter/ISCropFilter;)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic g(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    return p1
.end method

.method static synthetic h(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    return p1
.end method

.method static synthetic i(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    return p1
.end method

.method static synthetic k(Lcom/camerasideas/collagemaker/filter/ISCropFilter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->h:Z

    return p1
.end method

.method static synthetic l(Lcom/camerasideas/collagemaker/filter/ISCropFilter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->i:Z

    return p1
.end method

.method static synthetic m(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->j:F

    return p1
.end method

.method static synthetic n(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k:F

    return p1
.end method

.method static synthetic o(Lcom/camerasideas/collagemaker/filter/ISCropFilter;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l:F

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;

    invoke-direct {v0}, Lcom/camerasideas/collagemaker/filter/ISCropFilter;-><init>()V

    .line 2
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    .line 3
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    .line 4
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    .line 5
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    .line 6
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    .line 7
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->h:Z

    iput-boolean v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->h:Z

    .line 8
    iget-boolean v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->i:Z

    iput-boolean v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->i:Z

    .line 9
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->j:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->j:F

    .line 10
    iget-object v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 11
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k:F

    .line 12
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l:F

    .line 13
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m:F

    .line 14
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n:F

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n:F

    .line 15
    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->o:I

    iput v1, v0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->o:I

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-object p1

    .line 2
    :cond_2
    invoke-static {p1}, Lwq;->o(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p1

    .line 3
    :cond_3
    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    goto/16 :goto_4

    .line 4
    :cond_4
    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->o:I

    if-lez v0, :cond_5

    int-to-float v0, v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 6
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 8
    iget-object v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lwq;->f(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cropX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cropY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",cropWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",cropHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ISCropFilter"

    invoke-static {v7, v6}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v4, :cond_7

    if-gtz v5, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    :try_start_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Lwq;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doFilter error retry :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 18
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Lwq;->d(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :goto_2
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 21
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 23
    new-instance v2, Landroid/graphics/Rect;

    add-int v9, v0, v4

    add-int v10, v3, v5

    invoke-direct {v2, v0, v3, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 25
    invoke-virtual {v7, p1, v2, v0, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v6

    :catch_1
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFilter error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lem;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    return-object p1

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_8
    :goto_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "(ISCropFilter::doFilterException)mCropWidth or mCropHeight is smaller then zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lrq;->m(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    return v0
.end method

.method public r()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public s(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->o:I

    return-void
.end method

.method public t(FFFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    .line 2
    iput p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    .line 3
    iput p3, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    .line 4
    iput p4, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    .line 5
    iput p5, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ISCropFilter("

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 5
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->f:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->i:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->j:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 9
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->k:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->l:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 11
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->m:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 12
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->n:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 13
    iget p2, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 14
    iget-object v0, p0, Lcom/camerasideas/collagemaker/filter/ISCropFilter;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
