.class Lcom/facebook/rebound/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rebound/a;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/rebound/a;


# direct methods
.method constructor <init>(Lcom/facebook/rebound/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/rebound/a$a;->b:Lcom/facebook/rebound/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/facebook/rebound/a$a;->b:Lcom/facebook/rebound/a;

    invoke-static {p1}, Lcom/facebook/rebound/a;->c(Lcom/facebook/rebound/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/rebound/a$a;->b:Lcom/facebook/rebound/a;

    iget-object p1, p1, Lcom/facebook/rebound/f;->a:Lcom/facebook/rebound/g;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->b:Lcom/facebook/rebound/a;

    iget-object v1, v0, Lcom/facebook/rebound/f;->a:Lcom/facebook/rebound/g;

    invoke-static {v0}, Lcom/facebook/rebound/a;->d(Lcom/facebook/rebound/a;)J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/g;->d(D)V

    .line 4
    iget-object v0, p0, Lcom/facebook/rebound/a$a;->b:Lcom/facebook/rebound/a;

    invoke-static {v0, p1, p2}, Lcom/facebook/rebound/a;->e(Lcom/facebook/rebound/a;J)J

    .line 5
    iget-object p1, p0, Lcom/facebook/rebound/a$a;->b:Lcom/facebook/rebound/a;

    invoke-static {p1}, Lcom/facebook/rebound/a;->g(Lcom/facebook/rebound/a;)Landroid/view/Choreographer;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/rebound/a$a;->b:Lcom/facebook/rebound/a;

    invoke-static {p2}, Lcom/facebook/rebound/a;->f(Lcom/facebook/rebound/a;)Landroid/view/Choreographer$FrameCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
