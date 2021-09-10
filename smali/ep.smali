.class public abstract Lep;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Z

.field protected b:Landroid/view/MotionEvent;

.field protected c:Landroid/view/MotionEvent;

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lep;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lep;->c:Landroid/view/MotionEvent;

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lep;->c:Landroid/view/MotionEvent;

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    .line 7
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_4

    if-ne v1, v5, :cond_3

    goto :goto_3

    .line 8
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    .line 9
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    iput v1, p0, Lep;->e:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    iput v0, p0, Lep;->d:F

    .line 13
    :cond_5
    iget-object v0, p0, Lep;->b:Landroid/view/MotionEvent;

    .line 14
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 15
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 16
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 17
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float/2addr v5, v1

    sub-float/2addr v0, v4

    .line 19
    iput v5, p0, Lep;->f:F

    .line 20
    iput v0, p0, Lep;->g:F

    .line 21
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 22
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-le v3, v2, :cond_7

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 25
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v3, v0

    sub-float/2addr p1, v1

    .line 26
    iput v3, p0, Lep;->h:F

    .line 27
    iput p1, p0, Lep;->i:F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method
