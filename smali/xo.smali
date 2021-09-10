.class public Lxo;
.super Lwo;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field protected p:Landroid/view/MotionEvent;

.field protected final q:Lcp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lxo;->p:Landroid/view/MotionEvent;

    .line 3
    new-instance v0, Lxo$a;

    invoke-direct {v0, p0}, Lxo$a;-><init>(Lxo;)V

    .line 4
    new-instance v1, Lcp;

    invoke-direct {v1, p1, v0}, Lcp;-><init>(Landroid/content/Context;Lcp$a;)V

    iput-object v1, p0, Lxo;->q:Lcp;

    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lxo$b;

    invoke-direct {v1, p0, p1}, Lxo$b;-><init>(Lxo;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lxo;->p:Landroid/view/MotionEvent;

    .line 2
    iget-object v0, p0, Lxo;->q:Lcp;

    invoke-virtual {v0, p1}, Lcp;->f(Landroid/view/MotionEvent;)Z

    .line 3
    invoke-super {p0, p1}, Lwo;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
