.class Landroidx/core/widget/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroidx/core/widget/a;


# direct methods
.method constructor <init>(Landroidx/core/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    iget-boolean v1, v0, Landroidx/core/widget/a;->p:Z

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, v0, Landroidx/core/widget/a;->n:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    iput-boolean v2, v0, Landroidx/core/widget/a;->n:Z

    .line 4
    iget-object v0, v0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    invoke-virtual {v0}, Landroidx/core/widget/a$a;->l()V

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    iget-object v0, v0, Landroidx/core/widget/a;->b:Landroidx/core/widget/a$a;

    .line 6
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->g()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    invoke-virtual {v1}, Landroidx/core/widget/a;->g()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    iget-boolean v3, v1, Landroidx/core/widget/a;->o:Z

    if-eqz v3, :cond_3

    .line 8
    iput-boolean v2, v1, Landroidx/core/widget/a;->o:Z

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, v6

    .line 11
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 12
    iget-object v1, v1, Landroidx/core/widget/a;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 14
    :cond_3
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->a()V

    .line 15
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->b()I

    move-result v1

    .line 16
    invoke-virtual {v0}, Landroidx/core/widget/a$a;->c()I

    move-result v0

    .line 17
    iget-object v2, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    invoke-virtual {v2, v1, v0}, Landroidx/core/widget/a;->e(II)V

    .line 18
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    iget-object v0, v0, Landroidx/core/widget/a;->d:Landroid/view/View;

    .line 19
    sget v1, Lc3;->g:I

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 21
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/core/widget/a$b;->b:Landroidx/core/widget/a;

    iput-boolean v2, v0, Landroidx/core/widget/a;->p:Z

    return-void
.end method
