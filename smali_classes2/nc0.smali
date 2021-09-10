.class public Lnc0;
.super Landroid/animation/ValueAnimator;
.source "SourceFile"


# instance fields
.field private b:[Ltc0;

.field private c:Landroid/graphics/Paint;

.field private d:Lqc0;


# direct methods
.method public constructor <init>(Lqc0;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    iput-object p1, p0, Lnc0;->d:Lqc0;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const-wide/16 v0, 0x400

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iput-object p3, p0, Lnc0;->c:Landroid/graphics/Paint;

    .line 6
    invoke-interface {p1, p2}, Lqc0;->a(Landroid/graphics/Rect;)[Ltc0;

    move-result-object p1

    iput-object p1, p0, Lnc0;->b:[Ltc0;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnc0;->d:Lqc0;

    invoke-interface {v0}, Lqc0;->destroy()V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lnc0;->b:[Ltc0;

    .line 2
    iput-object v0, p0, Lnc0;->d:Lqc0;

    return-void
.end method

.method public c(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lnc0;->b:[Ltc0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    iget-object v4, p0, Lnc0;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Ltc0;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
