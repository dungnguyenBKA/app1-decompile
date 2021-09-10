.class public Lap;
.super Lep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lap$b;,
        Lap$a;
    }
.end annotation


# instance fields
.field private final j:Lap$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lap$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lep;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lap;->j:Lap$a;

    return-void
.end method


# virtual methods
.method public b()F
    .locals 6

    .line 1
    iget v0, p0, Lep;->g:F

    float-to-double v0, v0

    iget v2, p0, Lep;->f:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lep;->i:F

    float-to-double v2, v2

    iget v4, p0, Lep;->h:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method protected c(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lep;->a(Landroid/view/MotionEvent;)V

    .line 2
    iget-object p1, p0, Lap;->j:Lap$a;

    invoke-interface {p1, p0}, Lap$a;->b(Lap;)V

    .line 3
    invoke-virtual {p0}, Lap;->e()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lap;->j:Lap$a;

    invoke-interface {p1, p0}, Lap$a;->b(Lap;)V

    .line 5
    invoke-virtual {p0}, Lap;->e()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, p2}, Lep;->a(Landroid/view/MotionEvent;)V

    .line 7
    iget p1, p0, Lep;->d:F

    iget v0, p0, Lep;->e:F

    div-float/2addr p1, v0

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 8
    iget-object p1, p0, Lap;->j:Lap$a;

    invoke-interface {p1, p0}, Lap$a;->c(Lap;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lep;->b:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 10
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lep;->b:Landroid/view/MotionEvent;

    :cond_3
    :goto_0
    return-void
.end method

.method protected d(ILandroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lap;->e()V

    .line 2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lep;->b:Landroid/view/MotionEvent;

    .line 3
    invoke-virtual {p0, p2}, Lep;->a(Landroid/view/MotionEvent;)V

    .line 4
    iget-object p1, p0, Lap;->j:Lap$a;

    invoke-interface {p1, p0}, Lap$a;->a(Lap;)Z

    move-result p1

    iput-boolean p1, p0, Lep;->a:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lep;->b:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    iput-object v1, p0, Lep;->b:Landroid/view/MotionEvent;

    .line 4
    :cond_0
    iget-object v0, p0, Lep;->c:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    iput-object v1, p0, Lep;->c:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lep;->a:Z

    return-void
.end method
