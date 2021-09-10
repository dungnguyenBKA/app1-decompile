.class public final Lp2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp2$b;,
        Lp2$a;
    }
.end annotation


# instance fields
.field private final a:Lp2$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lp2$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lp2$b;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lp2;->a:Lp2$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp2;->a:Lp2$a;

    check-cast v0, Lp2$b;

    invoke-virtual {v0, p1}, Lp2$b;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
