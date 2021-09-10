.class public Llr;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lfr;


# instance fields
.field private volatile b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private d:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 3
    iput-object v0, p0, Llr;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llr;->d:Landroid/widget/Toast;

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-boolean p1, p0, Llr;->c:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Llr;->c:Z

    const-wide/16 v0, 0xc8

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iput-boolean v2, p0, Llr;->c:Z

    .line 3
    iget-object p1, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 4
    iget-object p1, p0, Llr;->d:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 8
    :cond_2
    iput-boolean v2, p0, Llr;->c:Z

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Llr;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    .line 10
    iget-object v1, p0, Llr;->d:Landroid/widget/Toast;

    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v1, p0, Llr;->d:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_4

    const/16 p1, 0xbb8

    goto :goto_0

    :cond_4
    const/16 p1, 0x7d0

    :goto_0
    add-int/lit16 p1, p1, 0xc8

    int-to-long v1, p1

    .line 13
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 14
    :cond_5
    iput-boolean v2, p0, Llr;->c:Z

    :goto_1
    return-void
.end method
