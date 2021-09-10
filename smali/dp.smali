.class public Ldp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldp$b;,
        Ldp$a;
    }
.end annotation


# instance fields
.field private a:Ldp$a;

.field private b:Landroid/graphics/PointF;

.field private c:Ldp$b;


# direct methods
.method public constructor <init>(Ldp$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldp;->b:Landroid/graphics/PointF;

    .line 3
    sget-object v0, Ldp$b;->c:Ldp$b;

    iput-object v0, p0, Ldp;->c:Ldp$b;

    .line 4
    iput-object p1, p0, Ldp;->a:Ldp$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    sget-object v0, Ldp$b;->c:Ldp$b;

    sget-object v1, Ldp$b;->b:Ldp$b;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 3
    iget-object v2, p0, Ldp;->b:Landroid/graphics/PointF;

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v2, v3, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    iget-object p1, p0, Ldp;->a:Ldp$a;

    invoke-interface {p1}, Ldp$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iput-object v1, p0, Ldp;->c:Ldp$b;

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Ldp;->c:Ldp$b;

    :goto_0
    return v4

    .line 7
    :cond_1
    iget-object v6, p0, Ldp;->c:Ldp$b;

    if-eq v6, v1, :cond_2

    return v5

    :cond_2
    const/4 v1, 0x2

    if-eq v2, v1, :cond_3

    .line 8
    iput-object v0, p0, Ldp;->c:Ldp$b;

    .line 9
    iget-object p1, p0, Ldp;->a:Ldp$a;

    invoke-interface {p1}, Ldp$a;->c()V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    return v5

    .line 10
    :cond_4
    iget-object v0, p0, Ldp;->a:Ldp$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Ldp;->b:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Ldp;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-interface {v0, v1, v2}, Ldp$a;->b(FF)V

    .line 11
    iget-object v0, p0, Ldp;->b:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_1
    return v4
.end method
